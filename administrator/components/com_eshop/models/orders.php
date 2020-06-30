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
class EShopModelOrders extends EShopModelList
{
	function __construct($config)
	{
		$config['search_fields'] = array('order_number', 'firstname', 'lastname', 'email', 'payment_firstname', 'payment_lastname', 'shipping_firstname', 'shipping_lastname', 'CONCAT(firstname, " ", lastname)');
		$config['state_vars'] = array( 
			'filter_order_Dir' => array('DESC', 'cmd', 1));
		parent::__construct($config);
	}
	
	/**
	 * Basic build Query function.
	 * The child class must override it if it is necessary
	 *
	 * @return string
	 */
	public function _buildQuery()
	{
		$db = $this->getDbo();
		$state = $this->getState();
		$query = $db->getQuery(true);
		
		$query->select('a.*')
			->from($this->mainTable . ' AS a ');
		
		$where = $this->_buildContentWhereArray();
		
		if (count($where))
		{
			$query->where($where);
		}
		
		$orderby = $this->_buildContentOrderBy();
		
		if ($orderby != '')
		{
			$query->order($orderby);
		}

		return $query;
	}
	
	/**
	 * Build an where clause array
	 *
	 * @return array
	 */
	public function _buildContentWhereArray()
	{
		$input = JFactory::getApplication()->input;
		$db = $this->getDbo();
		$state = $this->getState();
		$where = array();
		
		$paymentMethod = $input->getString('payment_method');
		
        if ($paymentMethod  != '')
		{
            $where[] = 'a.payment_method = ' . $db->quote($paymentMethod);
		}
		
		$productId = $input->get('product_id');
		
		if ($productId)
		{
		    $where[] = 'a.id IN (SELECT order_id FROM #__eshop_orderproducts WHERE product_id = ' . $productId . ')';
		}
		
		$manufacturerId = $input->get('manufacturer_id');
		
		if ($manufacturerId)
		{
            $where[] = 'a.id IN (SELECT order_id FROM #__eshop_orderproducts WHERE product_id IN (SELECT id FROM #__eshop_products WHERE manufacturer_id = ' . intval($manufacturerId) . '))';
		}
		
		$orderStatusId = $input->getInt('order_status_id', 0);
		
		if ($orderStatusId)
		{ 
			$where[] = 'a.order_status_id = ' . intval($orderStatusId);
		}
		
		if ($state->search)
		{
			$search = $db->quote('%' . $db->escape($state->search, true) . '%', false);
			
			if (is_array($this->searchFields))
			{
				$whereOr = array();
				foreach ($this->searchFields as $titleField)
				{
					$whereOr[] = " LOWER($titleField) LIKE " . $search;
				}
				$where[] = ' (' . implode(' OR ', $whereOr) . ') ';
			}
			else
			{
				$where[] = 'LOWER(' . $this->searchFields . ') LIKE ' . $db->quote('%' . $db->escape($state->search, true) . '%', false);
			}
		}
		
		$shippingMethod = $input->getString('shipping_method');
		
		if ($shippingMethod != '')
		{
		    $where[] = 'a.id IN (SELECT order_id FROM #__eshop_ordertotals WHERE name = "shipping" AND title = ' . $db->quote($shippingMethod) .  ')';
		}
		
		return $where;
	}
}