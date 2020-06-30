<?php

// no direct access
defined( '_JEXEC' ) or die();

if (isset($this->success))
{
	?>
	<script>
	var notifications = UIkit.notification('<?php echo $this->success; ?>', {
		pos: 'top-right',
		status: 'primary'
		});
	</script>
	<?php
}
?>

<?php
if (EshopHelper::getConfigValue('customer_manage_account', '1') || EshopHelper::getConfigValue('customer_manage_order', '1') || EshopHelper::getConfigValue('customer_manage_download', '1') || EshopHelper::getConfigValue('customer_manage_address', '1'))
{
	?>
<div class="uk-container">
<div class="uk-grid-margin" uk-grid>
<div class="uk-width-1-1@m">
<div class="uk-margin uk-text-center">
<div class="uk-grid-small uk-child-width-1-2 uk-child-width-1-3@s uk-child-width-1-4@m uk-child-width-1-5@l uk-child-width-1-5@xl uk-grid-match" uk-grid>

<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php/customer">
<span class="el-image uk-text-muted" uk-icon="icon: home; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_MY_ACCOUNT'); ?></div>
</a>
</div>
		<?php
		}
		if (EshopHelper::getConfigValue('customer_manage_order', '1'))
		{
			?>
<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php/customer/order-history">
<span class="el-image uk-text-primary" uk-icon="icon: cart; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_ORDER_HISTORY'); ?></div>
</a>
</div>
		<?php
		}
		if (EshopHelper::getConfigValue('customer_manage_download', '1'))
		{
			?>
<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php/customer/downloads">
<span class="el-image uk-text-primary" uk-icon="icon: download; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_DOWNLOADS'); ?></div>
</a>
</div>
		<?php
		}
		if (EshopHelper::getConfigValue('customer_manage_address', '1'))
		{
			?>
<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php/customer/addresses">
<span class="el-image uk-text-primary" uk-icon="icon: location; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_MODIFY_ADDRESS'); ?></div>
</a>
</div>
		<?php
		if (EshopHelper::getConfigValue('customer_manage_account', '1'))
		{
			?>
<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php/customer/edit-account">
<span class="el-image uk-text-primary" uk-icon="icon: user; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_EDIT_ACCOUNT'); ?></div>
</a>
</div>
		<?php
		}
		?>
</div>
</div>
</div>
</div>
</div>
	<?php
}
else 
{
	echo JText::_('ESHOP_CUSTOMER_PAGE_NOT_AVAILABLE');
}
?>
<div class="uk-tile uk-tile-muted uk-padding uk-margin-large-top">
<h3 class="uk-text-success"><?php echo JText::_('ESHOP_MY_ACCOUNT'); ?></h3>
</div>

