<?php

// no direct access
defined( '_JEXEC' ) or die();

$language = JFactory::getLanguage();
$tag = $language->getTag();
$bootstrapHelper        = $this->bootstrapHelper;
$rowFluidClass          = $bootstrapHelper->getClassMapping('row-fluid');
$span2Class             = $bootstrapHelper->getClassMapping('span2');
$pullLeftClass          = $bootstrapHelper->getClassMapping('pull-left');
$btnClass				= $bootstrapHelper->getClassMapping('btn');

if (!$tag)
{
	$tag = 'en-GB';
}

if (isset($this->warning))
{
	?>
	<script>
	var notifications = UIkit.notification('<?php echo $this->warning; ?>', {
		pos: 'top-right',
		status: 'warning'
		});
	</script>
	<?php
}
?>



<div class="uk-container">
<div class="uk-grid-margin" uk-grid>
<div class="uk-width-1-1@m">
<div class="uk-margin uk-text-center">
<div class="uk-grid-small uk-child-width-1-2 uk-child-width-1-3@s uk-child-width-1-4@m uk-child-width-1-5@l uk-child-width-1-5@xl uk-grid-match" uk-grid>

<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php/customer">
<span class="el-image uk-text-primary" uk-icon="icon: home; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_MY_ACCOUNT'); ?></div>
</a>
</div>

<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php/customer/order-history">
<span class="el-image uk-text-muted" uk-icon="icon: cart; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_ORDER_HISTORY'); ?></div>
</a>
</div>

<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php/customer/downloads">
<span class="el-image uk-text-primary" uk-icon="icon: download; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_DOWNLOADS'); ?></div>
</a>
</div>

<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php/customer/addresses">
<span class="el-image uk-text-primary" uk-icon="icon: location; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_MODIFY_ADDRESS'); ?></div>
</a>
</div>

<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php/customer/edit-account">
<span class="el-image uk-text-primary" uk-icon="icon: user; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_EDIT_ACCOUNT'); ?></div>
</a>
</div>

</div>
</div>
</div>
</div>
</div>


<div class="uk-tile uk-tile-muted uk-padding uk-margin-large-top">

<h3 class="uk-text-success"><?php echo JText::_('ESHOP_ORDER_HISTORY'); ?></h3>
<?php
if (!count($this->orders))
{
	?>
	<div class="no-content"><?php echo JText::_('ESHOP_NO_ORDERS'); ?></div>
	<?php
}
else
{
	?>
	
	
<div class="uk-overflow-auto">
<table class="uk-table uk-table-middle uk-table-striped uk-table-hover">

		<form id="adminForm" class="order-list">
		
    <thead>
        <tr>
            <th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_ORDER_ID'); ?></th>
            <th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_STATUS'); ?></th>
            <th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_DATE_ADDED'); ?></th>
            <th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_PRODUCT'); ?></th>
            <th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_TOTAL'); ?></th>
            <th class="uk-text-center uk-text-meta">جزئیات</th>
        </tr>
    </thead>
    <tbody>
		
		
			<?php
			foreach ($this->orders as $order)
			{
				?>



	
	
	
        <tr>
            <td class="uk-text-center">#<?php echo $order->id; ?></td>
            <td class="uk-text-center"><?php echo EshopHelper::getOrderStatusName($order->order_status_id, $tag); ?></td>
            <td class="uk-text-center"><?php echo JHtml::date($order->created_date, EshopHelper::getConfigValue('date_format', 'm-d-Y')); ?></td>
            <td class="uk-text-center"><?php echo EshopHelper::getNumberProduct($order->id); ?></td>
            <td class="uk-text-center"><?php echo $order->total; ?></td>
            <td class="uk-text-center">
				<a class="uk-button uk-button-secondary" href="<?php echo JText::_('index.php/customer/order-details'.'?order_id='.(int)$order->id); ?>"><?php echo JText::_('ESHOP_VIEW'); ?></a>
				<?php
				if (EshopHelper::getConfigValue('allow_re_order'))
				{
					?>
					&nbsp;|&nbsp;
					<a class="uk-button uk-button-primary" href="<?php echo JRoute::_('index.php?option=com_eshop&task=cart.reOrder&order_id='.(int)$order->id); ?>"><?php echo JText::_('ESHOP_RE_ORDER'); ?></a>
					<?php
				}
				if (EshopHelper::isInvoiceAvailable($order, '0', true))
				{
					?>
					&nbsp;|&nbsp;
					<a class="uk-button uk-button-secondary" href="<?php echo JRoute::_('index.php?option=com_eshop&task=customer.downloadInvoice&order_id='.(int)$order->id); ?>"><?php echo JText::_('ESHOP_DOWNLOAD_INVOICE'); ?></a>
					<?php
				}
				?>
			</td>
        </tr>

    </tbody>
	
	
				<?php
			}
			?>
		</form>	
	
	
</table>
</div>
	<?php
}
?>
</div>