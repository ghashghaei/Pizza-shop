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
 * EShop controller
 *
 * @package		Joomla
 * @subpackage	EShop
 * @since 1.5
 */
class EShopControllerOrder extends EShopController
{

	/**
	 * Constructor function
	 *
	 * @param array $config
	 */
	function __construct($config = array())
	{
		parent::__construct($config);
	
	}

	/**
	 * 
	 * Function to download attached file for order
	 */
	public function downloadFile()
	{
		$input = JFactory::getApplication()->input;
    	$id = $input->getInt('id');
    	$model = $this->getModel('Order');
    	$model->downloadFile($id);
    }
    
    /**
     * 
     * Function to download invoice for orders
     */
    public function downloadInvoice()
    {
		$input = JFactory::getApplication()->input;
    	$fromExports = $input->getInt('from_exports');
    	
    	if ($fromExports)
    	{
    		$dateStart = $input->getString('date_start', date('Y-m-d', strtotime(date('Y') . '-' . date('m') . '-01')));
    		$dateEnd = $input->getString('date_end', date('Y-m-d'));
    		$groupBy = $input->getString('group_by', 'week');
    		$orderStatusId = $input->getInt('order_status_id', 0);
    		
    		$db = JFactory::getDbo();
    		$query = $db->getQuery(true);
    		
    		$query->select('id')
    			->from('#__eshop_orders');
    		
    		if ($orderStatusId)
    		{
    			$query->where('order_status_id = ' . (int)$orderStatusId);
    		}
    		
    		if (!empty($dateStart))
    		{
    			$query->where('created_date >= "' . $dateStart . '"');
    		}
    		
    		if (!empty($dateEnd))
    		{
    			$query->where('created_date <= "' . $dateEnd . '"');
    		}
    		
    		$db->setQuery($query);
    		$cid = $db->loadColumn();
    	}
    	else 
    	{
    		$cid = $input->get('cid', array(0), '', 'array');
    	}
    	
    	$filteredId = array();
    	
    	if (count($cid))
    	{
    	    $db = JFactory::getDbo();
    	    $row = new EShopTable('#__eshop_orders', 'id', $db);

    	    foreach ($cid as $id)
    	    {
    	        $row->load($id);
    	        
    	        if (EshopHelper::isInvoiceAvailable($row, '1', false))
    	        {
    	            $filteredId[] = $id;
    	        }
    	    }
    	}
    	
    	if (!count($filteredId))
    	{
    	    $mainframe = JFactory::getApplication();
    	    $mainframe->enqueueMessage(JText::_('ESHOP_NO_DATA_TO_DOWNLOAD_INVOICE'));
    	    $mainframe->redirect('index.php?option=com_eshop&view=orders');
    	}
    	else 
    	{
    	    EshopHelper::downloadInvoice($filteredId);
    	}
    }
    
    /**
     * 
     * Function to download orders to CSV
     */
    public function downloadCSV()
    {
		$input = JFactory::getApplication()->input;
    	$cid = $input->get('cid', array(0), '', 'array');
    	$currency = new EshopCurrency();
    	$db = JFactory::getDbo();
    	$nullDate = $db->getNullDate();
    	$fieldDelimiter = ',';
    	$query = $db->getQuery(true);
    	$query->select('*')
    		->from('#__eshop_orders');
    	if (count($cid))
    	{
    		$query->where('id IN (' . implode(',', $cid) . ')');
    	}
    	$db->setQuery($query);
    	$rows = $db->loadObjectList();
    	$csvOutput = array();
    	if (count($rows))
    	{
    		$resultsArr = array();
    		$resultsArr[] = 'order_id';
    		$resultsArr[] = 'order_number';
    		$resultsArr[] = 'invoice_number';
    		$resultsArr[] = 'customer_firstname';
    		$resultsArr[] = 'customer_lastname';
    		$resultsArr[] = 'customer_email';
    		$resultsArr[] = 'customer_telephone';
    		$resultsArr[] = 'customer_fax';
    		$resultsArr[] = 'payment_firstname';
    		$resultsArr[] = 'payment_lastname';
    		$resultsArr[] = 'payment_email';
    		$resultsArr[] = 'payment_telephone';
    		$resultsArr[] = 'payment_fax';
    		$resultsArr[] = 'payment_company';
    		$resultsArr[] = 'payment_company_id';
    		$resultsArr[] = 'payment_address_1';
    		$resultsArr[] = 'payment_address_2';
    		$resultsArr[] = 'payment_city';
    		$resultsArr[] = 'payment_postcode';
    		$resultsArr[] = 'payment_country_name';
    		$resultsArr[] = 'payment_zone_name';
    		$resultsArr[] = 'payment_method';
    		$resultsArr[] = 'payment_method_title';
    		$resultsArr[] = 'transaction_id';
    		$resultsArr[] = 'shipping_firstname';
    		$resultsArr[] = 'shipping_lastname';
    		$resultsArr[] = 'shipping_email';
    		$resultsArr[] = 'shipping_telephone';
    		$resultsArr[] = 'shipping_fax';
    		$resultsArr[] = 'shipping_company';
    		$resultsArr[] = 'shipping_company_id';
    		$resultsArr[] = 'shipping_address_1';
    		$resultsArr[] = 'shipping_address_2';
    		$resultsArr[] = 'shipping_city';
    		$resultsArr[] = 'shipping_postcode';
    		$resultsArr[] = 'shipping_country_name';
    		$resultsArr[] = 'shipping_zone_name';
    		$resultsArr[] = 'shipping_method';
    		$resultsArr[] = 'shipping_method_title';
    		$resultsArr[] = 'shipping_tracking_number';
    		$resultsArr[] = 'shipping_tracking_url';
    		$resultsArr[] = 'shipping_amount';
    		$resultsArr[] = 'tax_amount';
    		$resultsArr[] = 'total';
    		$resultsArr[] = 'comment';
    		$resultsArr[] = 'order_status';
    		$resultsArr[] = 'created_date';
    		$resultsArr[] = 'modified_date';
    		$resultsArr[] = 'product_id';
    		$resultsArr[] = 'product_name';
    		$resultsArr[] = 'option_name';
    		$resultsArr[] = 'option_value';
    		$resultsArr[] = 'option_sku';
    		$resultsArr[] = 'model';
    		$resultsArr[] = 'quantity';
    		$resultsArr[] = 'unit_price';
    		$resultsArr[] = 'unit_total';
    			
    		$csvOutput[] = $resultsArr;
    		
    		foreach ($rows as $row)
    		{
    			$resultsArr = array();
    			$resultsArr[] = $row->id;
    			$resultsArr[] = $row->order_number;
    			$resultsArr[] = $row->invoice_number;
    			$resultsArr[] = $row->firstname;
    			$resultsArr[] = $row->lastname;
    			$resultsArr[] = $row->email;
    			$resultsArr[] = $row->telephone;
    			$resultsArr[] = $row->fax;
    			$resultsArr[] = $row->payment_firstname;
    			$resultsArr[] = $row->payment_lastname;
    			$resultsArr[] = $row->payment_email;
    			$resultsArr[] = $row->payment_telephone;
    			$resultsArr[] = $row->payment_fax;
    			$resultsArr[] = $row->payment_company;
    			$resultsArr[] = $row->payment_company_id;
    			$resultsArr[] = $row->payment_address_1;
    			$resultsArr[] = $row->payment_address_2;
    			$resultsArr[] = $row->payment_city;
    			$resultsArr[] = $row->payment_postcode;
    			$resultsArr[] = $row->payment_country_name;
    			$resultsArr[] = $row->payment_zone_name;
    			$resultsArr[] = $row->payment_method;
    			$resultsArr[] = $row->payment_method_title;
    			$resultsArr[] = $row->transaction_id;
    			$resultsArr[] = $row->shipping_firstname;
    			$resultsArr[] = $row->shipping_lastname;
    			$resultsArr[] = $row->shipping_email;
    			$resultsArr[] = $row->shipping_telephone;
    			$resultsArr[] = $row->shipping_fax;
    			$resultsArr[] = $row->shipping_company;
    			$resultsArr[] = $row->shipping_company_id;
    			$resultsArr[] = $row->shipping_address_1;
    			$resultsArr[] = $row->shipping_address_2;
    			$resultsArr[] = $row->shipping_city;
    			$resultsArr[] = $row->shipping_postcode;
    			$resultsArr[] = $row->shipping_country_name;
    			$resultsArr[] = $row->shipping_zone_name;
    			$resultsArr[] = $row->shipping_method;
    			$resultsArr[] = $row->shipping_method_title;
    			$resultsArr[] = $row->shipping_tracking_number;
    			$resultsArr[] = $row->shipping_tracking_url;
    			$query->clear()
	    			->select('text')
	    			->from('#__eshop_ordertotals')
	    			->where('order_id = ' . intval($row->id))
	    			->where('(name = "shipping" OR name="tax")')
	    			->order('name ASC');
    			$db->setQuery($query);
    			$orderTotals = $db->loadColumn();
    			$resultsArr[] = isset($orderTotals[0]) ? $orderTotals[0] : '';
    			$resultsArr[] = isset($orderTotals[1]) ? $orderTotals[1] : '';
    			$resultsArr[] = $currency->format($row->total, $row->currency_code, $row->currency_exchanged_value);
    			$resultsArr[] = $row->comment;
    			$resultsArr[] = EshopHelper::getOrderStatusName($row->order_status_id, JComponentHelper::getParams('com_languages')->get('site', 'en-GB'));
    			if ($row->created_date != $nullDate)
    			{
    				$resultsArr[] = JHtml::_('date', $row->created_date, EshopHelper::getConfigValue('date_format', 'm-d-Y'), null);
    			}
    			else
    			{
    				$resultsArr[] = '';
    			}
    			if ($row->modified_date != $nullDate)
    			{
    				$resultsArr[] = JHtml::_('date', $row->modified_date, EshopHelper::getConfigValue('date_format', 'm-d-Y'), null);
    			}
    			else
    			{
    				$resultsArr[] = '';
    			}
    	
    			$query->clear();
    			$query->select('*')
	    			->from('#__eshop_orderproducts')
	    			->where('order_id = ' . intval($row->id));
    			$db->setQuery($query);
    			$orderProducts = $db->loadObjectList();
    			
    			for ($i = 0; $n = count($orderProducts), $i < $n; $i++)
    			{
	    			$totalOptionResultsArr = array();
	    			$query->clear();
	    			$query->select('*')
	    				->from('#__eshop_orderoptions')
						->where('order_product_id = ' . intval($orderProducts[$i]->id));
    				$db->setQuery($query);
    				$options = $db->loadObjectList();
    							
    				if ($i > 0)
    				{
    					$resultsArr = array();
						$resultsArr[] = '';
						$resultsArr[] = '';
						$resultsArr[] = '';
						$resultsArr[] = '';
						$resultsArr[] = '';
						$resultsArr[] = '';
						$resultsArr[] = '';
						$resultsArr[] = '';
						$resultsArr[] = $row->payment_firstname;
						$resultsArr[] = $row->payment_lastname;
						$resultsArr[] = $row->payment_email;
						$resultsArr[] = $row->payment_telephone;
						$resultsArr[] = $row->payment_fax;
						$resultsArr[] = $row->payment_company;
						$resultsArr[] = $row->payment_company_id;
						$resultsArr[] = $row->payment_address_1;
						$resultsArr[] = $row->payment_address_2;
						$resultsArr[] = $row->payment_city;
						$resultsArr[] = $row->payment_postcode;
						$resultsArr[] = $row->payment_country_name;
						$resultsArr[] = $row->payment_zone_name;
						$resultsArr[] = $row->payment_method;
						$resultsArr[] = $row->payment_method_title;
						$resultsArr[] = '';
						$resultsArr[] = $row->shipping_firstname;
						$resultsArr[] = $row->shipping_lastname;
						$resultsArr[] = $row->shipping_email;
						$resultsArr[] = $row->shipping_telephone;
						$resultsArr[] = $row->shipping_fax;
						$resultsArr[] = $row->shipping_company;
						$resultsArr[] = $row->shipping_company_id;
						$resultsArr[] = $row->shipping_address_1;
						$resultsArr[] = $row->shipping_address_2;
						$resultsArr[] = $row->shipping_city;
						$resultsArr[] = $row->shipping_postcode;
						$resultsArr[] = $row->shipping_country_name;
						$resultsArr[] = $row->shipping_zone_name;
						$resultsArr[] = $row->shipping_method;
						$resultsArr[] = $row->shipping_method_title;
						$resultsArr[] = $row->shipping_tracking_number;
						$resultsArr[] = $row->shipping_tracking_url;
						$resultsArr[] = '';
						$resultsArr[] = '';
						$resultsArr[] = '';
						$resultsArr[] = '';
						$resultsArr[] = '';
						$resultsArr[] = '';
						$resultsArr[] = '';
					}
    						
					$resultsArr[] = $orderProducts[$i]->product_id;
					$resultsArr[] = $orderProducts[$i]->product_name;
					
					for ($j = 0; $m = count($options), $j < $m; $j++)
					{
						if ($j > 0)
						{
							$optionResultsArr = array();
							$optionResultsArr[] = '';
							$optionResultsArr[] = '';
							$optionResultsArr[] = '';
							$optionResultsArr[] = '';
							$optionResultsArr[] = '';
							$optionResultsArr[] = '';
							$optionResultsArr[] = '';
							$optionResultsArr[] = '';
							$optionResultsArr[] = $row->payment_firstname;
							$optionResultsArr[] = $row->payment_lastname;
							$optionResultsArr[] = $row->payment_email;
							$optionResultsArr[] = $row->payment_telephone;
							$optionResultsArr[] = $row->payment_fax;
							$optionResultsArr[] = $row->payment_company;
							$optionResultsArr[] = $row->payment_company_id;
							$optionResultsArr[] = $row->payment_address_1;
							$optionResultsArr[] = $row->payment_address_2;
							$optionResultsArr[] = $row->payment_city;
							$optionResultsArr[] = $row->payment_postcode;
							$optionResultsArr[] = $row->payment_country_name;
							$optionResultsArr[] = $row->payment_zone_name;
							$optionResultsArr[] = $row->payment_method;
							$optionResultsArr[] = $row->payment_method_title;
							$optionResultsArr[] = '';
							$optionResultsArr[] = $row->shipping_firstname;
							$optionResultsArr[] = $row->shipping_lastname;
							$optionResultsArr[] = $row->shipping_email;
							$optionResultsArr[] = $row->shipping_telephone;
							$optionResultsArr[] = $row->shipping_fax;
							$optionResultsArr[] = $row->shipping_company;
							$optionResultsArr[] = $row->shipping_company_id;
							$optionResultsArr[] = $row->shipping_address_1;
							$optionResultsArr[] = $row->shipping_address_2;
							$optionResultsArr[] = $row->shipping_city;
							$optionResultsArr[] = $row->shipping_postcode;
							$optionResultsArr[] = $row->shipping_country_name;
							$optionResultsArr[] = $row->shipping_zone_name;
							$optionResultsArr[] = $row->shipping_method;
							$optionResultsArr[] = $row->shipping_method_title;
							$optionResultsArr[] = $row->shipping_tracking_number;
							$optionResultsArr[] = $row->shipping_tracking_url;
							$optionResultsArr[] = '';
							$optionResultsArr[] = '';
							$optionResultsArr[] = '';
							$optionResultsArr[] = '';
							$optionResultsArr[] = '';
							$optionResultsArr[] = '';
							$optionResultsArr[] = '';
							$optionResultsArr[] = '';
							$optionResultsArr[] = '';
							$optionResultsArr[]	= $options[$j]->option_name;
							$optionResultsArr[]	= $options[$j]->option_value;
							$optionResultsArr[]	= $options[$j]->sku;
							$optionResultsArr[]	= '';
							$optionResultsArr[]	= '';
							$optionResultsArr[]	= '';
							$optionResultsArr[]	= '';
							$totalOptionResultsArr[] = $optionResultsArr;
						}
						else
						{
							$resultsArr[]	= $options[$j]->option_name;
							$resultsArr[]	= $options[$j]->option_value;
							$resultsArr[]	= $options[$j]->sku;
						}
					}
					
					if ($j == 0)
					{
						$resultsArr[]	= '';
						$resultsArr[]	= '';
						$resultsArr[]	= '';
					}
					
					$resultsArr[] = $orderProducts[$i]->product_sku;
					$resultsArr[] = $orderProducts[$i]->quantity;
					$resultsArr[] = $currency->format($orderProducts[$i]->price, $row->currency_code, $row->currency_exchanged_value);
					$resultsArr[] = $currency->format($orderProducts[$i]->total_price, $row->currency_code, $row->currency_exchanged_value);
					$csvOutput[] = $resultsArr;
					
					if (count($totalOptionResultsArr))
					{
						foreach ($totalOptionResultsArr as $optionResultsArr)
						{
							$csvOutput[] = $optionResultsArr;
						}
					}
				}
			}
    				
			$filename = 'orders_'.date('YmdHis').'.csv';
			$fp = fopen(JPATH_ROOT.'/media/com_eshop/files/'.$filename, 'w');
			
			foreach ($csvOutput as $output)
			{
				fputcsv($fp, $output, $fieldDelimiter);
			}
			fclose($fp);
			EshopHelper::processDownload(JPATH_ROOT . '/media/com_eshop/files/' . $filename, $filename, true);
			exit();
    	}
    }
    
    /**
     *
     * Function to download orders to CSV
     */
    public function downloadXML()
    {
        $input = JFactory::getApplication()->input;
        $cid = $input->get('cid', array(0), '', 'array');
        $currency = new EshopCurrency();
        $db = JFactory::getDbo();
        $nullDate = $db->getNullDate();
        $fieldDelimiter = ',';
        $query = $db->getQuery(true);
        $query->select('*')
        ->from('#__eshop_orders');
        if (count($cid))
        {
            $query->where('id IN (' . implode(',', $cid) . ')');
        }
        $db->setQuery($query);
        $rows = $db->loadObjectList();
        $csvOutput = array();
        if (count($rows))
        {
            foreach ($rows as $row)
            {
                //list product order
                $orderProductXmlArray = array();
                $query->clear();
                $query->select('*')
                ->from('#__eshop_orderproducts')
                ->where('order_id = ' . intval($row->id));
                $db->setQuery($query);
                $orderProducts = $db->loadObjectList();
                foreach ($orderProducts as $orderProduct)
                {
                    $productXmlArray = array(
                        'sku'							        => $orderProduct->product_sku ,
                        'product_name'							=> $orderProduct->product_name ,
                        'quantity'							    => $orderProduct->quantity ,
                        'unit_price'							=> $orderProduct->price,
                    );
                    $orderProductXmlArray[] = $productXmlArray;
                }
                //start customer xml
                $customerXml = array(
                    'firstname'						    => $row->firstname,
                    'lastname'						    => $row->lastname,
                    'email'						        => $row->email,
                    'telephone'						    => $row->telephone,
                    'fax'						        => $row->fax,
                );
                //end customer xml
                
                
                $orderXmlArray = array();
                $xmlarray['Orders']['Order'][] = array(
                    'order_id'							=> $row->id,
                    'order_number'						=> $row->order_number,
                    'invoice_number'				    => $row->invoice_number,
                    'payment_firstname'					=> $row->payment_firstname,
                    'payment_lastname'					=> $row->payment_lastname,
                    'payment_email'						=> $row->payment_email,
                    'payment_telephone'					=> $row->payment_telephone,
                    'payment_fax'						=> $row->payment_fax,
                    'payment_company'					=> $row->payment_company,
                    'payment_company_id'				=> $row->payment_company_id,
                    'payment_address_1'					=> $row->payment_address_1,
                    'payment_address_2'					=> $row->payment_address_2,
                    'payment_city'						=> $row->payment_city,
                    'payment_postcode'					=> $row->payment_postcode,
                    'payment_country_name'				=> $row->payment_country_name,
                    'payment_zone_name'					=> $row->payment_zone_name,
                    'payment_method'					=> $row->payment_method,
                    'payment_method_title'				=> $row->payment_method_title,
                    'transaction_id'					=> $row->transaction_id,
                    'shipping_firstname'				=> $row->shipping_firstname,
                    'shipping_lastname'					=> $row->shipping_lastname,
                    'shipping_email'					=> $row->shipping_email,
                    'shipping_telephone'				=> $row->shipping_telephone,
                    'shipping_fax'						=> $row->shipping_fax,
                    'shipping_company'					=> $row->shipping_company,
                    'shipping_company_id'				=> $row->shipping_company_id,
                    'shipping_address_1'				=> $row->shipping_address_1,
                    'shipping_address_2'				=> $row->shipping_address_2,
                    'shipping_city'						=> $row->shipping_city,
                    'shipping_postcode'					=> $row->shipping_postcode,
                    'shipping_country_name'				=> $row->shipping_country_name,
                    'shipping_zone_name'				=> $row->shipping_zone_name,
                    'shipping_method'					=> $row->shipping_method,
                    'shipping_method_title'				=> $row->shipping_method_title,
                    'shipping_tracking_number'			=> $row->shipping_tracking_number,
                    'shipping_tracking_url'				=> $row->shipping_tracking_url,
                    'Orderlines'				        => array(
						'line'				=> $orderProductXmlArray,
					),
                    'customers'                         => $customerXml,
                
                );
                $orderXmlArray[] = $xmlarray;
            }
    
            $filename = 'orders_'.date('YmdHis').'.xml';
	        include_once JPATH_ROOT.'/components/com_eshop/helpers/array2xml.php';
	        $xml = Array2XML::createXML('SConnectData', $orderXmlArray[0]);
	        JFile::write(JPATH_ROOT . '/media/com_eshop/files/' . $filename, $xml->saveXML());
	        EshopHelper::processDownload(JPATH_ROOT . '/media/com_eshop/files/' . $filename, $filename, true);
	        exit();
        }
    }
}