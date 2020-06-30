<?php
/**
 * @version		3.3.0
 * @package		Joomla
 * @subpackage	EShop - Price Shipping
 * @author  	Giang Dinh Truong
 * @copyright	Copyright (C) 2012 Ossolution Team
 * @license		GNU/GPL, see LICENSE.php
 */
// no direct access
defined( '_JEXEC' ) or die();

class eshop_price extends eshop_shipping
{

	/**
	 *
	 * Constructor function
	 */
	public function __construct()
	{
		parent::setName('eshop_price');
		parent::__construct();
	}
	
	/**
	 * 
	 * Function tet get quote for price shipping
	 * @param array $addressData
	 * @param object $params
	 */
	function getQuote($addressData, $params)
	{
		//Check geozone condition
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		$cart = new EshopCart();
		
		if (!$params->get('geozone_id'))
		{
			$status = true;
		}
		else
		{
			$query->select('COUNT(*)')
				->from('#__eshop_geozonezones')
				->where('geozone_id = ' . intval($params->get('geozone_id')))
				->where('country_id = ' . intval($addressData['country_id']))
				->where('(zone_id = 0 OR zone_id = ' . intval($addressData['zone_id']) . ')');
			$db->setQuery($query);
			if ($db->loadResult())
			{
				$status = true;
			}
			else
			{
				$status = false;
			}
			
			//Check geozone postcode status
			if ($status)
			{
				$gzpStatus = EshopHelper::getGzpStatus($params->get('geozone_id'), $addressData['postcode']);
			
				if (!$gzpStatus)
				{
					$status = false;
				}
			}
		}
		//Check customer groups
		$customerGroups = $params->get('customer_groups');
		
		if (!empty($customerGroups))
		{
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
			if (!in_array($customerGroupId, $customerGroups))
			{
				$status = false;
			}
		}
		
		//Check disabled products
		$disabledProducts = $params->get('disabled_products');
		
		if (!empty($disabledProducts))
		{
		    foreach ($cart->getCartData() as $product)
		    {
		        if (in_array($product['product_id'], $disabledProducts))
		        {
		            $status = false;
		            break;
		        }
		    }
		}
		
		//Check min total for free condition
		$total = $cart->getTotal();
		$minTotal = $params->get('min_total', 0);
		
		if ($minTotal > 0 && $total >= $minTotal)
		{
			$status = false;
		}
		
		$quantity = $cart->countProducts(true);
		$minQuantity = $params->get('min_quantity', 0);
		
		if ($minQuantity > 0 && $quantity >= $minQuantity)
		{
			$status = false;
		}
				
		//Check input data condition
		$totalRange = $params->get('total_range');
		$totalRangeArr = explode(';', $totalRange);
		$costRange = $params->get('cost_range');
		$costRangeArr = explode(';', $costRange);
		if (!count($totalRangeArr) || !count($costRangeArr))
		{
			$status = false;
		}
		$methodData = array();
		if ($status)
		{
			$tax = new EshopTax(EshopHelper::getConfig());
			$currency = new EshopCurrency();
			$quoteData = array();
			$packageFee = $params->get('package_fee', 0);
			$cost = 0;
			for ($i = 0; $n = count($totalRangeArr), $i < ($n - 1); $i++)
			{
				if ($total >= $totalRangeArr[$i] && $total <= $totalRangeArr[$i + 1])
				{
					if (strpos($costRangeArr[$i], '%'))
					{
						$percentageCost = str_replace('%', '', $costRangeArr[$i]);
						$cost = round($total * $percentageCost / 100, 2);
					}
					else
					{
						$cost = $costRangeArr[$i];
					}
					break;
				}
				else
				{
					continue;
				}
			}
			if ($i == ($n - 1))
			{
				if (strpos($costRangeArr[$i], '%'))
				{
					$percentageCost = str_replace('%', '', $costRangeArr[$i]);
					$cost = round($total * $percentageCost / 100, 2);
				}
				else
				{
					$cost = $costRangeArr[$i];
				}
			}
			$cost = $cost + $packageFee;
			
			$query->clear();
			$query->select('*')
				->from('#__eshop_shippings')
				->where('name = "eshop_price"');
			$db->setQuery($query);
			$row = $db->loadObject();
			
			if ($params->get('show_shipping_cost_with_tax', 1))
			{
			    $text = $currency->format($tax->calculate($cost, $params->get('taxclass_id'), EshopHelper::getConfigValue('tax')));
			}
			else
			{
			    $text = $currency->format($cost);
			}
			
			$quoteData['price'] = array(
				'name'			=> 'eshop_price.price', 
				'title'			=> JText::_('PLG_ESHOP_PRICE_DESC'), 
				'cost'			=> $cost, 
				'taxclass_id' 	=> $params->get('taxclass_id'), 
				'text'			=> $text);
			
			$methodData = array(
				'name'		=> 'eshop_price',
				'title'		=> JText::_('PLG_ESHOP_PRICE_TITLE'),
				'quote'		=> $quoteData,
				'ordering'	=> $row->ordering,
				'error'		=> false);
		}
		return $methodData;
	}
}