<?php
/**
 * Register the prefix so that the classes in RAD library can be auto-load
 */
defined('_JEXEC') or die();
JLoader::registerPrefix('RAD', dirname(__FILE__));

if (EshopHelper::getConfigValue('debug_mode', 0))
{
    error_reporting(E_ALL);
    ini_set('display_errors', 'On');
}
else
{
    error_reporting(0);
}