<?php

defined('_JEXEC') or die;

// Include the mod_stats functions only once
JLoader::register('ModStatsHelper', __DIR__ . '/helper.php');

$serverinfo      = $params->get('serverinfo');
$siteinfo        = $params->get('siteinfo');
$list            = ModStatsHelper::getStats($params);
$moduleclass_sfx = htmlspecialchars($params->get('moduleclass_sfx'), ENT_COMPAT, 'UTF-8');

require JModuleHelper::getLayoutPath('mod_stats_admin', $params->get('layout', 'default'));
