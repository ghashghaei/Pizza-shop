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
class EShopViewAttributes extends EShopViewList
{
    
    /**
	 * Build all the lists items used in the form and store it into the array
	 * @param  $lists
	 * @return boolean
	 */
    public function _buildListArray(&$lists, $state)
	{
        $input = JFactory::getApplication()->input;
        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        
        //Build attribute group list
        $query->clear();
        $query->select('a.id AS value, b.attributegroup_name AS text')
            ->from('#__eshop_attributegroups AS a')
            ->innerJoin('#__eshop_attributegroupdetails AS b ON (a.id = b.attributegroup_id)')
            ->where('b.language = "' . JComponentHelper::getParams('com_languages')->get('site', 'en-GB') . '"')
            ->order('b.attributegroup_name');
        $db->setQuery($query);
        $rows = $db->loadObjectList();
        
        $options = array();
        $options[] = JHtml::_('select.option', 0, JText::_('ESHOP_SELECT_AN_ATTRIBUTE_GROUP'), 'value', 'text');
        
        if (count($rows))
        {
            $options = array_merge($options, $rows);
        }
        
        $lists['attributegroup_id'] = JHtml::_('select.genericlist', $options, 'attributegroup_id',
            array(
                'option.text.toHtml' => false,
                'option.value' => 'value',
                'option.text' => 'text',
                'list.attr' => ' class="inputbox chosen" onchange="Joomla.submitform();"',
                'list.select' => $input->get('attributegroup_id')));
        EshopHelper::chosen();
    }
}