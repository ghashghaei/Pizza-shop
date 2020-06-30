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
defined('_JEXEC') or die();

/**
 * Eshop Component Model
 *
 * @package		Joomla
 * @subpackage	EShop
 * @since 1.5
 */
class EShopModelAttributes extends EShopModelList
{

	function __construct($config)
	{
	    $input     = JFactory::getApplication()->input;
	    $config['state_vars'] = array(
			'attributegroup_id'		=> array('', 'cmd', 1));
	    
		$config['search_fields'] = array('b.attribute_name');
		$config['translatable'] = true;
		$config['translatable_fields'] = array('attribute_name');
		
		parent::__construct($config);
	}
	
	public function _buildQuery()
	{
	    $db      = $this->getDbo();
	    $state   = $this->getState();
	    $query   = $db->getQuery(true);
	    $query   = parent::_buildQuery();
	    
	    if ($state->attributegroup_id)
	    {
	        $query->where('a.attributegroup_id = ' . $state->attributegroup_id);
	    }
	    
	    return $query;
	}
}