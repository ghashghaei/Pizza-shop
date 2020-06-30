<?php

// no direct access
defined('_JEXEC') or die();
$span 					= intval(12 / $productsPerRow);
$rowFluidClass          = $bootstrapHelper->getClassMapping('row-fluid');
$spanClass              = $bootstrapHelper->getClassMapping('span' . $span);
$span3Class             = $bootstrapHelper->getClassMapping('span3');
$span9Class             = $bootstrapHelper->getClassMapping('span9');
$hiddenPhoneClass       = $bootstrapHelper->getClassMapping('hidden-phone');
$inputAppendClass       = $bootstrapHelper->getClassMapping('input-append');
$inputPrependClass      = $bootstrapHelper->getClassMapping('input-prepend');
$imgPolaroid            = $bootstrapHelper->getClassMapping('img-polaroid');
$btnClass				= $bootstrapHelper->getClassMapping('btn');
?>
<script src="<?php echo JUri::base(true); ?>/components/com_eshop/assets/colorbox/jquery.colorbox.js" type="text/javascript"></script>
<script src="<?php echo JUri::base(true); ?>/components/com_eshop/assets/js/jquery.cookie.js" type="text/javascript"></script>
<script src="<?php echo JUri::base(true); ?>/components/com_eshop/assets/js/layout.js" type="text/javascript"></script>
<script>
	Eshop.jQuery(function($){
		$(document).ready(function() {	
			changeLayout('<?php echo EshopHelper::getConfigValue('default_products_layout', 'list'); ?>');
		});
	});
</script>
<div id="products-list-container" class="products-list-container block list">

	<?php
	if ($showSortOptions)
	{
	?>
		<form method="post" name="adminForm" id="adminForm" action="<?php echo $actionUrl; ?>">
		<div class="uk-tile-muted uk-tile uk-tile-xsmall uk-padding-small uk-margin-bottom">    
		<div class="uk-float-left">
			<?php
			if ($sort_options)
			{
			?>
				<span class="uk-text-meta uk-visible@l"><?php echo JText::_('ESHOP_SORTING_BY'); ?>:</span>
				<?php echo $sort_options; ?>
			<?php
			}
			?>
		</div>
		<div class="uk-float-right">
			<?php echo $pagination->getLimitBox(); ?>
		</div>

		</div>
		</form>
	<?php					
	}
	?>

<div id="products-list">
<div class="uk-grid-margin" uk-grid>
<div class="uk-flex-auto uk-width-1-1@m">
<div class="uk-margin uk-text-center">
<div class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-2@m uk-child-width-1-3@l uk-child-width-1-3@xl uk-grid-medium" uk-grid>
<?php
	$count = 0;
	foreach ($products as $product)
	{
		$productUrl = JRoute::_(EshopRoute::getProductRoute($product->id, ($catId && EshopHelper::isProductCategory($product->id, $catId)) ? $catId : EshopHelper::getProductCategory($product->id)));
	?>
<div>
<div class="el-item uk-inline-clip uk-transition-toggle" tabindex="0">
<a href="<?php echo $productUrl; ?>" title="<?php echo $product->product_name; ?>">
	<?php
	if (count($product->labels))
	{
		for ($i = 0; $n = count($product->labels), $i < $n; $i++)
		{
			$label = $product->labels[$i];
			if ($label->label_style == 'rotated' && !($label->enable_image && $label->label_image))
			{
				?>
				<div class="cut-rotated">
				<?php
			}
			if ($label->enable_image && $label->label_image)
			{
				$imageWidth = $label->label_image_width > 0 ? $label->label_image_width : EshopHelper::getConfigValue('label_image_width');
				if (!$imageWidth)
					$imageWidth = 50;
				$imageHeight = $label->label_image_height > 0 ? $label->label_image_height : EshopHelper::getConfigValue('label_image_height');
				if (!$imageHeight)
					$imageHeight = 50;
				?>
				<span class="horizontal <?php echo $label->label_position; ?> small-db" style="opacity: <?php echo $label->label_opacity; ?>;<?php echo 'background-image: url(' . $label->label_image . ')'; ?>; background-repeat: no-repeat; width: <?php echo $imageWidth; ?>px; height: <?php echo $imageHeight; ?>px; box-shadow: none;"></span>
				<?php
			}
			else 
			{
				?>
				<span class="<?php echo $label->label_style; ?> <?php echo $label->label_position; ?> small-db" style="background-color: <?php echo '#'.$label->label_background_color; ?>; color: <?php echo '#'.$label->label_foreground_color; ?>; opacity: <?php echo $label->label_opacity; ?>;<?php if ($label->label_bold) echo 'font-weight: bold;'; ?>">
					<?php echo $label->label_name; ?>
				</span>
				<?php
			}
			if ($label->label_style == 'rotated' && !($label->enable_image && $label->label_image))
			{
				?>
				</div>
				<?php
			}
		}
	}
	?>
<img src="<?php echo $product->image; ?>" title="<?php echo $product->product_page_title != '' ? $product->product_page_title : $product->product_name; ?>" alt="<?php echo $product->product_alt_image != '' ? $product->product_alt_image : $product->product_name; ?>" sizes="(min-width: 300px) 300px" data-width="300" data-height="300" class="el-image uk-transition-scale-up uk-transition-opaque">
</a>

<div class="uk-position-bottom-center">
<div class="uk-overlay uk-width-xlarge uk-transition-slide-bottom-medium uk-margin-remove-first-child uk-overlay-primary uk-padding-small">						

<div class="uk-margin-top">
	<?php
	if (!EshopHelper::isRequiredOptionProduct($product->id))
	{
		if (EshopHelper::isCartMode($product) || EshopHelper::isQuoteMode($product))
		{
			?>
				<?php
				if (EshopHelper::isCartMode($product) && !EshopHelper::getConfigValue('one_add_to_cart_button', '0'))
				{
					$message = EshopHelper::getCartSuccessMessage($product->id, $product->product_name);
					?>
					<input id="add-to-cart-<?php echo $product->id; ?>" type="button" class="el-link uk-button uk-button-danger uk-button-small uk-transition-slide-bottom-medium" onclick="addToCart(<?php echo $product->id; ?>, 1, '<?php echo EshopHelper::getSiteUrl(); ?>', '<?php echo EshopHelper::getAttachedLangLink(); ?>', '<?php echo EshopHelper::getConfigValue('cart_popout')?>', '<?php echo JRoute::_(EshopRoute::getViewRoute('cart')); ?>', '<?php echo $message; ?>');" value="<?php echo JText::_('ESHOP_ADD_TO_CART'); ?>" />
					<?php
				}
				if (EshopHelper::isQuoteMode($product))
				{
					?>
					<input id="add-to-quote-<?php echo $product->id; ?>" type="button" class="el-link uk-button uk-button-danger uk-button-small uk-transition-slide-bottom-medium" onclick="addToQuote(<?php echo $product->id; ?>, 1, '<?php echo EshopHelper::getSiteUrl(); ?>', '<?php echo EshopHelper::getAttachedLangLink(); ?>');" value="<?php echo JText::_('ESHOP_ADD_TO_QUOTE'); ?>" />
					<?php
				}
				?>
			<?php
		}
	}
	else 
	{
		?>
			<a class="el-link uk-button uk-button-danger uk-button-small uk-transition-slide-bottom-medium" href="<?php echo $productUrl; ?>" title="<?php echo JText::_('ESHOP_PRODUCT_VIEW_DETAILS'); ?>" uk-tooltip><span uk-icon="cart"></span></a>
		<?php
	}
	if (($product->product_quantity <= 0 && EshopHelper::getConfigValue('allow_notify') && !EshopHelper::getConfigValue('stock_checkout')) || EshopHelper::getConfigValue('allow_wishlist') || EshopHelper::getConfigValue('allow_compare'))
	{
		?>
			<?php
			if ($product->product_quantity <= 0 && EshopHelper::getConfigValue('allow_notify')  && !EshopHelper::getConfigValue('stock_checkout'))
			{
				?>
				<a class="el-link uk-button uk-button-danger uk-button-small uk-transition-slide-bottom-medium" onclick="makeNotify(<?php echo $product->id; ?>, '<?php echo EshopHelper::getSiteUrl();?>', '<?php echo EshopHelper::getAttachedLangLink(); ?>')" title="<?php echo JText::_('ESHOP_PRODUCT_NOTIFY');?>" uk-tooltip><span uk-icon="bell"></span></a>									
				<?php
			}
			if (EshopHelper::getConfigValue('allow_wishlist'))
			{
				?>
				<a class="el-link uk-button uk-button-default uk-button-small uk-transition-slide-bottom-medium" style="cursor: pointer;" onclick="addToWishList(<?php echo $product->id; ?>, '<?php echo EshopHelper::getSiteUrl(); ?>', '<?php echo EshopHelper::getAttachedLangLink(); ?>')" title="<?php echo JText::_('ESHOP_ADD_TO_WISH_LIST'); ?>" uk-tooltip><span uk-icon="heart"></span></a>
				<?php
			}
			if (EshopHelper::getConfigValue('allow_compare'))
			{
				?>
				<a class="el-link uk-button uk-button-default uk-button-small uk-transition-slide-bottom-medium" style="cursor: pointer;" onclick="addToCompare(<?php echo $product->id; ?>, '<?php echo EshopHelper::getSiteUrl(); ?>', '<?php echo EshopHelper::getAttachedLangLink(); ?>')" title="<?php echo JText::_('ESHOP_ADD_TO_COMPARE'); ?>" uk-tooltip><span uk-icon="copy"></span></a>
				<?php
			}
			?>
		<?php
	}
	?>
</div>
</div>
</div>
</div>
<h6 class="uk-margin uk-margin-remove-bottom">
<a href="<?php echo $productUrl; ?>" title="<?php echo $product->product_name; ?>">
<?php 
//$limit_product_name = substr($product->product_name, 0, 150);
//echo $limit_product_name;
echo $product->product_name;
?>
</a>
</h6>				
<?php
if (EshopHelper::showPrice() && !$product->product_call_for_price)
{
?>
<p>
	<?php
	$productPriceArray = EshopHelper::getProductPriceArray($product->id, $product->product_price);
	if ($productPriceArray['salePrice'] >= 0)
	{
		?>
		<small class="eshop-base-price"><?php echo $currency->format($tax->calculate($productPriceArray['basePrice'], $product->product_taxclass_id, EshopHelper::getConfigValue('tax'))); ?></small>&nbsp;
		<span class="eshop-sale-price"><?php echo $currency->format($tax->calculate($productPriceArray['salePrice'], $product->product_taxclass_id, EshopHelper::getConfigValue('tax'))); ?></span>
		<?php
	}
	else
	{
		?>
		<span class="price"><?php echo $currency->format($tax->calculate($productPriceArray['basePrice'], $product->product_taxclass_id, EshopHelper::getConfigValue('tax'))); ?></span>
		<?php
	}
	if (EshopHelper::getConfigValue('tax') && EshopHelper::getConfigValue('display_ex_tax'))
	{
		?>
		<small>
			<?php echo JText::_('ESHOP_EX_TAX'); ?>:
			<?php
			if ($productPriceArray['salePrice'] >= 0)
			{
				echo $currency->format($productPriceArray['salePrice']);
			}
			else
			{
				echo $currency->format($productPriceArray['basePrice']);
			}
			?>
		</small>
	<?php
	}
	?>
</p>
<?php
}
if ($product->product_call_for_price)
{
?>
<small class="uk-text-success"><?php echo JText::_('ESHOP_CALL_FOR_PRICE'); ?></small>
<?php
}
?>					
</div>
	<?php
	$count++;
	if ($count % $productsPerRow == 0 && $count < count($products))
	{
	?>
	<?php
	}
	}
	?>
</div>
</div>
</div>
</div>


<?php
		
if (isset($pagination) && ($pagination->total > $pagination->limit))
{
	?>
	<div class="uk-tile-muted uk-tile uk-tile-xsmall uk-padding-small uk-margin-top">
		<div class="pagination uk-margin-remove">
			<?php echo $pagination->getPagesLinks(); ?>
		</div>
	</div>
	<?php
}

?>


</div>



<div id="eshop-filter-categories-result" style="display: none;">
	<div class="panel-body">
		<ul class="uk-list">
			<?php
			if (!empty($category))
			{
			?>
				<li>
					<a class="eshop-filter-selected-category" href="javascript:eshop_filter_by_category(<?php echo $category->category_parent_id; ?>);"><span class="uk-text-meta"><?php echo $category->category_name; ?></span></a>
				</li>
			<?php
			}

			for ($i = 0; $n = count($categories), $i < $n; $i++)
			{
				$category = $categories[$i];
				if ($category->number_products > 0)
				{
					?>
					<li>
						<a href="javascript:eshop_filter_by_category(<?php echo $category->id; ?>);"><?php echo $category->category_name; ?><span class="badge badge-info"><?php echo $category->number_products;?></span></a>
					</li>
					<?php
				}
			}
			?>
		</ul>
	</div>
</div>
<?php

if (count($manufacturers) > 0)
{
?>
	<div id="eshop-filter-manufacturers-result" style="display: none;">
		<div class="panel-body">
			<ul class="uk-list">
				<?php
				if (!empty($filterData['manufacturer_ids']))
				{
					$manufacturerIds = $filterData['manufacturer_ids'];
					$hasSelected = true;
				}
				else
				{
					$manufacturerIds = array();
					$hasSelected = false;
				}

				foreach ($manufacturers as $manufacturer)
				{
					$checked = in_array($manufacturer->id, $manufacturerIds);
				?>
					<li>
						<label class="checkbox">
							<input class="manufacturer" onclick="eshop_ajax_products_filter('manufacturer');" type="checkbox" name="manufacturer_ids[]" value="<?php echo $manufacturer->manufacturer_id; ?>" <?php if ($checked) echo 'checked="checked"'; ?>>
							<?php echo $manufacturer->manufacturer_name; ?>
							<span class="badge badge-info">
								<?php
									if ($hasSelected && !$checked)
									{
										echo '+';
									}

									echo $manufacturer->number_products;
								?>
							</span>
						</label>
					</li>
				<?php
				}
				?>
			</ul>
		</div>
	</div>
<?php
}

foreach ($attributes as $attribute)
{
	if (count($attribute->attributeValues))
	{

		if (!empty($filterData['attribute_' . $attribute->id]))
		{
			$attributeValues = $filterData['attribute_' . $attribute->id];
			$hasSelected = true;
		}
		else
		{
			$attributeValues = array();
			$hasSelected = false;
		}
		?>
		<div id="eshop-filter-attribute-<?php echo $attribute->id; ?>-result" style="display: none;">
			<div class="panel-body">
				<ul class="uk-list">
					<?php
					foreach ($attribute->attributeValues as $attributeValue)
					{
						$checked = in_array($attributeValue->value, $attributeValues);
						?>
						<li>
							<label class="checkbox">
								<input class="eshop-attributes" type="checkbox" name="attribute_<?php echo $attribute->id;?>[]" onclick="eshop_ajax_products_filter('attribute_<?php echo $attribute->id;?>');" value="<?php echo $attributeValue->value; ?>" <?php if ($checked) echo 'checked="checked"'; ?>/>
								<?php echo $attributeValue->value; ?>
								<span class="badge badge-info">
									<?php
										if ($hasSelected && !$checked)
										{
											echo '+';
										}
										echo $attributeValue->number_products;
									?>
								</span>
							</label>
						</li>
						<?php
					}
					?>
				</ul>
			</div>
		</div>
		<?php
	}
}

foreach ($options as $option)
{
	if (!empty($filterData['option_' . $option->id]))
	{
		$optionValues = $filterData['option_' . $option->id];
	}
	else
	{
		$optionValues = array();
	}
	if (count($option->optionValues))
	{
	?>
		<div id="eshop-filter-option-<?php echo $option->id; ?>-result" style="display: none;">
			<div class="panel-body">
				<ul class="uk-list">

							<?php
							foreach ($option->optionValues as $optionValue)
							{
								$checked = in_array($optionValue->id, $optionValues);
								?>
								<li>
									<label class="checkbox">
										<input class="eshop-options" type="checkbox" onclick="eshop_ajax_products_filter('option_<?php echo $option->id; ?>')" name="option_<?php echo $option->id; ?>[]" value="<?php echo $optionValue->id; ?>" <?php if ($checked) echo 'checked="checked"'; ?>/>
										<?php echo $optionValue->value; ?>
										<span class="badge badge-info"><?php echo $optionValue->number_products; ?></span>
									</label>
								</li>
								<?php
							}
							?>

				</ul>
			</div>
		</div>	
	<?php
	}
}
?>
</div>