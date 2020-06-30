<?php

// Title
$title = $this->el($element['title_element'], [

    'class' => [
        'el-title',
        'uk-{title_style}',
        'uk-heading-{title_decoration}',
        'uk-font-{title_font_family}',
        'uk-text-{title_color} {@!title_color: background}',
        'uk-transition-{title_transition} {@overlay_hover}',
        'uk-margin[-{title_margin}]-top {@!title_margin: remove}',
        'uk-margin-remove-top {@title_margin: remove}',
        'uk-margin-remove-bottom',
    ],

]);

// Meta
$meta = $this->el('div', [

    'class' => [
        'el-meta',
        'uk-transition-{meta_transition} {@overlay_hover}',
        'uk-[text-{@meta_style: meta}]{meta_style}',
        'uk-text-{meta_color}',
        'uk-margin[-{meta_margin}]-top {@!meta_margin: remove}',
        'uk-margin-remove-bottom {@!meta_style: |meta} [uk-margin-{meta_margin: remove}-top]',
    ],

]);

// Content
$content = $this->el('div', [

    'class' => [
        'el-content uk-panel',
        'uk-text-{content_style}',
        'uk-transition-{content_transition} {@overlay_hover}',
        'uk-margin[-{content_margin}]-top {@!content_margin: remove}',
    ],

]);

// Link
$link_container = $this->el('div', [

    'class' => [
        'uk-margin[-{link_margin}]-top {@!link_margin: remove}',
    ],

]);

?>

<?php if ($props['meta'] && $element['meta_align'] == 'above-title') : ?>
<?= $meta($element, $props['meta']) ?>
<?php endif ?>

<?php if ($props['title']) : ?>
<?= $title($element) ?>
    <?php if ($element['title_color'] == 'background') : ?>
    <span class="uk-text-background"><?= $props['title'] ?></span>
    <?php elseif ($element['title_decoration'] == 'line') : ?>
    <span><?= $props['title'] ?></span>
    <?php else : ?>
    <?= $props['title'] ?>
    <?php endif ?>
<?= $title->end() ?>
<?php endif ?>

<?php if ($props['meta'] && $element['meta_align'] == 'below-title') : ?>
<?= $meta($element, $props['meta']) ?>
<?php endif ?>

<?php if ($props['content']) : ?>
<?= $content($element, $props['content']) ?>
<?php endif ?>

<?php if ($props['meta'] && $element['meta_align'] == 'below-content') : ?>
<?= $meta($element, $props['meta']) ?>
<?php endif ?>

<?php if ($props['link'] && $element['link_text']) : ?>
<?= $link_container($element, $link($element, $element['link_text'])) ?>
<?php endif ?>