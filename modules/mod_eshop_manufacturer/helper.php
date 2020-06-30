<?php
/**
 * @version		1.3.1
 * @package		Joomla
 * @subpackage	EShop
 * @author  	Giang Dinh Truong
 * @copyright	Copyright (C) 2011 Ossolution Team
 * @license		GNU/GPL, see LICENSE.php
 */
// no direct access
defined('_JEXEC') or die;

class modEshopManufacturerHelper
{
	/**
	 * 
	 * Function to get manufacturers
	 * @param object $params
	 * @return manufacturers object list
	 */
    static public function getItems($params)
    {
    	$db =  JFactory::getDbo();
    	$query = $db->getQuery(true);
    	$query->select('a.id, a.manufacturer_image, b.manufacturer_name')
			->from('#__eshop_manufacturers AS a')
			->innerJoin('#__eshop_manufacturerdetails AS b ON (a.id = b.manufacturer_id)')
			->where('a.published = 1')
			->where('b.language = "' . JComponentHelper::getParams('com_languages')->get('site', 'en-GB') . '"');
    	
		$manufacturerDefaultSorting = EshopHelper::getConfigValue('manufacturer_default_sorting', 'name-asc');
		
		switch ($manufacturerDefaultSorting)
		{
		    case 'name-desc':
		        $query->order('b.manufacturer_name DESC LIMIT 0, ' .  $params->get('manufacturers_total', 8));
		        break;
		    case 'ordering-asc':
		        $query->order('a.ordering ASC LIMIT 0, ' .  $params->get('manufacturers_total', 8));
		        break;
		    case 'ordering-desc':
		        $query->order('a.ordering DESC LIMIT 0, ' .  $params->get('manufacturers_total', 8));
		        break;
		    case 'id-asc':
		        $query->order('a.id ASC LIMIT 0, ' .  $params->get('manufacturers_total', 8));
		        break;
		    case 'id-desc':
		        $query->order('a.id DESC LIMIT 0, ' .  $params->get('manufacturers_total', 8));
		        break;
		    case 'random':
		        $query->order('RAND() LIMIT 0, ' .  $params->get('manufacturers_total', 8));
		        break;
		    case 'name-asc':
		    default:
		        $query->order('b.manufacturer_name ASC LIMIT 0, ' .  $params->get('manufacturers_total', 8));
		        break;
		}

    	//Check viewable of customer groups
    	$user = JFactory::getUser();
    	if ($user->get('id'))
    	{
    		$customer = new EshopCustomer();
    		$customerGroupId = $customer->getCustomerGroupId();
    	}
    	else
    	{
    		$customerGroupId = EshopHelper::getConfigValue('customergroup_id');
    	}
    	if (!$customerGroupId)
    		$customerGroupId = 0;
    	$query->where('((a.manufacturer_customergroups = "") OR (a.manufacturer_customergroups IS NULL) OR (a.manufacturer_customergroups = "' . $customerGroupId . '") OR (a.manufacturer_customergroups LIKE "' . $customerGroupId . ',%") OR (a.manufacturer_customergroups LIKE "%,' . $customerGroupId . ',%") OR (a.manufacturer_customergroups LIKE "%,' . $customerGroupId . '"))');
    	$db->setQuery($query);
    	return $db->loadObjectList();
    }
}