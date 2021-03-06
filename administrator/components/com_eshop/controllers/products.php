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
class EShopControllerProducts extends JControllerLegacy
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
	 * Function to process batch products
	 */
	function batch()
	{
		$input = new RADInput();
		$post  = $input->post->getData(RAD_INPUT_ALLOWRAW);
		$model = $this->getModel('products');
		$ret = $model->batch($post);
		
		if ($ret)
		{
			$msg = JText::_('ESHOP_BATCH_PRODUCT_SUCCESSFULLY');
		}
		else
		{
			$msg = JText::_('ESHOP_BATCH_PRODUCT_ERROR');
		}
		
		$this->setRedirect('index.php?option=com_eshop&view=products', $msg);
	}
	
	/**
	 * 
	 * Function to save products inventory
	 */
	function saveInventory()
	{
	    $input = new RADInput();
	    $post  = $input->post->getData(RAD_INPUT_ALLOWRAW);
	    $model = $this->getModel('products');
	    $ret = $model->saveInventory($post);
	    
	    if ($ret)
	    {
	        $msg = JText::_('ESHOP_SAVE_INVENTORY_SUCCESSFULLY');
	    }
	    else
	    {
	        $msg = JText::_('ESHOP_SAVE_INVENTORY_ERROR');
	    }
	    
	    $this->setRedirect('index.php?option=com_eshop&view=products', $msg);
	}

	/**
	 * 
	 * Cancel function
	 */
	function cancel()
	{
		$this->setRedirect('index.php?option=com_eshop&view=products');
	}
}