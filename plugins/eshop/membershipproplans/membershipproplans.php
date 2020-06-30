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

class plgEshopMembershipproplans extends JPlugin
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

		JFactory::getLanguage()->load('plg_eshop_membershipproplans', JPATH_ADMINISTRATOR);
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

		return array('title' => JText::_('PLG_ESHOP_MEMBERSHIPPRO_PLANS'),
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
		$params->set('product_membershippro_plans', implode(',', $data['product_membershippro_plans']));
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
	    require_once JPATH_ADMINISTRATOR . '/components/com_osmembership/loader.php';
	    
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
	        $planIds = explode(',', $params->get('product_membershippro_plans', ''));
	        
	        if (count($planIds))
	        {
	            foreach ($planIds as $planId)
	            {
	                $data = [
	                    'plan_id'    => $planId,
	                    'user_id'    => $row->customer_id,
	                    'first_name' => $row->firstname,
	                    'last_name'  => $row->lastname,
	                    'email'      => $row->email,
	                ];
	                
	                $model = new OSMembershipModelApi();

	                try
	                {
	                    $model->store($data);
	                }
	                catch (Exception $e)
	                {
	                    // Ignore error for now
	                }       
	            }
	        }
	    }
	}

	/**
	 * Display form allows users to change settings on event add/edit screen
	 *
	 * @param EshopTableProduct $row
	 */
	private function drawSettingForm($row)
	{
		$query = $this->db->getQuery(true);
		$query->select('id AS value, title AS text')
			->from('#__osmembership_plans')
			->where('published = 1');
		$this->db->setQuery($query);
		
		$params = new Registry($row->params);
		
		if ($row->id)
		{
		    $selectedItems = explode(',', $params->get('product_membershippro_plans', ''));
		}
		else
		{
		    $selectedItems = array();
		}
		
		$list = JHtml::_('select.genericlist', $this->db->loadObjectList(), 'product_membershippro_plans[]',
			array(
				'option.text.toHtml' => false,
				'option.text'        => 'text',
				'option.value'       => 'value',
				'list.attr'          => ' class="inputbox chosen" multiple ',
				'list.select'        => $selectedItems));
		?>
		<div class="control-group">
        	<div class="control-label">
        		<?php echo JText::_('PLG_ESHOP_MEMBERSHIPPRO_PLANS'); ?>
        	</div>
        	<div class="controls">
        		<?php echo $list; ?>
        	</div>
        </div>
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
		if (!file_exists(JPATH_ROOT . '/components/com_osmembership/osmembership.php'))
		{
			return false;
		}

		return true;
	}
}
