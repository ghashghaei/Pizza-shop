<?php
/**
 * @package            Joomla
 * @subpackage         EShop
 * @author             Giang Dinh Truong
 * @copyright          Copyright (C) 2010 - 2019 Ossolution Team
 * @license            GNU/GPL, see LICENSE.php
 */

// no direct access
defined('_JEXEC') or die;

use Joomla\Registry\Registry;

class plgEshopAcym extends JPlugin
{
	/**
	 * Application object.
	 *
	 * @var    JApplicationCms
	 */
	protected $app;

	/**
	 * Database object.
	 *
	 * @var    JDatabaseDriver
	 */
	protected $db;

	/**
	 * Constructor.
	 *
	 * @param object   $subject
	 * @param Registry $config
	 */
	public function __construct(& $subject, $config)
	{
		parent::__construct($subject, $config);

		JFactory::getLanguage()->load('plg_eshop_acym', JPATH_ADMINISTRATOR);
	}

	/**
	 * Render settings form
	 *
	 * @param EshopTableProduct $row
	 *
	 * @return array
	 */
	public function onEditProduct($row)
	{
		if (!$this->canRun($row))
		{
			return;
		}

		ob_start();
		$this->drawSettingForm($row);

		return array('title' => JText::_('PLG_ESHOP_ACYM_LIST_SETTINGS'),
		             'form'  => ob_get_clean(),
		);
	}

	/**
	 * Store setting into database, in this case, use params field of plans table
	 *
	 * @param EshopTableProduct $row
	 * @param Boolean                $isNew true if create new plan, false if edit
	 */
	public function onAfterSaveProduct($row, $data, $isNew)
	{
		if (!$this->canRun($row))
		{
			return;
		}
		
		$params = new Registry($row->params);
		$params->set('acymailing6_list_ids', implode(',', $data['acymailing6_list_ids']));
		$row->params = $params->toString();
		
		$row->store();
	}

	/**
	 * Run when registration record stored to database
	 *
	 * @param EshopTableOrder $row
	 */
	public function onAfterCompleteOrder($row)
	{
	    if (!$this->canRun($row))
	    {
	        return;
	    }
	    
	    //Get order products
	    $query = $this->db->getQuery(true);
	    $query->select('p.params')
	       ->from('#__eshop_products AS p')
	       ->innerJoin('#__eshop_orderproducts AS op ON (p.id = op.product_id)')
	       ->where('order_id = ' . intval($row->id));
	    $this->db->setQuery($query);
	    $products = $this->db->loadObjectList();
	    
	    for ($i = 0; $n = count($products), $i < $n; $i++)
	    {
	        $params = new Registry($products[$i]->params);
	        $listIds = $params->get('acymailing6_list_ids', '');
	        
	        if ($listIds != '')
	        {
	            $listIds = explode(',', $listIds);
	            $this->subscribeToAcyMailingLists($row, $listIds);
	        }
	        
	        $listIds = explode(',', $params->get('acymailing6_list_ids', ''));
	    }
	}
	
	/**
	 * @param EshopTableOrder $row
	 * @param array $listIds
	 */
	private function subscribeToAcyMailingLists($row, $listIds)
	{
	    if (!JMailHelper::isEmailAddress($row->email))
	    {
	        return;
	    }
	
	    require_once JPATH_ADMINISTRATOR . '/components/com_acym/helpers/helper.php';
	
	    $db    = JFactory::getDbo();
	    $query = $db->getQuery(true);
	
	    /* @var acymuserClass $userClass */
	    $userClass               = acym_get('class.user');
	    $userClass->checkVisitor = false;
	
	    if (method_exists($userClass, 'getOneByEmail'))
	    {
	        $subId = $userClass->getOneByEmail($row->email);
	    }
	    else
	    {
	        $subId = $userClass->getUserIdByEmail($row->email);
	    }
	
	    if (!$subId)
	    {
	        $myUser         = new stdClass();
	        $myUser->email  = $row->email;
	        $myUser->name   = trim($row->firstname . ' ' . $row->lastname);
	        $myUser->cms_id = $row->customer_id;

	        $subId = $userClass->save($myUser);
	    }
	    
	    if (is_object($subId))
	    {
	        $subId = $subId->id;
	    }
	
	    $userClass->subscribe($subId, $listIds);
	}

	/**
	 * Display form allows users to change settings on event add/edit screen
	 *
	 * @param EshopTableProduct $row
	 */
	private function drawSettingForm($row)
	{
		require_once JPATH_ADMINISTRATOR . '/components/com_acym/helpers/helper.php';

		if ($row->id)
		{
			$params  = new Registry($row->params);
			$listIds = explode(',', $params->get('acymailing6_list_ids', ''));
		}
		else
		{
			$listIds = [];
		}

		/* @var acymlistClass $listClass */
		$listClass = acym_get('class.list');
		$allLists  = $listClass->getAllWithIdName();
		?>
        <table class="admintable adminform" style="width: 90%;">
            <tr>
                <td width="220" class="key">
					<?php echo JText::_('PLG_ESHOP_ACYM_LISTS'); ?>
                </td>
                <td>
					<?php echo JHtml::_('select.genericlist', $allLists, 'acymailing6_list_ids[]', 'class="inputbox" multiple="multiple" size="10"', 'id', 'name', $listIds) ?>
                </td>
                <td>
					<?php echo JText::_('PLG_ESHOP_ACYM_LISTS_EXPLAIN'); ?>
                </td>
            </tr>
        </table>
		<?php
	}

	/**
	 * Method to check to see whether the plugin should run
	 *
	 * @param EshopTableProduct $row
	 *
	 * @return bool
	 */
	private function canRun($row)
	{
		if (!file_exists(JPATH_ADMINISTRATOR . '/components/com_acym/acym.php'))
		{
			return false;
		}

		return true;
	}
}
