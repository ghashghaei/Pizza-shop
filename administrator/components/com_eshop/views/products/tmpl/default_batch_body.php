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
defined('_JEXEC') or die;
$published = $this->state->get('filter.published');
?>
<script type="text/javascript" language="javascript">
	function check(cb, tb)
	{
		if(document.getElementById(cb).checked)
		{
			document.getElementById(tb).disabled = false;
		}
		else document.getElementById(tb).disabled = true;
	}
	function check_boolean(cb, tb)
	{
		if(document.getElementById(cb).checked)
		{
			document.getElementById(tb+'0').disabled = false;
			document.getElementById(tb+'1').disabled = false;
		}
		else
		{
			document.getElementById(tb+'0').disabled = true;
			document.getElementById(tb+'1').disabled = true;
		}
	}
</script>

<div class="row-fluid">
	<div class="control-group span3">
		<div>
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_MANUFACTURER'); ?>
		</div>
		<div>
			<?php echo $this->lists['manufacturer']; ?>
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_MAIN_CATEGORY'); ?>
		</div>
		<div>
			<?php echo $this->lists['main_category_id']; ?>
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_ADDITIONAL_CATEGORIES'); ?>
		</div>
		<div>
			<?php echo $this->lists['additional_category_id']; ?>
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_CUSTOMERGROUPS'); ?>
		</div>
		<div>
			<?php echo $this->lists['product_customergroups']; ?>
		</div>
	</div>
</div>
<div class="row-fluid">
	<div class="control-group span3">
		<div>
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_OUT_OF_STOCK_STATUS'); ?>
		</div>
		<div>
			<?php echo $this->lists['product_stock_status_id']; ?>
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_LENGTH_UNIT'); ?>
		</div>
		<div>
			<?php echo $this->lists['product_length_id']; ?>
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_WEIGHT_UNIT'); ?>
		</div>
		<div>
			<?php echo $this->lists['product_weight_id']; ?>
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_TAX'); ?>
		</div>
		<div>
			<?php echo $this->lists['product_taxclass_id']; ?>
		</div>
	</div>
</div>
<div class="row-fluid">
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_price" id="chkb_product_price" onchange="check('chkb_product_price', 'product_price');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_PRICE'); ?>
		</div>
		<div>
			<input class="input-medium" type="text" name="product_price" id="product_price" size="" maxlength="250" value="" disabled />
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_length" id="chkb_product_length" onchange="check('chkb_product_length', 'product_length');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_LENGTH'); ?>
		</div>
		<div>
			<input class="input-medium" type="text" name="product_length" id="product_length" size="" maxlength="250" value="" disabled />
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_width" id="chkb_product_width" onchange="check('chkb_product_width', 'product_width');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_WIDTH'); ?>
		</div>
		<div>
			<input class="input-medium" type="text" name="product_width" id="product_width" size="" maxlength="250" value="" disabled />
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_height" id="chkb_product_height" onchange="check('chkb_product_height', 'product_height');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_HEIGHT'); ?>
		</div>
		<div>
			<input class="input-medium" type="text" name="product_height" id="product_height" size="" maxlength="250" value="" disabled />
		</div>
	</div>
</div>
<div class="row-fluid">
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_weight" id="chkb_product_weight" onchange="check('chkb_product_weight', 'product_weight');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_WEIGHT'); ?>
		</div>
		<div>
			<input class="input-medium" type="text" name="product_weight" id="product_weight" size="" maxlength="250" value="" disabled />
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_quantity" id="chkb_product_quantity" onchange="check('chkb_product_quantity', 'product_quantity');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_QUANTITY'); ?>
		</div>
		<div>
			<input class="input-medium" type="text" name="product_quantity" id="product_quantity" size="" maxlength="250" value="" disabled />
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_threshold" id="chkb_product_threshold" onchange="check('chkb_product_threshold', 'product_threshold');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_THRESHOLD'); ?>
		</div>
		<div>
			<input class="input-medium" type="text" name="product_threshold" id="product_threshold" size="" maxlength="250" value="" disabled />
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_shipping_cost" id="chkb_product_shipping_cost" onchange="check('chkb_product_shipping_cost', 'product_shipping_cost');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_SHIPPING_COST'); ?>
		</div>
		<div>
			<input class="input-medium" type="text" name="product_shipping_cost" id="product_shipping_cost" size="" maxlength="250" value="" disabled />
		</div>
	</div>
</div>
<div class="row-fluid">
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_minimum_quantity" id="chkb_product_minimum_quantity" onchange="check('chkb_product_minimum_quantity', 'product_minimum_quantity');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_MINIMUM_QUANTITY'); ?>
		</div>
		<div>
			<input class="input-medium" type="text" name="product_minimum_quantity" id="product_minimum_quantity" size="" maxlength="250" value="" disabled />
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_maximum_quantity" id="chkb_product_maximum_quantity" onchange="check('chkb_product_maximum_quantity', 'product_maximum_quantity');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_MAXIMUM_QUANTITY'); ?>
		</div>
		<div>
			<input class="input-medium" type="text" name="product_maximum_quantity" id="product_maximum_quantity" size="" maxlength="250" value="" disabled />
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_available_date" id="chkb_product_available_date" onchange="check('chkb_product_available_date', 'product_available_date');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_AVAILABLE_DATE'); ?>
		</div>
		<div>
			<?php echo JHtml::_('calendar', JHtml::_('date', '0000-00-00', 'Y-m-d', null), 'product_available_date', 'product_available_date', '%Y-%m-%d', array('style' => 'width: 50px')); ?>
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_end_date" id="chkb_product_end_date" onchange="check('chkb_product_end_date', 'product_end_date');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_END_DATE'); ?>
		</div>
		<div>
			<?php echo JHtml::_('calendar', JHtml::_('date', '0000-00-00', 'Y-m-d', null), 'product_end_date', 'product_end_date', '%Y-%m-%d', array('style' => 'width: 50px')); ?>
		</div>
	</div>	
</div>
<div class="row-fluid">
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_shipping" id="chkb_product_shipping" onchange="check_boolean('chkb_product_shipping', 'product_shipping');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_REQUIRE_SHIPPING'); ?>
		</div>
		<div>
			<?php echo $this->lists['product_shipping']; ?>
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_call_for_price" id="chkb_product_call_for_price" onchange="check_boolean('chkb_product_call_for_price', 'product_call_for_price');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_CALL_FOR_PRICE'); ?>
		</div>
		<div>
			<?php echo $this->lists['product_call_for_price']; ?>
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_published" id="chkb_product_published" onchange="check_boolean('chkb_product_published', 'product_published');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_PUBLISHED'); ?>
		</div>
		<div>
			<?php echo $this->lists['product_published']; ?>
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_featured" id="chkb_product_featured" onchange="check_boolean('chkb_product_featured', 'product_featured');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_FEATURED'); ?>
		</div>
		<div>
			<?php echo $this->lists['product_featured']; ?>
		</div>
	</div>
</div>
<div class="row-fluid">
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_quote_mode" id="chkb_product_quote_mode" onchange="check_boolean('chkb_product_quote_mode', 'product_quote_mode');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_QUOTE_MODE'); ?>
		</div>
		<div>
			<?php echo $this->lists['product_quote_mode']; ?>
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_manage_stock" id="chkb_product_manage_stock" onchange="check_boolean('chkb_product_manage_stock', 'product_manage_stock');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_MANAGE_STOCK'); ?>
		</div>
		<div>
			<?php echo $this->lists['product_manage_stock']; ?>
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_stock_display" id="chkb_product_stock_display" onchange="check_boolean('chkb_product_stock_display', 'product_stock_display');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_STOCK_DISPLAY'); ?>
		</div>
		<div>
			<?php echo $this->lists['product_stock_display']; ?>
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_stock_warning" id="chkb_product_stock_warning" onchange="check_boolean('chkb_product_stock_warning', 'product_stock_warning');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_STOCK_WARNING'); ?>
		</div>
		<div>
			<?php echo $this->lists['product_stock_warning']; ?>
		</div>
	</div>
</div>
<div class="row-fluid">
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_stock_checkout" id="chkb_product_stock_checkout" onchange="check_boolean('chkb_product_stock_checkout', 'product_stock_checkout');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_STOCK_CHECKOUT'); ?>
		</div>
		<div>
			<?php echo $this->lists['product_stock_checkout']; ?>
		</div>
	</div>
	<div class="control-group span3">
		<div>
			<input type="checkbox" name="chkb_product_inventory_global" id="chkb_product_inventory_global" onchange="check_boolean('chkb_product_inventory_global', 'product_inventory_global');" />
			<?php echo JText::_('ESHOP_BATCH_PRODUCTS_INVENTORY_GLOBAL'); ?>
		</div>
		<div>
			<?php echo $this->lists['product_inventory_global']; ?>
		</div>
	</div>
</div>