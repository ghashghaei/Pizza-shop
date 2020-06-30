<?php

namespace YOOtheme\Theme\Joomla;

use Joomla\CMS\User\User;
use YOOtheme\Config;
use YOOtheme\Path;

class MenusListener
{
    public static function initCustomizer(Config $config, User $user, MenusHelper $helper)
    {
        $config->add('customizer', [

            'menu' => [
                'menus' => $helper->getMenus(),
                'items' => $helper->getItems(),
                'positions' => $config('theme.menus'),
                'canEdit' => $user->authorise('core.edit', 'com_menus'),
                'canDelete' => $user->authorise('core.edit.state', 'com_menus'),
                'canCreate' => $user->authorise('core.create', 'com_menus'),
            ],

        ]);

        if ($user->authorise('core.manage', 'com_menus')) {
            $config->addFile('customizer', Path::get('../config/customizer.json'));
        }
    }

    public static function loadModules(Config $config, array $modules)
    {
        if ($config('app.isAdmin') || !$config('~theme')) {
            return $modules;
        }

        // create menu modules when assigned in theme settings
        foreach ($config('~theme.menu.positions', []) as $position => $menu) {

            if (!$menu) {
                continue;
            }

            array_unshift($modules, (object) [
                'id' => "menu-{$position}",
                'name' => 'menu',
                'module' => 'mod_menu',
                'title' => '',
                'showtitle' => 0,
                'position' => $position,
                'params' => json_encode(['menutype' => $menu, 'showAllChildren' => true]),
            ]);
        }

        foreach ($modules as $module) {

            if ($module->module != 'mod_menu' || $module->position != 'navbar') {
                continue;
            }

            $clone = clone $module;
            $clone->id = "{$module->id}-split";
            $clone->position = 'navbar-split';

            $config->set("~theme.modules.{$clone->id}.split", true);
            $config->set("~theme.modules.{$module->id}.split", true);

            array_splice($modules, array_search($module, $modules) + 1, 0, [$clone]);
        }

        return $modules;
    }
}
