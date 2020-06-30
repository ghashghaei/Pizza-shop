<?php

// no direct access
defined( '_JEXEC' ) or die;

if ($params->get('collapse_at_start', '0'))
{
    $collapseClass = 'uk-open';
    $collapseStyle = ' style="display: none;"';
}
else 
{
    $collapseClass = '';
    $collapseStyle = '';
}
?>
<div class="uk-tile uk-tile-muted uk-padding-small">
<form action="<?php echo JRoute::_('index.php?option=com_eshop&task=search&Itemid='.$itemId); ?>" method="post" name="advancedSearchForm" id="eshop_products_filter_form">
	<div class="eshop_products_filter_<?php echo $params->get( 'classname' ) ?> row-fluid panel-group" id="accordion">

	<div class="uk-margin">
		<a class="uk-button uk-button-secondary uk-width-1-1" onclick="reset_all();">
			<i uk-icon="close"></i>
			<?php echo JText::_('ESHOP_RESET_ALL'); ?>
		</a>
	</div>
	
	<?php
	if ($params->get('filter_by_keyword', 1))
	{
	?>
	<div id="eshop-keyword" class="uk-margin">
		<div class="uk-inline">
		<span class="uk-form-icon" uk-icon="icon: search"></span>
			<input class="uk-input uk-form-width-large" type="text" name="keyword" id="keyword" value="<?php echo $input->getString('keyword'); ?>" onchange="eshop_ajax_products_filter();" placeholder="<?php echo JText::_('ESHOP_SEARCH')?>" />
		</div>
	</div>
	<?php
	}

	if ($params->get('filter_by_stock', 1))
	{
	?>
	<div id="eshop-stock" class="uk-margin">
		<select name="product_in_stock" id="product_in_stock" class="uk-input uk-form-width-large" onchange="eshop_ajax_products_filter();">
			<option value="0" <?php if ($input->getInt('product_in_stock', 0, 'int') == '0') echo 'selected = "selected"'; ?>><?php echo JText::_('ESHOP_BOTH'); ?></option>
			<option value="1" <?php if ($input->getInt('product_in_stock', 0, 'int') == '1') echo 'selected = "selected"'; ?>><?php echo JText::_('ESHOP_IN_STOCK'); ?></option>
		</select>
	</div>
	<?php
	}

	if ($filterByPrice)
	{
	?>
	<ul uk-accordion>
		<li class="<?php echo $collapseClass; ?>">
			<a class="uk-accordion-title" href="#">
			<span class="uk-text-meta"><?php echo JText::_('ESHOP_FILTER_PRICE')?></span>
			</a>
			<div id="eshop-price" class="uk-accordion-content">
				<div class="panel-body">
					<?php echo JText::_('ESHOP_FILTER_PRICE_FROM')?>
					<input type="text" value="" id="min_price" name="min_price" class="span5" />
					<?php echo JText::_('ESHOP_FILTER_PRICE_TO')?>
					<input type="text" value="" id="max_price" name="max_price" class="span5" />
					<input type="hidden" value="1" name="filter_by_price" />
					<input type="hidden" value="<?php echo $params->get( 'min_price', 0); ?>" name="min_price_default" />
					<input type="hidden" value="<?php echo $params->get( 'max_price'); ?>" name="max_price_default" />
				</div><br/>
				<div class="wap-nouislider">
					<div id="price-behaviour"></div>
				</div>
				<br />
			</div>
		</li>
	</ul>
	<?php
	}
	?>

	<ul uk-accordion>
		<li class="<?php echo $collapseClass; ?>">
			<a class="uk-accordion-title" href="#">
				<span class="uk-text-meta"><?php echo JText::_('ESHOP_FILTER_CATEGORIES'); ?></span>
			</a>
			<div id="eshop-categories" class="uk-accordion-content">
				<ul class="uk-list">
					<?php
					if (!empty($category))
					{
					?>
					<li>
						<a class="eshop-filter-selected-category" href="javascript:eshop_filter_by_category(<?php echo $category->category_parent_id; ?>);"><strong><?php echo $category->category_name; ?></strong></a>
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
		</li>
	</ul>

	<?php
	if ($params->get('filter_by_manufacturers', 1))
	{
		if (count($manufacturers))
		{
			$display = '';
		}
		else
		{
			$display = ' style="display: none;"';
		}
	?>
		<div id="eshop-filter-manufacturers-container" <?php echo $display; ?>>
		<ul uk-accordion>
			<li class="<?php echo $collapseClass; ?>">
			<a class="uk-accordion-title" href="#">
				<span class="uk-text-meta"><?php echo JText::_('ESHOP_FILTER_MANUFACTURERS'); ?></span>
			</a>
			<div id="eshop-manufacturers" class="uk-accordion-content">
				<div class="panel-body">
					<ul class="uk-list">
						<?php
						if (!empty($filterData['manufacturer_ids']))
						{
							$manufacturerIds = $filterData['manufacturer_ids'];
						}
						else
						{
							$manufacturerIds = array();
						}

						foreach ($manufacturers as $manufacturer)
						{
						?>
						<li>
							<label class="checkbox">
								<input class="manufacturer" onclick="eshop_ajax_products_filter('manufacturer');" type="checkbox" name="manufacturer_ids[]" value="<?php echo $manufacturer->manufacturer_id; ?>" <?php if (in_array($manufacturer->manufacturer_id, $manufacturerIds)) echo 'checked="checked"'; ?>>
								<?php echo $manufacturer->manufacturer_name; ?><span class="badge badge-info"><?php echo $manufacturer->number_products;?></span>
							</label>
						</li>
						<?php
						}
						?>
					</ul>
				</div>
			</div>
			</li>
		</ul>
		</div>
	<?php
	}

	if ($params->get('filter_by_attributes', 1))
	{
		foreach ($attributes as $attribute)
		{
			if (count($attribute->attributeValues))
			{
				$display = '';
			}
			else
			{
				$display = ' style="display: none;"';
			}

			if (!empty($filterData['attribute_'.$attribute->id]))
			{
				$attributeValues = $filterData['attribute_'.$attribute->id];
			}
			else
			{
				$attributeValues = array();
			}
			?>
			<div id="eshop-filter-attribute-<?php echo $attribute->id; ?>-container" <?php echo $display; ?>>
			<ul uk-accordion>
				<li class="<?php echo $collapseClass; ?>">
				<a class="uk-accordion-title" href="#">
					<span class="uk-text-meta"><?php echo $attribute->attribute_name; ?></span>
				</a>
				<div id="eshop-attribute-<?php echo $attribute->id;  ?>" class="uk-accordion-content">
					<div class="panel-body">
						<ul class="uk-list">
							<?php
							foreach ($attribute->attributeValues as $attributeValue)
							{
							?>
							<li>
								<label class="checkbox">
									<input class="eshop-attributes" type="checkbox" name="attribute_<?php echo $attribute->id;?>[]" onclick="eshop_ajax_products_filter('attribute_<?php echo $attribute->id;?>');" value="<?php echo $attributeValue->value; ?>" <?php if (in_array($attributeValue->value, $attributeValues)) echo 'checked="checked"'; ?> />
									<?php echo $attributeValue->value; ?><span class="badge badge-info"><?php echo $attributeValue->number_products;?></span>
								</label>
							</li>
							<?php
							}
							?>
						</ul>
					</div>
				</div>
				</li>
			</ul>	
			</div>
		<?php
		}
	}

	if ($params->get('filter_by_options', 1))
	{
		foreach ($options as $option)
		{
			if (count($option->optionValues))
			{
				$display = '';
			}
			else
			{
				$display = ' style="display: none;"';
			}
			if (!empty($filterData['option_'.$option->id]))
			{
				$optionValues = $filterData['option_'.$option->id];
			}
			else
			{
				$optionValues = array();
			}
			?>
			<div id="eshop-filter-option-<?php echo $option->id; ?>-container" <?php echo $display; ?>>
			<ul uk-accordion>
				<li class="<?php echo $collapseClass; ?>">
				<a class="uk-accordion-title" href="#">
					<span class="uk-text-meta"><?php echo $option->option_name; ?></span>
				</a>
				<div id="eshop-option-<?php echo $option->id; ?>" class="uk-accordion-content">
					<div class="panel-body">
						<ul class="uk-list">
							<?php
							foreach ($option->optionValues as $optionValue)
							{
							?>
							<li>
								<label class="checkbox">
									<input class="eshop-options" type="checkbox" onclick="eshop_ajax_products_filter('option_<?php echo $option->id; ?>')" name="option_<?php echo $option->id; ?>[]" value="<?php echo $optionValue->id; ?>" />
									<?php echo $optionValue->value; ?><span class="badge badge-info"><?php echo $optionValue->number_products;?></span>
								</label>
							</li>
							<?php
							}
							?>
						</ul>
					</div>
				</div>
				</li>
			</ul>
			</div>
		<?php
		}
	}

		if ($filterByWeight)
		{
		?>
		<ul uk-accordion>
			<li class="<?php echo $collapseClass; ?>">
			<a class="uk-accordion-title" href="#">
				<span class="uk-text-meta"><?php echo JText::_('ESHOP_FILTER_WEIGHT')?></span>
			</a>
			<div id="eshop-weight" class="uk-accordion-content">
				<div class="panel-body">
					<?php echo JText::_('ESHOP_FILTER_WEIGHT_FROM')?>
					<input type="text" value="" id="min_weight" name="min_weight" class="span5" />
					<?php echo JText::_('ESHOP_FILTER_WEIGHT_TO')?>
					<input type="text" value="" id="max_weight" name="max_weight" class="span5" />
					<input type="hidden" value="1" name="filter_by_weight" />
					<input type="hidden" value="<?php echo $params->get( 'min_weight', 0); ?>" name="min_weight_default" />
					<input type="hidden" value="<?php echo $params->get( 'max_weight'); ?>" name="max_weight_default" />
					<input type="hidden" value="<?php echo $params->get('same_weight_unit', 1); ?>" name="same_weight_unit" />
				</div><br/>
				<div class="wap-nouislider">
					<div id="weight-behaviour"></div>
				</div>
				<br />
			</div>
			</li>
		</ul>
		<?php
		}

		if ($filterByLength)
		{
		?>
		<ul uk-accordion>
			<li class="<?php echo $collapseClass; ?>">
			<a class="uk-accordion-title" href="#">
				<span class="uk-text-meta"><?php echo JText::_('ESHOP_FILTER_LENGTH')?></span>
			</a>
			<div id="eshop-length" class="uk-accordion-content">
				<div class="panel-body">
					<?php echo JText::_('ESHOP_FILTER_LENGTH_FROM')?>
					<input type="text" value="" id="min_length" name="min_length" class="span5" />
					<?php echo JText::_('ESHOP_FILTER_LENGTH_TO')?>
					<input type="text" value="" id="max_length" name="max_length" class="span5" />
					<input type="hidden" value="<?php echo $params->get( 'min_length', 0); ?>" name="min_length_default" />
					<input type="hidden" value="<?php echo $params->get( 'max_length'); ?>" name="max_length_default" />
					<input type="hidden" value="1" name="filter_by_length" />
				</div><br/>
				<div class="wap-nouislider">
					<div id="length-behaviour"></div>
				</div>
				<br />
			</div>
			
			</li>
		</ul>
		<?php
		}

		if ($filterByWidth)
		{
		?>
		<ul uk-accordion>
			<li class="<?php echo $collapseClass; ?>">
			<a class="uk-accordion-title" href="#">
				<span class="uk-text-meta"><?php echo JText::_('ESHOP_FILTER_WIDTH')?></span>
			</a>
			<div id="eshop-width" class="uk-accordion-content">
				<div class="panel-body">
					<?php echo JText::_('ESHOP_FILTER_WIDTH_FROM')?>
					<input type="text" value="" id="min_width" name="min_width" class="span5" />
					<?php echo JText::_('ESHOP_FILTER_WIDTH_TO')?>
					<input type="text" value="" id="max_width" name="max_width" class="span5" />
					<input type="hidden" value="<?php echo $params->get( 'min_width', 0); ?>" name="min_width_default" />
					<input type="hidden" value="<?php echo $params->get( 'max_width'); ?>" name="max_width_default" />
					<input type="hidden" value="1" name="filter_by_width" />
				</div><br/>
				<div class="wap-nouislider">
					<div id="width-behaviour"></div>
				</div>
				<br />
			</div>
			</li>
		</ul>
		<?php
		}

		if ($filterByHeight)
		{
		?>
		<ul uk-accordion>
			<li class="<?php echo $collapseClass; ?>">
			<a class="uk-accordion-title" href="#">
				<span class="uk-text-meta">
				<?php echo JText::_('ESHOP_FILTER_HEIGHT')?>
				</span>
			</a>
			<div id="eshop-height" class="uk-accordion-content">
				<div class="panel-body">
					<?php echo JText::_('ESHOP_FILTER_HEIGHT_FROM')?>
					<input type="text" value="" id="min_height" name="min_height" class="span5" />
					<?php echo JText::_('ESHOP_FILTER_HEIGHT_TO')?>
					<input type="text" value="" id="max_height" name="max_height" class="span5" />
					<input type="hidden" value="<?php echo $params->get( 'min_height', 0); ?>" name="min_height_default" />
					<input type="hidden" value="<?php echo $params->get( 'max_height'); ?>" name="max_height_default" />
					<input type="hidden" value="1" name="filter_by_height" />
				</div><br/>
				<div class="wap-nouislider">
					<div id="height-behaviour"></div>
				</div>
				<br />
			</div>
			</li>
		</ul>
		<?php
		}
		?>
		<div class="eshop-filter-hidden">
			<?php
			if ($filterByLength || $filterByWidth || $filterByHeight)
			{
			?>
				<input type="hidden" value="<?php echo $params->get('same_length_unit', 1); ?>" name="same_length_unit" />
			<?php
			}
			?>
	        <input type="hidden" name="change_filter" id="change_filter_id" value="" />
			<input type="hidden" name="category_id" id="filter_category_id" value="<?php echo empty($filterData['category_id']) ? 0 : $filterData['category_id']; ?>" />
		</div>
	</div>
</form>
</div>
<script type="text/javascript">
	Eshop.jQuery(function($){
		$(document).ready(function(){
			$('.eshop-filter a').click(function(){
				$(this).toggleClass('');
				var id = $(this).attr('data');
				$(id).slideToggle('slow');
			})
		})
		eshop_filter_by_category = function(categoryId)
		{
			$('#filter_category_id').val(categoryId);
			eshop_ajax_products_filter('category');
		};
		reset_all = function()
		{
			<?php
			if ($filterByPrice)
			{
				?>
				$("#price-behaviour").val([<?php echo $params->get( 'min_price', 0); ?>, <?php echo $params->get( 'max_price'); ?>]);
				$('input[name^=min_price]').val('<?php echo $symbol . $params->get( 'min_price', 0); ?>');
				$('input[name^=max_price]').val('<?php echo $symbol . $params->get( 'max_price'); ?>');
				<?php
			}
			if ($filterByWeight)
			{
				?>
				$("#weight-behaviour").val([<?php echo $params->get( 'min_weight', 0); ?>, <?php echo $params->get( 'max_weight'); ?>]);
				$('input[name^=min_weight]').val('<?php echo $params->get( 'min_weight', 0) . $weightUnit; ?>');
				$('input[name^=max_weight]').val('<?php echo $params->get( 'max_weight') . $weightUnit; ?>');
				<?php
			}
			if ($filterByLength)
			{
				?>
				$("#length-behaviour").val([<?php echo $params->get( 'min_length', 0); ?>, <?php echo $params->get( 'max_length'); ?>]);
				$('input[name^=min_length]').val('<?php echo $params->get( 'min_length', 0) . $lengthUnit; ?>');
				$('input[name^=max_length]').val('<?php echo $params->get( 'max_length') . $lengthUnit; ?>');
				<?php
			}
			if ($filterByWidth)
			{
				?>
				$("#width-behaviour").val([<?php echo $params->get( 'min_width', 0); ?>, <?php echo $params->get( 'max_width'); ?>]);
				$('input[name^=min_width]').val('<?php echo $params->get( 'min_width', 0) . $lengthUnit; ?>');
				$('input[name^=max_width]').val('<?php echo $params->get( 'max_width') . $lengthUnit; ?>');
				<?php
			}
			if ($filterByWeight)
			{
				?>
				$("#height-behaviour").val([<?php echo $params->get( 'min_height', 0); ?>, <?php echo $params->get( 'max_height'); ?>]);
				$('input[name^=min_height]').val('<?php echo $params->get( 'min_height', 0) . $lengthUnit; ?>');
				$('input[name^=max_height]').val('<?php echo $params->get( 'max_height') . $lengthUnit; ?>');
				<?php
			}
			if ($params->get('filter_by_stock',1))
			{
				?>
				$('#product_in_stock').val('0');
				<?php
			}
			if ($params->get('filter_by_manufacturers', 1))
			{
				?>
				$('input[name^=manufacturer_ids]').prop("checked", false);			
				<?php
			}
			if ($params->get('filter_by_attributes', 1))
			{
				foreach ($attributes as $attribute)
				{
					?>
					$('input[name^=attribute_<?php echo $attribute->id; ?>]').prop("checked", false);		
					<?php
				}
			}
			if ($params->get('filter_by_options', 1))
			{
				foreach ($options as $option)
				{
					?>
					$('input[name^=option_<?php echo $option->id; ?>]').prop("checked", false);	
					<?php
				}
			}
			if ($params->get('filter_by_keyword', 1))
			{
				?>
				$('input[name^=keyword]').val('');
				<?php
			}
			?>
			eshop_filter_by_category(0);
		}
		//Ajax request
		eshop_ajax_products_filter = function(changeFilter)
		{
			if (changeFilter === undefined) {
				changeFilter = '';
			}

			$('#change_filter_id').val(changeFilter);

			$("body").append('<img id="eshop-loadding" src="<?php echo JUri::root().'modules/mod_eshop_products_filter/assets/images/loading.svg'?>" />');
			jQuery('.alert-success').remove();
			$('#eshop-loadding').css({"position":"fixed","left":$( window ).width()/2-50+"px","top":$( window ).height()/2-50+"px","z-index":999});
			$("body").css({"opacity": "0.4"});
			$.ajax({
				type: "POST",
				url:  "<?php echo JUri::root(); ?>index.php?option=com_eshop&view=filter&Itemid=<?php echo $itemId; ?>&format=raw&<?php echo EshopHelper::getAttachedLangLink(); ?>&change_filter=" + changeFilter,
				data: $('#eshop_products_filter_form input[type=\'text\'], #eshop_products_filter_form input[type=\'checkbox\']:checked, #eshop_products_filter_form select, #eshop_products_filter_form input[type=\'hidden\']'),
				cache: false,
				success: function(html){
					$('#eshop-main-container').html(html);
					$('html, body').animate({scrollTop: $('#eshop-main-container').offset().top - 10 }, 'slow');
					$('#change_filter_id').val('');
					if ($('#eshop-filter-categories-result').length)
					{
						$('#eshop-filter-categories-container').show();
						<?php
						if (!$params->get('collapse_at_start', '0'))
						{
						    ?>
						    $('#eshop-categories').html($('#eshop-filter-categories-result').html()).show();  
						    <?php
						}
						?>
					}
					else
					{
						$('#eshop-filter-categories-container').hide();
					}
					<?php
					if ($params->get('filter_by_manufacturers', 1))
					{
					?>
						if ($('#eshop-filter-manufacturers-result').length)
						{
							$('#eshop-filter-manufacturers-container').show();
							<?php
							if (!$params->get('collapse_at_start', '0'))
							{
							    ?>
							    $('#eshop-manufacturers').html($('#eshop-filter-manufacturers-result').html()).show();
							    <?php
							}
							?>
						}
						else
						{
							$('#eshop-filter-manufacturers-container').hide();
						}
					<?php
					}

					if ($params->get('filter_by_attributes', 1))
					{
						foreach ($attributes as $attribute)
						{
							?>
							if ($('#eshop-filter-attribute-<?php echo $attribute->id; ?>-result').length)
							{
								$('#eshop-filter-attribute-<?php echo $attribute->id; ?>-container').show();
								<?php
								if (!$params->get('collapse_at_start', '0'))
								{
								    ?>
								    $('#eshop-attribute-<?php echo $attribute->id; ?>').html($('#eshop-filter-attribute-<?php echo $attribute->id; ?>-result').html()).show();  
								    <?php
								}
								?>
							}
							else
							{
								$('#eshop-filter-attribute-<?php echo $attribute->id; ?>-container').hide();
							}
							<?php
						}
					}
					
					if ($params->get('filter_by_options', 1))
					{
						foreach ($options as $option)
						{
							?>
							if ($('#eshop-filter-option-<?php echo $option->id; ?>-result').length)
							{
								$('#eshop-filter-option-<?php echo $option->id; ?>-container').show();
								<?php
								if (!$params->get('collapse_at_start', '0'))
								{
								    ?>
								    $('#eshop-option-<?php echo $option->id;  ?>').html($('#eshop-filter-option-<?php echo $option->id; ?>-result').html()).show();  
								    <?php
								}
								?>
							}
							else
							{
								$('#eshop-filter-option-<?php echo $option->id; ?>-container').hide();
							}
						<?php
						}
					}
					?>
					$("body").css({"opacity": "1"});
					$('#eshop-loadding').remove();
				}
			});
		}
		<?php
		
		if ($filterByPrice)
		{
			?>
			$("#price-behaviour").noUiSlider({
				start: [ <?php echo $input->get('min_price', 0, 'float') ? $input->get('min_price', 0, 'float') : $params->get( 'min_price', 0); ?>, <?php echo $input->get('max_price', 0, 'float') ? $input->get('max_price', 0, 'float') : $params->get('max_price'); ?> ],
				range: {
					'min': <?php echo $params->get( 'min_price', 0); ?>,
					'max': <?php echo $params->get( 'max_price'); ?>
				},
				connect: true,
				serialization: {
					lower: [
						$.Link({
							target: $("#min_price"),
							format: {
								prefix: '<?php echo $symbol; ?>',
								decimals: 0,
							}
						})
					],
					upper: [
						$.Link({
							target: function( value, handleElement, slider ){
								$("#max_price").val( value );
							}
						}),
					],
					format: {
						prefix: '<?php echo $symbol; ?>',
						decimals: 0,
					}
				}
			}).on('change', eshop_ajax_products_filter);
			<?php
		}
		if ($filterByWeight)
		{
			?>
			$("#weight-behaviour").noUiSlider({
				start: [ <?php echo $input->get('min_weight', 0, 'float') ? $input->get('min_weight', 0, 'float') : $params->get( 'min_weight', 0); ?>, <?php echo $input->get('max_weight', 0, 'float') ? $input->get('max_weight', 0, 'float') : $params->get( 'max_weight'); ?> ],
				range: {
					'min': <?php echo $params->get( 'min_weight', 0); ?>,
					'max': <?php echo $params->get( 'max_weight'); ?>
				},
				connect: true,
				serialization: {
					lower: [
						$.Link({
							target: $("#min_weight"),
							format: {
								postfix: '<?php echo $weightUnit; ?>',
								decimals: 0,
							}
						})
					],
					upper: [
						$.Link({
							target: function( value, handleElement, slider ){
								$("#max_weight").val( value );
							}
						}),
					],
					format: {
						postfix: '<?php echo $weightUnit; ?>',
						decimals: 0,
					}
				}
			}).on('change', eshop_ajax_products_filter);
			<?php
		}
		if ($filterByLength)
		{
			?>
			$("#length-behaviour").noUiSlider({
				start: [ <?php echo $input->get('min_length', 0, 'float') ? $input->get('min_length', 0, 'float') : $params->get( 'min_length', 0); ?>, <?php echo $input->get('max_length', 0, 'float') ? $input->get('max_length', 0, 'float') : $params->get( 'max_length'); ?> ],
				range: {
					'min': <?php echo $params->get( 'min_length', 0); ?>,
					'max': <?php echo $params->get( 'max_length'); ?>
				},
				connect: true,
				serialization: {
					lower: [
						$.Link({
							target: $("#min_length"),
							format: {
								postfix: '<?php echo $lengthUnit; ?>',
								decimals: 0,
							}
						})
					],
					upper: [
						$.Link({
							target: function( value, handleElement, slider ){
								$("#max_length").val( value );
							}
						}),
					],
					format: {
						postfix: '<?php echo $lengthUnit; ?>',
						decimals: 0,
					}
				}
			}).on('change', eshop_ajax_products_filter);
			<?php
		}
		if ($filterByWidth)
		{
			?>
			$("#width-behaviour").noUiSlider({
				start: [ <?php echo $input->get('min_width', 0, 'float') ? $input->get('min_width', 0, 'float') : $params->get( 'min_width', 0); ?>, <?php echo $input->get('max_width', 0, 'float') ? $input->get('max_width', 0, 'float') : $params->get( 'max_width'); ?> ],
				range: {
					'min': <?php echo $params->get( 'min_width', 0); ?>,
					'max': <?php echo $params->get( 'max_width'); ?>
				},
				connect: true,
				serialization: {
					lower: [
						$.Link({
							target: $("#min_width"),
							format: {
								postfix: '<?php echo $lengthUnit; ?>',
								decimals: 0,
							}
						})
					],
					upper: [
						$.Link({
							target: function( value, handleElement, slider ){
								$("#max_width").val( value );
							}
						}),
					],
					format: {
						postfix: '<?php echo $lengthUnit; ?>',
						decimals: 0,
					}
				}
			}).on('change', eshop_ajax_products_filter);
			<?php
		}
		if ($filterByHeight)
		{
			?>
			$("#height-behaviour").noUiSlider({
				start: [ <?php echo $input->get('min_height', 0, 'float') ? $input->get('min_height', 0, 'float') : $params->get( 'min_height', 0); ?>, <?php echo $input->get('max_height', 0, 'float') ? $input->get('max_height', 0, 'float') : $params->get( 'max_height'); ?> ],
				range: {
					'min': <?php echo $params->get( 'min_height', 0); ?>,
					'max': <?php echo $params->get( 'max_height'); ?>
				},
				connect: true,
				serialization: {
					lower: [
						$.Link({
							target: $("#min_height"),
							format: {
								postfix: '<?php echo $lengthUnit; ?>',
								decimals: 0,
							}
						})
					],
					upper: [
						$.Link({
							target: function( value, handleElement, slider ){
								$("#max_height").val( value );
							}
						}),
					],
					format: {
						postfix: '<?php echo $lengthUnit; ?>',
						decimals: 0,
					}
				}
			}).on('change', eshop_ajax_products_filter);
			<?php
		}
		?>
	})
</script>