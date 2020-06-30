<?php

namespace YOOtheme;

defined('_JEXEC') or die;

$view = app(View::class);

$title_element = $params->get('item_heading', 'h4');

if ($params->get('img_intro_full') !== 'none' && !empty($item->imageSrc)) {
    if ($view->isImage($item->imageSrc) == 'svg') {
        $img = $view->image($item->imageSrc, ['uk-img' => true, 'alt' => $item->imageAlt]);
    } else {
        $img = $view->image([$item->imageSrc, 'thumbnail' => ['auto', 'auto'], 'srcset' => true], ['uk-img' => true, 'alt' => $item->imageAlt]);
    }
}

?>

<?php if ($params->get('item_title')) : ?>
<<?= $title_element ?>>
    <?php if ($params->get('link_titles') && $item->link != '') : ?>
        <a href="<?= $item->link ?>"><?= $item->title ?></a>
    <?php else : ?>
        <?= $item->title ?>
    <?php endif ?>
</<?= $title_element ?>>
<?php endif ?>

<?php if ($params->get('img_intro_full') !== 'none' && !empty($item->imageSrc)) : ?>
<div property="image" typeof="ImageObject">
    <meta property="url" content="<?= \JUri::base() . $item->imageSrc ?>">
    <?= $img ?>
</div>
<?php endif ?>

<?php if (!$params->get('intro_only')) echo $item->afterDisplayTitle ?>

<?= $item->beforeDisplayContent ?>
<?= $item->introtext ?>
<?= $item->afterDisplayContent ?>

<?php if (isset($item->link) && $item->readmore && $params->get('readmore')) : ?>
<p><a class="uk-button uk-button-text" href="<?= $item->link ?>"><?= $item->linkText ?></a></p>
<?php endif ?>
