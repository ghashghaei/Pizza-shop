<?php

namespace YOOtheme\Builder\Joomla;

use FieldsHelper;
use Joomla\CMS\Document\Document;
use Joomla\CMS\Factory;
use Joomla\CMS\Helper\TagsHelper;
use Joomla\CMS\MVC\Model\BaseDatabaseModel;
use Joomla\CMS\Session\Session;
use Joomla\CMS\User\User;
use Joomla\Input\Input;
use YOOtheme\Application;
use YOOtheme\Builder;
use YOOtheme\Config;
use YOOtheme\Http\Request;
use YOOtheme\Http\Response;
use YOOtheme\Joomla\Platform;
use YOOtheme\Str;

class ContentListener
{
    const PATTERN = '/^<!-- (\{.*\}) -->/';

    /**
     * @var User
     */
    protected $user;

    /**
     * @var bool
     */
    public static $isArticle;

    public function afterRoute(Config $config, User $user, Input $input, Session $session)
    {
        static::$isArticle = $input->getCmd('option') === 'com_content' && $input->getCmd('view') === 'article' && is_null($input->getCmd('task'));

        if (static::$isArticle and $config('req.customizer.admin') and $user_id = $config('req.customizer.user_id')) {
            $this->user = $user;
            $session->set('user', Factory::getUser($user_id));
        }
    }

    public function prepareContent(Application $app, Config $config, Session $session, Builder $builder, $context, $article, $params)
    {
        if (!static::$isArticle || $context !== 'com_content.article') {
            return;
        }

        // Make sure this is executed only once
        static::$isArticle = false;

        if ($this->user) {
            $session->set('user', $this->user);
        }

        $content = preg_match(self::PATTERN, $article->fulltext, $matches) ? $matches[1] : null;

        if ($article->params->get('access-edit') && $config('app.isCustomizer')) {

            if ($page = $config('req.customizer.page')) {
                if ($article->id === $page['id']) {
                    $content = json_encode($page['content']);
                } else {
                    unset($page);
                }
            }

            $modified = !empty($page);

            $config->add('customizer', [

                'page' => [
                    'id' => $article->id,
                    'title' => $article->title,
                    'content' => $content ? $builder->load($content) : $content,
                    'modified' => $modified,
                    'modifiedDate' => $modified ? $page['modifiedDate'] : $this->getModifiedDate($article),
                    'contentHash' => $modified ? $page['contentHash'] : $this->getContentHash($article),
                    'collision' => $modified ? $this->getCollision($page['contentHash'], $article) : false,
                ],

            ]);

        }

        if ($content !== null) {

            // Suppress markup for page heading in html/com_content/article/default.php
            $params->set('show_page_heading', false);

            // Suppress links being shown
            $params->set('urls_position', -1);

            // Render builder output
            $article->text = $builder->render($content, [
                'prefix' => 'page',
                'article' => $article,
            ]);

            // Make builder assets cachable (e.g. maps.min.js)
            $app->call([Platform::class, 'registerAssets']);

            // Used to determine active builder layout in html/helpers.php
            $config->set('app.isBuilder', true);
        }
    }

    public function afterDispatch(Config $config, Document $document)
    {
        // Check for builder comment, when cache is enabled
        if (static::$isArticle && !$config('app.isBuilder')) {
            $config->set('app.isBuilder', Str::contains($document->getBuffer('component'), '<!-- Builder #page -->'));
        }
    }

    public function savePage(Request $request, Response $response, Builder $builder)
    {
        $request->abortIf(!$page = $request('page'), 400)
                ->abortIf(!$page = base64_decode($page), 400)
                ->abortIf(!$page = json_decode($page), 400);

        $isEmpty = empty((array) $page->content);

        BaseDatabaseModel::addIncludePath(JPATH_ADMINISTRATOR . '/components/com_content/models', 'ContentModel');
        $model = BaseDatabaseModel::getInstance('article', 'ContentModel', ['ignore_request' => true]);

        $article = $model->getItem($page->id);

        $data = [
            'id' => $page->id,
            'catid' => $article->catid, // notice if missing
            'fulltext' => !$isEmpty ? '<!-- ' . ($text = json_encode($page->content)) . ' -->' : '',
            'introtext' => !$isEmpty ? $builder->withParams(['context' => 'content'])->render($text) : '',
        ];

        // JPATH_COMPONENT constant isn't set yet
        if (!defined('JPATH_COMPONENT')) {
            define('JPATH_COMPONENT', JPATH_BASE . '/components/com_ajax');
        }

        $request->abortIf(!$this->allowEdit($article), 403, 'Insufficient User Rights.');

        if (!$request('overwrite') and $collision = $this->getCollision($page->contentHash, $article)) {
            return $response->withJSON(compact('collision'));
        }

        if ($tags = (new TagsHelper())->getTagIds($page->id, 'com_content.article')) {
            $data['tags'] = explode(',', $tags);
        }

        if (class_exists('FieldsHelper')) {
            foreach (FieldsHelper::getFields('com_content.article', $article) as $field) {
                $data['com_fields'][$field->name] = $field->value;
            }
        }

        $model->save($data);

        // reload article after save
        $article = $model->getItem($page->id);

        return $response->withJSON([
            'id' => $page->id,
            'modifiedDate' => $this->getModifiedDate($article),
            'contentHash' => $this->getContentHash($article),
        ]);
    }

    protected function getCollision($hash, $article)
    {
        if ($hash !== ($contentHash = $this->getContentHash($article))) {

            $user = Factory::getUser($article->modified_by);
            $modifiedBy = $user ? $user->username : '';
            $modifiedDate = $this->getModifiedDate($article);

            return compact('modifiedBy', 'modifiedDate', 'contentHash');
        }

        return false;
    }

    public function getContentHash($article)
    {
        return md5($article->fulltext . $article->introtext);
    }

    public function getModifiedDate($article)
    {
        // checking if modified date is present to avoid regression (not sure if necessary)
        return @$article->modified ? strtotime($article->modified) : time();
    }

    protected function allowEdit($article)
    {
        $user = Factory::getUser();
        $asset = "com_content.article.{$article->id}";

        return $user->authorise('core.edit', $asset)
            || $user->authorise('core.edit.own', $asset)
            && $user->get('id') == $article->created_by;
    }
}
