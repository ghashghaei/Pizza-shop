<?php
/**
 * @version		3.3.0
 * @package		Joomla
 * @subpackage	EShop
 * @author  	Giang Dinh Truong
 * @copyright	Copyright (C) 2013 Ossolution Team
 * @license		GNU/GPL, see LICENSE.php
 */
// no direct access
defined('_JEXEC') or die();
jimport('joomla.form.formfield');

class JFormFieldEshoporderstatus extends JFormField
{

    /**
     * Element name
     *
     * @access	protected
     * @var		string
     */
    var $_name = 'eshoporderstatus';

    function getInput()
    {
        $orderStatus = EshopHelper::getConfigValue('order_status_id');
        $completeStatus = EshopHelper::getConfigValue('complete_status_id');

        $options                          = array();
        $options[]                        = JHtml::_('select.option', $orderStatus, EshopHelper::getOrderStatusName($orderStatus, JComponentHelper::getParams('com_languages')->get('site', 'en-GB')));
        $options[]                        = JHtml::_('select.option', $completeStatus, EshopHelper::getOrderStatusName($completeStatus, JComponentHelper::getParams('com_languages')->get('site', 'en-GB')));

        $orderStatus = JHtml::_('select.genericlist', $options, $this->name,
            array(
                'option.text.toHtml' => false,
                'option.value' => 'value',
                'option.text' => 'text',
                'list.attr' => ' class="inputbox"',
                'list.select' => $this->value));

        return $orderStatus;
    }
}