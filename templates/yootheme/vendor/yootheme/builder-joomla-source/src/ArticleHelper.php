<?php

namespace YOOtheme\Builder\Joomla\Source;

use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Factory;
use Joomla\CMS\Language\Multilanguage;
use Joomla\CMS\Object\CMSObject;
use YOOtheme\Str;

class ArticleHelper
{
    /**
     * Gets the articles.
     *
     * @param int[] $ids
     *
     * @return CMSObject[]
     */
    public static function get($ids)
    {
        if (!class_exists('ContentModelArticles')) {
            require_once JPATH_ROOT . '/components/com_content/models/articles.php';
        }

        $model = new \ContentModelArticles(['ignore_request' => true]);
        $model->setState('params', ComponentHelper::getParams('com_content'));
        $model->setState('filter.article_id', (array) $ids);
        $model->setState('filter.access', true);
        $model->setState('filter.published', 1);
        $model->setState('filter.language', Multilanguage::isEnabled());

        $articles = $model->getItems();

        array_walk($articles, function ($article) {
            $article->catslug = $article->category_alias ? ($article->catid . ':' . $article->category_alias) : $article->catid;
        });

        return $articles;
    }

    /**
     * Query articles.
     *
     * @param array $args
     *
     * @return array
     */
    public static function query(array $args = [])
    {
        $model = new ContentModelArticles(['ignore_request' => true]);
        $model->setState('params', ComponentHelper::getParams('com_content'));
        $model->setState('filter.access', true);
        $model->setState('filter.published', 1);
        $model->setState('filter.language', Multilanguage::isEnabled());
        $model->setState('filter.subcategories', false);

        if (!empty($args['order'])) {

            if ($args['order'] === 'rand') {
                $args['order'] = Factory::getDbo()->getQuery(true)->Rand();
            } else {
                $args['order'] = "a.{$args['order']}";
            }
        }

        if (!empty($args['featured'])) {
            $args['featured'] = 'only';
        }

        $props = [
            'offset' => 'list.start',
            'limit' => 'list.limit',
            'order' => 'list.ordering',
            'order_direction' => 'list.direction',
            'featured' => 'filter.featured',
            'subcategories' => 'filter.subcategories',
        ];

        foreach (array_intersect_key($props, $args) as $key => $prop) {
            $model->setState($prop, $args[$key]);
        }

        if (!empty($args['catid'])) {
            $model->setState('filter.category_id', (array) $args['catid']);
        }

        if (!empty($args['tags'])) {
            $model->setState('filter.tag', (array) $args['tags']);
        }

        $articles = $model->getItems();

        array_walk($articles, function ($article) {
            $article->catslug = $article->category_alias ? ($article->catid . ':' . $article->category_alias) : $article->catid;
        });

        return $articles;
    }
}

if (!class_exists('ContentModelArticles')) {
    require_once JPATH_ROOT . '/components/com_content/models/articles.php';
}

class ContentModelArticles extends \ContentModelArticles
{
    protected function getListQuery()
    {
        $id = false;
        $ordering = $this->getState('list.ordering');

        if (Str::startsWith($ordering, 'a.field:')) {
            $id = (int) substr($ordering, 8);
            $this->setState('list.ordering', 'fields.value');
        }

        $query = parent::getListQuery();

        if ($id) {
            $query->leftJoin("#__fields_values AS fields ON a.id = fields.item_id AND fields.field_id = {$id}");
        }

        return $query;
    }
}
