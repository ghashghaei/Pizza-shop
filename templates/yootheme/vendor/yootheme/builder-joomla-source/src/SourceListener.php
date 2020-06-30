<?php

namespace YOOtheme\Builder\Joomla\Source;

use Joomla\CMS\HTML\HTMLHelper;
use YOOtheme\Builder\Source\Type\SiteType;
use YOOtheme\Config;

class SourceListener
{
    public static function initSource($source)
    {
        $types = [

            ['Article', Type\ArticleType::class],
            ['ArticleEvent', Type\ArticleEventType::class],
            ['ArticleFields', Type\FieldsType::class, 'com_content.article'],
            ['ArticleImages', Type\ArticleImagesType::class],
            ['ArticleUrls', Type\ArticleUrlsType::class],

            ['Category', Type\CategoryType::class],
            ['CategoryFields', Type\FieldsType::class, 'com_content.categories'],
            ['CategoryParams', Type\CategoryParamsType::class],

            ['Site', SiteType::class],
            ['Tag', Type\TagType::class],

            ['User', Type\UserType::class],
            ['UserFields', Type\FieldsType::class, 'com_users.user'],

            ['ChoiceField', Type\ChoiceFieldType::class],
            ['SqlField', Type\SqlFieldType::class],
            ['ValueField', Type\ValueFieldType::class],

            ['RootQuery', Type\SiteQueryType::class],
            ['RootQuery', Type\ArticleQueryType::class],
            ['RootQuery', Type\CategoryQueryType::class],
            ['RootQuery', Type\ArticlesQueryType::class],
            ['RootQuery', Type\CustomArticleQueryType::class],
            ['RootQuery', Type\CustomArticlesQueryType::class],
            ['RootQuery', Type\CustomCategoryQueryType::class],
            ['RootQuery', Type\CustomCategoriesQueryType::class],

        ];

        foreach ($types as $args) {
            $source->addType(...$args);
        }
    }

    public static function initCustomizer(Config $config)
    {
        $config->add('customizer.templates', [

            'com_content.article' => [
                'label' => 'Single Article',
                'fieldset' => [
                    'default' => [
                        'fields' => [
                            'catid' => $category = [
                                'label' => 'Limit by Categories',
                                'description' => 'The template is only assigned to articles from the selected categories. Articles from child categories are not included. Use the <kbd>shift</kbd> or <kbd>ctrl/cmd</kbd> key to select multiple categories.',
                                'type' => 'select-category',
                                'default' => [],
                                'attrs' => [
                                    'multiple' => true,
                                    'class' => 'uk-height-small uk-resize-vertical',
                                ],
                            ],
                            'tag' => $tag = [
                                'label' => 'Limit by Tags',
                                'description' => 'The template is only assigned to articles with the selected tags. Use the <kbd>shift</kbd> or <kbd>ctrl/cmd</kbd> key to select multiple tags.',
                                'type' => 'select-tag',
                                'default' => [],
                                'attrs' => [
                                    'multiple' => true,
                                    'class' => 'uk-height-small uk-resize-vertical',
                                ],
                            ],
                        ],
                    ],
                ],
            ],

            'com_content.category' => [
                'label' => 'Category Blog',
                'fieldset' => [
                    'default' => [
                        'fields' => [
                            'catid' => [
                                'label' => 'Limit by Categories',
                                'description' => 'The template is only assigned to the selected categories. Child categories are not included. Use the <kbd>shift</kbd> or <kbd>ctrl/cmd</kbd> key to select multiple categories.',
                            ] + $category,
                            'tag' => ['description' => 'The template is only assigned to categories with the selected tags. Use the <kbd>shift</kbd> or <kbd>ctrl/cmd</kbd> key to select multiple tags.'] + $tag,
                        ],
                    ],
                ],
            ],

            'com_content.featured' => [
                'label' => 'Featured Articles',
            ],

        ]);

        $config->add('customizer.categories', array_map(function ($category) {
            return [$category->value, $category->text];
        }, HTMLHelper::_('category.options', 'com_content')));

        $config->add('customizer.tags', array_map(function ($tag) {
            return [$tag->value, $tag->text];
        }, HTMLHelper::_('tag.options')));
    }
}
