<?php
/**
 * @version        3.3.0
 * @package        Joomla
 * @subpackage     EShop
 * @author         Giang Dinh Truong
 * @copyright      Copyright (C) 2012 Ossolution Team
 * @license        GNU/GPL, see LICENSE.php
 */

// no direct access
defined('_JEXEC') or die();

$rootUri = JUri::root();
?>
<div class="control-group">
	<div class="control-label">
		<?php echo EshopHtmlHelper::getFieldLabel('product_manage_stock', JText::_('ESHOP_PRODUCT_MANAGE_STOCK'), JText::_('ESHOP_PRODUCT_MANAGE_STOCK_HELP')); ?>
	</div>
	<div class="controls">
		<?php echo $this->lists['product_manage_stock']; ?>
	</div>
</div>
<div class="control-group">
	<div class="control-label">
		<?php echo EshopHtmlHelper::getFieldLabel('product_stock_display', JText::_('ESHOP_PRODUCT_DISPLAY_STOCK'), JText::_('ESHOP_PRODUCT_DISPLAY_STOCK_HELP')); ?>
	</div>
	<div class="controls">
		<?php echo $this->lists['product_stock_display']; ?>
	</div>
</div>
<div class="control-group">
	<div class="control-label">
		<?php echo EshopHtmlHelper::getFieldLabel('product_stock_warning', JText::_('ESHOP_PRODUCT_STOCK_WARNING'), JText::_('ESHOP_PRODUCT_STOCK_WARNING_HELP')); ?>
	</div>
	<div class="controls">
		<?php echo $this->lists['product_stock_warning']; ?>
	</div>
</div>
<div class="control-group">
	<div class="control-label">
		<?php echo EshopHtmlHelper::getFieldLabel('product_quantity', JText::_('ESHOP_PRODUCT_QUANTITY')); ?>
	</div>
	<div class="controls">
		<input class="input-small" type="text" name="product_quantity" id="product_quantity" size="" maxlength="250" value="<?php echo $this->item->product_quantity; ?>" />
	</div>
</div>
<div class="control-group">
	<div class="control-label">
		<?php echo EshopHtmlHelper::getFieldLabel('product_threshold', JText::_('ESHOP_PRODUCT_THRESHOLD'), JText::_('ESHOP_PRODUCT_THRESHOLD_HELP')); ?>
	</div>
	<div class="controls">
		<input class="input-small" type="text" name="product_threshold" id="product_threshold" size="" maxlength="250" value="<?php echo $this->item->product_threshold; ?>" />
	</div>
</div>
<div class="control-group">
	<div class="control-label">
		<?php echo EshopHtmlHelper::getFieldLabel('product_stock_checkout', JText::_('ESHOP_PRODUCT_STOCK_CHECKOUT'), JText::_('ESHOP_PRODUCT_STOCK_CHECKOUT_HELP')); ?>
	</div>
	<div class="controls">
		<?php echo $this->lists['product_stock_checkout']; ?>
	</div>
</div>
<div class="control-group">
	<div class="control-label">
		<?php echo EshopHtmlHelper::getFieldLabel('product_stock_status_id', JText::_('ESHOP_OUT_OF_STOCK_STATUS'), JText::_('ESHOP_OUT_OF_STOCK_STATUS_HELP')); ?>
	</div>
	<div class="controls">
		<?php echo $this->lists['product_stock_status_id']; ?>
	</div>
</div>
<div class="control-group">
	<div class="control-label">
		<?php echo EshopHtmlHelper::getFieldLabel('product_inventory_global', JText::_('ESHOP_PRODUCT_INVENTORY_GLOBAL'), JText::_('ESHOP_PRODUCT_INVENTORY_GLOBAL_HELP')); ?>
	</div>
	<div class="controls">
		<?php echo $this->lists['product_inventory_global']; ?>
	</div>
</div>