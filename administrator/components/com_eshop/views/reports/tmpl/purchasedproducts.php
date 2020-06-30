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
defined( '_JEXEC' ) or die();
JToolBarHelper::title(JText::_('ESHOP_PURCHASED_PRODUCTS_REPORT'), 'generic.png');
JToolBarHelper::cancel('reports.cancel');
$input = JFactory::getApplication()->input;
?>
<form action="index.php?option=com_eshop&view=reports&layout=purchasedproducts" method="post" name="adminForm" id="adminForm" enctype="multipart/form-data">
	<table width="100%">
		<tr>
			<td align="left" width="5%">
				<?php echo JText::_('ESHOP_START_DATE')?>:
			</td>	
			<td align="left" width="15%">	
				<?php echo JHtml::_('calendar', $input->getString('date_start', date('Y-m-d', strtotime(date('Y') . '-' . date('m') . '-01'))), 'date_start', 'date_start', '%Y-%m-%d', array('class' => 'input-small')); ?>
			</td>
			<td align="left" width="5%">	
				<?php echo JText::_('ESHOP_END_DATE')?>:
			</td>
			<td align="left" width="15%">	
				<?php echo JHtml::_('calendar', $input->getString('date_end', date('Y-m-d')), 'date_end', 'date_end', '%Y-%m-%d', array('class' => 'input-small')); ?>
			</td>
			<td>	
				<?php echo JText::_('ESHOP_ORDERSTATUS'); ?>:&nbsp;
				<?php echo $this->lists['order_status_id']; ?>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="this.form.submit();" class="btn"><?php echo JText::_( 'ESHOP_GO' ); ?></button>
			</td>
		</tr>
	</table>
	<table class="adminlist table table-striped">
		<thead>
			<tr>
				<th class="text_left" width="40%">
					<?php echo JText::_('ESHOP_PRODUCT_NAME'); ?>
				</th>
				<th class="text_center" width="15%">
					<?php echo JText::_('ESHOP_PRODUCT_SKU'); ?>
				</th>
				<th class="text_center" width="15%">
					<?php echo JText::_('ESHOP_PRODUCT_QUANTITY'); ?>
				</th>
				<th class="text_center" width="15%">
					<?php echo JText::_('ESHOP_PRODUCT_PROFIT'); ?>
				</th>
				<th class="text_center" width="15%">
					<?php echo JText::_('ESHOP_TOTAL'); ?>
				</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="5">
					<?php echo $this->pagination->getListFooter(); ?>
				</td>
			</tr>
		</tfoot>
		<tbody>
			<?php
			$k = 0;
			$totalPrice = 0;
			$totalProfit = 0;
			
			for ($i = 0, $n = count( $this->items ); $i < $n; $i++)
			{
				$row = &$this->items[$i];
				$totalPrice += $this->tax->calculate($row->total_price, $row->product_taxclass_id, EshopHelper::getConfigValue('tax'));
				$profit = $this->tax->calculate($row->total_price - $row->quantity * $row->product_cost, $row->product_taxclass_id, EshopHelper::getConfigValue('tax'));
				$totalProfit += $profit;
				?>
				<tr class="<?php echo "row$k"; ?>">
					<td class="text_left">																			
						<b><?php echo $row->product_name; ?></b>
						<?php
						$orderOptions = $row->orderOptions;
				
        				for ($j = 0; $m = count($orderOptions), $j < $m; $j++)
        				{
        				    $orderOptionRow = $orderOptions[$j];
        				    
                            if ($j >= 0 && $j < $m)
                            {
                                echo "<br /> - ";
                            }
        
                            echo $orderOptionRow->option_name . ' (' . $orderOptionRow->option_value . ') ' . JText::_('ESHOP_QUANTITY') . ' ' . $orderOptionRow->total_quantity . ' ' . JText::_('ESHOP_TOTAL') . ' ' . $this->currency->format($this->tax->calculate($orderOptionRow->total_quantity * $row->product_price + $orderOptionRow->total_price, $row->product_taxclass_id, EshopHelper::getConfigValue('tax')), EshopHelper::getConfigValue('default_currency_code'));
        				}
        				?>
					</td>																			
					<td class="text_center">
						<?php echo $row->product_sku; ?>
					</td>
					<td class="text_center">
						<?php echo $row->quantity; ?>
					</td>
					<td class="text_center">
						<?php echo $this->currency->format($this->tax->calculate($profit, $row->product_taxclass_id, EshopHelper::getConfigValue('tax')), EshopHelper::getConfigValue('default_currency_code')); ?>
					</td>
					<td class="text_center">
						<?php echo $this->currency->format($this->tax->calculate($row->total_price, $row->product_taxclass_id, EshopHelper::getConfigValue('tax')), EshopHelper::getConfigValue('default_currency_code')); ?>
					</td>
				</tr>
				<?php
				$k = 1 - $k;
			}
			?>
			<tr>
				<td colspan="3"></td>
				<td class="text_center">
					<?php echo $this->currency->format($totalProfit, EshopHelper::getConfigValue('default_currency_code')); ?>
				</td>
				<td class="text_center">
					<?php echo $this->currency->format($totalPrice, EshopHelper::getConfigValue('default_currency_code')); ?>
				</td>
			</tr>
		</tbody>
	</table>
	<?php echo JHtml::_( 'form.token' ); ?>
	<input type="hidden" name="task" value="" />
</form>	