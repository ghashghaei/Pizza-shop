<?php

namespace YOOtheme\Theme\Joomla;

use Joomla\CMS\Factory;
use Joomla\CMS\Language\Language;
use Joomla\CMS\Language\Text;
use YOOtheme\Config;
use YOOtheme\Database;

class ModulesHelper
{
    /**
     * Constructor.
     *
     * @param Config   $config
     * @param Database $database
     * @param Language $language
     */
    public function __construct(Config $config, Database $database, Language $language)
    {
        $this->config = $config;
        $this->database = $database;
        $this->language = $language;
    }

    public function getTypes()
    {
        $types = $this->database->fetchAll("SELECT name, element FROM @extensions WHERE client_id = 0 AND type = 'module'");

        foreach ($types as $type) {
            $this->language->load("{$type['element']}.sys", JPATH_SITE, null, false, true);
            $data[$type['element']] = Text::_($type['name']);
        }

        natsort($data);

        return $data;
    }

    public function getModules()
    {
        return $this->database->fetchAll('SELECT id, title, module, position, ordering FROM @modules WHERE client_id = 0 AND published != -2 ORDER BY position, ordering');
    }

    public function getPositions()
    {
        return array_values(
            array_unique(
                array_merge(
                    array_keys($this->config->get('theme.positions')),
                    Factory::getDbo()->setQuery('SELECT DISTINCT(position) FROM #__modules WHERE client_id = 0 ORDER BY position')->loadColumn()
                )
            )
        );
    }
}
