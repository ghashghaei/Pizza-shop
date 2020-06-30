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
 * HTML View class for EShop component
 *
 * @static
 * @package		Joomla
 * @subpackage	EShop
 * @since 1.5
 */
class EshopViewOrders extends EShopViewList
{
	function _buildListArray(&$lists, $state)
	{
		$input = JFactory::getApplication()->input;
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		
		//Products list
		$query->clear();
		$query->select('a.id AS value, b.product_name AS text')
		->from('#__eshop_products AS a')
		->innerJoin('#__eshop_productdetails AS b ON (a.id = b.product_id)')
		->where('a.published = 1')
		->where('b.language = "' . JComponentHelper::getParams('com_languages')->get('site', 'en-GB') . '"')
		->order('b.product_name');
		$db->setQuery($query);
		$rows = $db->loadObjectList();
		$options = array();
		$options[] = JHtml::_('select.option', '0', JText::_('ESHOP_PRODUCT_ALL'));
		
		if (count($rows))
		{
		    $options = array_merge($options, $rows);
		}
		
		$lists['product_id'] = JHtml::_('select.genericlist', $options, 'product_id',
		    array(
		        'option.text.toHtml' => false,
		        'option.value' => 'value',
		        'option.text' => 'text',
		        'list.attr' => ' class="inputbox" onchange="this.form.submit();" ',
		        'list.select' => $input->get('product_id')));
		
		//Manufacturers list
        $query->clear()
            ->select('a.id AS value, b.manufacturer_name AS text')
            ->from('#__eshop_manufacturers AS a')
            ->innerJoin('#__eshop_manufacturerdetails AS b ON (a.id = b.manufacturer_id)')
            ->where('b.language = "' . JComponentHelper::getParams('com_languages')->get('site', 'en-GB') . '"')
            ->order('b.manufacturer_name');
        $db->setQuery($query);
        $rows = $db->loadObjectList();
        $options = array();
        $options[] = JHtml::_('select.option', '0', JText::_('ESHOP_MANUFACTURER_ALL'));
		
		if (count($rows))
		{
            $options = array_merge($options, $rows);
		}
		
        $lists['manufacturer_id'] = JHtml::_('select.genericlist', $options, 'manufacturer_id',
            array(
                'option.text.toHtml' => false,
                'option.value' => 'value',
                'option.text' => 'text',
                'list.attr' => ' class="inputbox" onchange="this.form.submit();" ',
                'list.select' => $input->get('manufacturer_id')));
		
        //Payment methods list
        $query->clear()
            ->select('name AS value, title AS text')
            ->from('#__eshop_payments')
            ->where('published = 1')
            ->order('title');
        $db->setQuery($query);
        $rows = $db->loadObjectList();
        
        if (count($rows))
        {
            foreach ($rows as $key => $row)
            {
                $rows[$key]->text = JText::_($row->text);
            }
        }
        
        $options = array();
        $options[] = JHtml::_('select.option', '', JText::_('ESHOP_PAYMENT_METHOD_ALL'));
		    
        if (count($rows))
        {
            $options = array_merge($options, $rows);
        }

        $lists['payment_method'] = JHtml::_('select.genericlist', $options, 'payment_method',
            array(
                'option.text.toHtml' => false,
                'option.value' => 'value',
                'option.text' => 'text',
                'list.attr' => ' class="inputbox" onchange="this.form.submit();" ',
                'list.select' => $input->getString('payment_method')));
		
		//Order Statuses list
		$query->clear()
            ->select('a.id AS value, b.orderstatus_name AS text')
			->from('#__eshop_orderstatuses AS a')
			->innerJoin('#__eshop_orderstatusdetails AS b ON (a.id = b.orderstatus_id)')
			->where('a.published = 1')
			->where('b.language = "' . JComponentHelper::getParams('com_languages')->get('site', 'en-GB') . '"')
            ->order('b.orderstatus_name');
		$db->setQuery($query);
		$options = array();
		$options[] = JHtml::_('select.option', 0, JText::_('ESHOP_ORDERSSTATUS_ALL'));
		$options = array_merge($options, $db->loadObjectList());
		$lists['order_status_id'] = JHtml::_('select.genericlist', $options, 'order_status_id', ' class="inputbox" style="width: 150px;" onchange="this.form.submit();"', 'value', 'text', $input->getInt('order_status_id', 0));
		
		//Shipping methods list
		$query->clear()
		  ->select('DISTINCT(title) AS value, title AS text')
		  ->from('#__eshop_ordertotals')
		  ->where('name = "shipping"')
		  ->order('title');
		$db->setQuery($query);
		$options = array();
		$options[] = JHtml::_('select.option', '', JText::_('ESHOP_SHIPPING_METHOD_ALL'));
		$options = array_merge($options, $db->loadObjectList());
		$lists['shipping_method'] = JHtml::_('select.genericlist', $options, 'shipping_method', ' class="inputbox" style="width: 200px;" onchange="this.form.submit();"', 'value', 'text', $input->getstring('shipping_method', ''));
		
		$nullDate = $db->getNullDate();
		$this->nullDate = $nullDate;
		$currency = new EshopCurrency();
		$this->currency = $currency;
	}
	
	/**
	 * Override Build Toolbar function, only need Delete, Edit and Download Invoice
	 */
	function _buildToolbar()
	{
		$viewName = $this->getName();
		$controller = EShopInflector::singularize($this->getName());
		JToolBarHelper::title(JText::_($this->lang_prefix.'_'.strtoupper($viewName)));
		JToolBarHelper::deleteList(JText::_($this->lang_prefix . '_DELETE_' . strtoupper($this->getName()) . '_CONFIRM'), $controller . '.remove');
		JToolBarHelper::editList($controller.'.edit');
		
		if (EshopHelper::getConfigValue('invoice_enable'))
		{
			JToolBarHelper::custom($controller.'.downloadInvoice', 'print', 'print', JText::_('ESHOP_DOWNLOAD_INVOICE'), true);
		}
		
		JToolbarHelper::custom($controller.'.downloadCSV', 'download', 'download', JText::_('ESHOP_DOWNLOAD_CSV'), true);
		JToolbarHelper::custom($controller.'.downloadXML', 'download', 'download', JText::_('ESHOP_DOWNLOAD_XML'), true);
	}
}