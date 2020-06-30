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
class EShopModelOrder extends EShopModel
{
	
	function __construct($config)
	{
		parent::__construct($config);
	}
	
	function store(&$data)
	{
		$input = JFactory::getApplication()->input;
		
		foreach ($data as $key => $value)
		{
			if (is_array($value))
			{
				$data[$key] = json_encode($value);
			}
		}
		
		$row = new EShopTable('#__eshop_orders', 'id', $this->getDbo());
		$row->load($data['id']);
		$paymentCountryInfo = EshopHelper::getCountry($data['payment_country_id']);
		
		if (is_object($paymentCountryInfo))
		{
			$data['payment_country_name'] = $paymentCountryInfo->country_name;
		}
		
		$paymentZoneInfo = EshopHelper::getZone($data['payment_zone_id']);
		
		if (is_object($paymentZoneInfo))
		{
			$data['payment_zone_name'] = $paymentZoneInfo->zone_name;
		}
		
		$shippingCountryInfo = EshopHelper::getCountry($data['shipping_country_id']);
		
		if (is_object($shippingCountryInfo))
		{
			$data['shipping_country_name'] = $shippingCountryInfo->country_name;
		}
		
		$shippingZoneInfo = EshopHelper::getZone($data['shipping_zone_id']);
		
		if (is_object($shippingZoneInfo))
		{
			$data['shipping_zone_name'] = $shippingZoneInfo->zone_name;
		}
		
		$orderStatusChanged = false;
		$updateStock = false;
		
		if ($data['order_status_id'] != $row->order_status_id)
		{
			$orderStatusChanged = true;
			$orderStatusFrom = $row->order_status_id;
			$orderStatusTo = $data['order_status_id'];
		}
		$data['modified_date'] = JFactory::getDate()->toSql();
		parent::store($data);
		$row->load($data['id']);
		
		if ($orderStatusChanged)
		{
		    $updateInventory = false;

		    //Check to update Inventory
		    if (strpos($row->payment_method, 'os_offline') !== false)
		    {
		        //Offline payment plugin
		        if ($orderStatusTo == EshopHelper::getConfigValue('canceled_status_id'))
		        {
		            $updateInventory = true;
		            $updateType = '+';
		        }
		        elseif ($orderStatusFrom == EshopHelper::getConfigValue('canceled_status_id'))
		        {
		            $updateInventory = true;
		            $updateType = '-';
		        }
		    }
		    else 
		    {
		        //Online payment plugin
		        if ($orderStatusTo == EshopHelper::getConfigValue('complete_status_id'))
		        {
		            $updateInventory = true;
		            $updateType = '-';
		        }
		        elseif ($orderStatusFrom == EshopHelper::getConfigValue('complete_status_id') && $orderStatusTo == EshopHelper::getConfigValue('canceled_status_id'))
		        {
		            $updateInventory = true;
		            $updateType = '+';
		        }
		    }
		    
		    if ($updateInventory)
		    {
		      EshopHelper::updateInventory($row, $updateType);
		    }
		    
			if ($data['order_status_id'] == EshopHelper::getConfigValue('complete_status_id'))
			{
				JPluginHelper::importPlugin('eshop');
				JFactory::getApplication()->triggerEvent('onAfterCompleteOrder', array($row));
			}
			
			if ($input->getInt('send_notification_email'))
			{
				$mailer = JFactory::getMailer();
				$sendFrom = EshopHelper::getSendFrom();
				$fromName = $sendFrom['from_name'];
				$fromEmail = $sendFrom['from_email'];
				$subject = EshopHelper::getMessageValue('order_status_change_subject', $row->language);
				$subject = str_replace('[STORE_NAME]', EshopHelper::getConfigValue('store_name'), $subject);
				$subject = str_replace('[ORDER_STATUS_FROM]', EshopHelper::getOrderStatusName($orderStatusFrom, $row->language), $subject);
				$subject = str_replace('[ORDER_STATUS_TO]', EshopHelper::getOrderStatusName($orderStatusTo, $row->language), $subject);
				$subject = str_replace('[ORDER_ID]', $row->id, $subject);
				$subject = str_replace('[ORDER_NUMBER]', $row->order_number, $subject);
				$body = EshopHelper::getNotificationEmailBody($row, $orderStatusFrom, $orderStatusTo);
				$body = EshopHelper::convertImgTags($body);
				$mailer->ClearAllRecipients();
				$attachment = null;
				
				if (EshopHelper::isInvoiceAvailable($row, '0', true))
				{
					if (!$row->invoice_number)
					{
						$row->invoice_number = EShopHelper::getInvoiceNumber();
						$row->store();
					}
					if (!JFile::exists(JPATH_ROOT . '/media/com_eshop/invoices/' . EShopHelper::formatInvoiceNumber($row->invoice_number, $row->created_date) . '.pdf'))
					{
						EshopHelper::generateInvoicePDF(array($row->id));
					}
					$attachment = JPATH_ROOT . '/media/com_eshop/invoices/' . EShopHelper::formatInvoiceNumber($row->invoice_number, $row->created_date) . '.pdf';
				}
				
				$mailer->sendMail($fromEmail, $fromName, $row->email, $subject, $body, 1, null, null, $attachment);
			}
		}
		
		if ($input->getInt('send_shipping_notification_email') && $input->getString('shipping_tracking_number') != '' && $input->getString('shipping_tracking_url') != '')
		{
			$mailer = JFactory::getMailer();
			$sendFrom = EshopHelper::getSendFrom();
			$fromName = $sendFrom['from_name'];
			$fromEmail = $sendFrom['from_email'];
			$subject = EshopHelper::getMessageValue('shipping_notification_email_subject', $row->language);
			$body = EshopHelper::getShippingNotificationEmailBody($row);
			$body = EshopHelper::convertImgTags($body);
			$mailer->ClearAllRecipients();
			$mailer->sendMail($fromEmail, $fromName, $row->email, $subject, $body, 1);
		}
		
		return true;
	}
	
	/**
	 * Method to remove orders
	 *
	 * @access	public
	 * @return boolean True on success
	 * @since	1.5
	 */
	public function delete($cid = array())
	{
		if (count($cid))
		{
		    //Update Inventory first
		    foreach ($cid as $id)
		    {
		        $row = JTable::getInstance('Eshop', 'Order');
		        $row->load($id);
		        EshopHelper::updateInventory($row, '+');
		    }
		    
		    $cids = implode(',', $cid);
		    
			$db = $this->getDbo();
			$query = $db->getQuery(true);
			
			$query->delete('#__eshop_orders')
				->where('id IN (' . $cids . ')');
			$db->setQuery($query);
			
			if (!$db->execute())
			{
				//Removed error
				return 0;
			}
			
			$numItemsDeleted = $db->getAffectedRows();
			
			//Delete order products
			$query->clear();
			$query->delete('#__eshop_orderproducts')
				->where('order_id IN (' . $cids . ')');
			$db->setQuery($query);
			
			if (!$db->execute())
			{
				//Removed error
				return 0;
			}
			
			//Delete order totals
			$query->clear();
			$query->delete('#__eshop_ordertotals')
				->where('order_id IN (' . $cids . ')');
			$db->setQuery($query);
			
			if (!$db->execute())
			{
				//Removed error
				return 0;
			}
			
			//Delete order options
			$query->clear();
			$query->delete('#__eshop_orderoptions')
				->where('order_id IN (' . $cids . ')');
			$db->setQuery($query);
			
			if (!$db->execute())
			{
				//Removed error
				return 0;
			}
			
			//Delete order downloads
			$query->clear();
			$query->delete('#__eshop_orderdownloads')
				->where('order_id IN (' . $cids . ')');
			$db->setQuery($query);
			
			if (!$db->execute())
			{
				//Removed error
				return 0;
			}
			
			if ($numItemsDeleted < count($cid))
			{
				//Removed warning
				return 2;
			}
		}
		//Removed success
		return 1;
	}
	
	/**
	 * 
	 * Function to download file
	 * @param int $id
	 */
	function downloadFile($id, $download = true)
	{
		$app = JFactory::getApplication();
		$db = $this->getDbo();
		$query = $db->getQuery(true);
		$query->select('option_value')
			->from('#__eshop_orderoptions')
			->where('id = ' . intval($id));
		$db->setQuery($query);
		$filename = $db->loadResult();
		while (@ob_end_clean());
		EshopHelper::processDownload(JPATH_ROOT . '/media/com_eshop/files/' . $filename, $filename, $download);
		$app->close(0);
	}
}