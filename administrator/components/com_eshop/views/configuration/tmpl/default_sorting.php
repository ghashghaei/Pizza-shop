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
?>
<legend><?php echo JText::_('ESHOP_CONFIG_PRODUCT_SORTING'); ?></legend>
<div class="control-group">
	<div class="control-label">
		<?php echo EshopHtmlHelper::getFieldLabel('default_sorting', JText::_('ESHOP_CONFIG_PRODUCT_DEFAULT_SORTING')); ?>
	</div>
	<div class="controls">
		<?php echo $this->lists['default_sorting']; ?>
	</div>
</div>
<table class="admintable adminform" width="90%" style="margin-bottom: 20px;">
	<tr>
		<?php
		for ($i = 0; $n = count($this->sortValues), $i < $n; $i++)
		{
			?>
			<td width="25%">
				<label class="checkbox">
					<input <?php echo (in_array($this->sortValues[$i], $this->sortOptions) ? 'checked' : ''); ?> type="checkbox" name="sort_options[]" value="<?php echo $this->sortValues[$i]; ?>"><?php echo $this->sortTexts[$i]; ?>
				</label>
			</td>	
			<?php
			if (($i + 1) % 4 == 0)
			{
				?>
				</tr>
				<tr>
				<?php
			}
		}
		?>
	</tr>
</table>
<legend><?php echo JText::_('ESHOP_CONFIG_OTHER_SORTING'); ?></legend>
<div class="control-group">
	<div class="control-label">
		<?php echo EshopHtmlHelper::getFieldLabel('category_default_sorting', JText::_('ESHOP_CONFIG_CATEGORY_DEFAULT_SORTING')); ?>
	</div>
	<div class="controls">
		<?php echo $this->lists['category_default_sorting']; ?>
	</div>
</div>
<div class="control-group">
	<div class="control-label">
		<?php echo EshopHtmlHelper::getFieldLabel('manufacturer_default_sorting', JText::_('ESHOP_CONFIG_MANUFACTURER_DEFAULT_SORTING')); ?>
	</div>
	<div class="controls">
		<?php echo $this->lists['manufacturer_default_sorting']; ?>
	</div>
</div>
<div class="control-group">
	<div class="control-label">
		<?php echo EshopHtmlHelper::getFieldLabel('option_default_sorting', JText::_('ESHOP_CONFIG_OPTION_DEFAULT_SORTING')); ?>
	</div>
	<div class="controls">
		<?php echo $this->lists['option_default_sorting']; ?>
	</div>
</div>
<div class="control-group">
	<div class="control-label">
		<?php echo EshopHtmlHelper::getFieldLabel('option_value_default_sorting', JText::_('ESHOP_CONFIG_OPTION_VALUE_DEFAULT_SORTING')); ?>
	</div>
	<div class="controls">
		<?php echo $this->lists['option_value_default_sorting']; ?>
	</div>
</div>
<div class="control-group">
	<div class="control-label">
		<?php echo EshopHtmlHelper::getFieldLabel('attribute_default_sorting', JText::_('ESHOP_CONFIG_ATTRIBUTE_DEFAULT_SORTING')); ?>
	</div>
	<div class="controls">
		<?php echo $this->lists['attribute_default_sorting']; ?>
	</div>
</div>