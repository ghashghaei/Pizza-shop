<?php
/**
 * @version		3.3.0
 * @package		Joomla
 * @subpackage	EShop
 * @author  	Giang Dinh Truong
 * @copyright	Copyright (C) 2012 Ossolution Team
 * @license		GNU/GPL, see LICENSE.php
 */
// no direct access
defined('_JEXEC') or die;

if (!empty($this->editor))
{
	$customCss = '';

	$theme    = EshopHelper::getConfigValue('theme');
	
	if (JFile::exists(JPATH_ROOT . '/components/com_eshop/themes/' . $theme . '/css/custom.css'))
	{
		$customCss = file_get_contents(JPATH_ROOT . '/components/com_eshop/themes/' . $theme . '/css/custom.css');
	}
	elseif (JFile::exists(JPATH_ROOT . '/components/com_eshop/themes/default/css/custom.css')) 
	{
		$customCss = file_get_contents(JPATH_ROOT . '/components/com_eshop/themes/default/css/custom.css');
	}

	echo $this->editor->display('custom_css', $customCss, '100%', '550', '75', '8', false, null, null, null, array('syntax' => 'css'));
}