<?php // $file = C:/xampp/htdocs/shop/templates/yootheme/vendor/yootheme/builder/elements/switcher_item/element.json

return [
  '@import' => $filter->apply('path', './element.php', $file), 
  'name' => 'switcher_item', 
  'title' => 'Item', 
  'width' => 500, 
  'placeholder' => [
    'props' => [
      'title' => 'Title', 
      'meta' => '', 
      'content' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 
      'image' => '', 
      'label' => '', 
      'thumbnail' => ''
    ]
  ], 
  'templates' => [
    'render' => $filter->apply('path', './templates/template.php', $file), 
    'content' => $filter->apply('path', './templates/content.php', $file)
  ], 
  'fields' => [
    'title' => [
      'label' => 'Title', 
      'source' => true
    ], 
    'meta' => [
      'label' => 'Meta', 
      'source' => true
    ], 
    'content' => [
      'label' => 'Content', 
      'type' => 'editor', 
      'source' => true
    ], 
    'image' => $config->get('builder.image'), 
    'image_alt' => [
      'label' => 'Image Alt', 
      'enable' => 'image'
    ], 
    'link' => $config->get('builder.link'), 
    'link_text' => [
      'label' => 'Link Text', 
      'description' => 'Set a different link text for this item.', 
      'enable' => 'link', 
      'source' => true
    ], 
    'label' => [
      'label' => 'Navigation Label', 
      'source' => true
    ], 
    'thumbnail' => [
      'label' => 'Navigation Thumbnail', 
      'description' => 'This is only used, if the thumbnail navigation is set.', 
      'type' => 'image', 
      'source' => true
    ], 
    'source' => $config->get('builder.source')
  ], 
  'fieldset' => [
    'default' => [
      'type' => 'tabs', 
      'fields' => [[
          'title' => 'Content', 
          'fields' => ['title', 'meta', 'content', 'image', 'image_alt', 'link', 'link_text', 'label', 'thumbnail']
        ], [
          'title' => 'Advanced', 
          'fields' => ['source']
        ]]
    ]
  ]
];
