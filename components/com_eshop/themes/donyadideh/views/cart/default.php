<?php

// no direct access
defined( '_JEXEC' ) or die();
$bootstrapHelper        = $this->bootstrapHelper;
$controlGroupClass      = $bootstrapHelper->getClassMapping('control-group');
$controlLabelClass      = $bootstrapHelper->getClassMapping('control-label');
$controlsClass          = $bootstrapHelper->getClassMapping('controls');
$pullRightClass         = $bootstrapHelper->getClassMapping('pull-right');
$inputAppendClass       = $bootstrapHelper->getClassMapping('input-append');
$inputPrependClass      = $bootstrapHelper->getClassMapping('input-prepend');
$imgPolaroid            = $bootstrapHelper->getClassMapping('img-polaroid');
$btnClass				= $bootstrapHelper->getClassMapping('btn');
?>
<script src="<?php echo JUri::base(true); ?>/components/com_eshop/assets/colorbox/jquery.colorbox.js" type="text/javascript"></script>
<?php
if (isset($this->success))
{
	?>
	<script>
	var notifications = UIkit.notification('<?php echo $this->success; ?>', {
		pos: 'top-right',
		status: 'success',
		});
	</script>
	<?php
}
if (isset($this->warning))
{
	?>
	<script>
	var notifications = UIkit.notification('<?php echo $this->warning; ?>', {
		pos: 'top-right',
		status: 'warning',
		});
	</script>
	<?php
}
?>
<h3>
	<?php echo JText::_('ESHOP_SHOPPING_CART'); ?>
</h3>
<?php
if (!count($this->cartData))
{
	?>
	<div class="no-content"><?php echo JText::_('ESHOP_CART_EMPTY'); ?></div>
	<?php
}
else
{
	?>

	<div class="cart-info">
		<?php
		$countProducts = 0;
		?>
		<table class="table uk-table-responsive uk-table uk-table-hover">
			<thead>
				<tr>
					<th class="uk-text-center uk-text-meta uk-table-shrink"><?php echo JText::_('ESHOP_REMOVE'); ?></th>
					<th class="uk-text-center uk-text-meta uk-width-small"><?php echo JText::_('ESHOP_IMAGE'); ?></th>
					<th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_PRODUCT_NAME'); ?></th>
					<th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_MODEL'); ?></th>
					<th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_QUANTITY'); ?></th>
					<th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_UNIT_PRICE'); ?></th>
					<th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_TOTAL'); ?></th>
				</tr>
			</thead>
			<tbody>
				<?php
				foreach ($this->cartData as $key => $product)
				{
					$countProducts++;
					$optionData = $product['option_data'];
					$viewProductUrl = JRoute::_(EshopRoute::getProductRoute($product['product_id'], EshopHelper::getProductCategory($product['product_id'])));
					?>
					<tr>
						<td class="uk-text-center uk-text-middle" data-content="<?php echo JText::_('ESHOP_REMOVE'); ?>">
							<a class="eshop-remove-item-cart" id="<?php echo $key; ?>" style="cursor: pointer;">
								<span class="uk-text-danger" uk-icon="close" title="<?php echo JText::_('ESHOP_REMOVE'); ?>"></span>
							</a>
						</td>
						<td class="uk-text-center uk-text-middle" data-content="<?php echo JText::_('ESHOP_IMAGE'); ?>">
							<a href="<?php echo $viewProductUrl; ?>">
								<img class="<?php echo $imgPolaroid; ?>" src="<?php echo $product['image']; ?>" />
							</a>
						</td>
						<td class="uk-text-center uk-text-middle" data-content="<?php echo JText::_('ESHOP_PRODUCT_NAME'); ?>">
							<a href="<?php echo $viewProductUrl; ?>">
								<?php echo $product['product_name']; ?>
							</a>
							<?php
							if ($product['product_stock_warning'] && !$product['stock'])
							{
								?>
								<span class="stock">***</span>
								<?php
							}
							?>
							<br />	
							<?php
							for ($i = 0; $n = count($optionData), $i < $n; $i++)
							{
								echo '<span class="uk-text-meta">- ' . $optionData[$i]['option_name'] . ': ' . $optionData[$i]['option_value'] . (isset($optionData[$i]['sku']) && $optionData[$i]['sku'] != '' ? ' (' . $optionData[$i]['sku'] . ')' : '') . '</span><br />';
							}
							?>
						</td>
						<td class="uk-text-center uk-text-middle" data-content="<?php echo JText::_('ESHOP_MODEL'); ?>"><?php echo $product['product_sku']; ?></td>
						<td class="uk-text-center uk-text-middle" data-content="<?php echo JText::_('ESHOP_QUANTITY'); ?>">
							<div class="<?php echo $inputAppendClass; ?> <?php echo $inputPrependClass; ?>">
								<span class="eshop-quantity">
									<input type="hidden" name="key[]" value="<?php echo $key; ?>" />
									<a onclick="quantityUpdate('+', 'quantity_cart_<?php echo $countProducts; ?>', <?php echo EshopHelper::getConfigValue('quantity_step', '1'); ?>)" class="<?php echo $btnClass; ?> btn-default button-plus" id="cart_<?php echo $countProducts; ?>">+</a>
										<input type="text" class="eshop-quantity-value" value="<?php echo htmlspecialchars($product['quantity'], ENT_COMPAT, 'UTF-8'); ?>" name="quantity[]" id="quantity_cart_<?php echo $countProducts; ?>" />
									<a onclick="quantityUpdate('-', 'quantity_cart_<?php echo $countProducts; ?>', <?php echo EshopHelper::getConfigValue('quantity_step', '1'); ?>)" class="<?php echo $btnClass; ?> btn-default button-minus" id="cart_<?php echo $countProducts; ?>">-</a>
								</span>
							</div>
						</td>
						<td class="uk-text-center uk-text-middle" data-content="<?php echo JText::_('ESHOP_UNIT_PRICE'); ?>">
							<?php
							if (EshopHelper::showPrice())
							{
								if (EshopHelper::getConfigValue('include_tax_anywhere', '0'))
								{
									echo $this->currency->format($this->tax->calculate($product['price'], $product['product_taxclass_id'], EshopHelper::getConfigValue('tax')));
								}
								else 
								{
									echo $this->currency->format($product['price']);
								}
							}
							?>
						</td>
						<td class="uk-text-center uk-text-middle" data-content="<?php echo JText::_('ESHOP_TOTAL'); ?>">
							<?php
							if (EshopHelper::showPrice())
							{
								if (EshopHelper::getConfigValue('include_tax_anywhere', '0'))
								{
									echo $this->currency->format($this->tax->calculate($product['total_price'], $product['product_taxclass_id'], EshopHelper::getConfigValue('tax')));
								}
								else
								{
									echo $this->currency->format($product['total_price']);
								}
							}
							?>
						</td>
					</tr>
					<?php
				}
				if (EshopHelper::showPrice())
				{
					foreach ($this->totalData as $data)
					{
						?>
						<tr>
							<td colspan="6" class="uk-text-left"><?php echo $data['title']; ?>:</td>
							<td><strong><?php echo $data['text']; ?></strong></td>
						</tr>
						<?php	
					}
				}
				?>
			</tbody>
		</table>
    </div>

    <div>
		<div class="uk-margin uk-text-right">
			<button type="button" class="uk-button uk-button-default" onclick="updateCart();" id="update-cart"><?php echo JText::_('ESHOP_UPDATE_CART'); ?></button>
		</div>
	</div>
    <?php
	if (EshopHelper::getConfigValue('allow_coupon'))
	{
		?>
		<table class="table table-bordered table-striped">
			<tbody>
				<tr>
					<td class="form-horizontal">
						<div class="uk-margin-top uk-margin-bottom">
							<label for="coupon_code" class="<?php echo $controlLabelClass; ?>"><?php echo JText::_('ESHOP_COUPON_TEXT'); ?>:</label>
							<div class="<?php echo $controlsClass; ?>">
								<input type="text" id="coupon_code" name="coupon_code" class="uk-input uk-form-width-medium" value="<?php echo htmlspecialchars($this->coupon_code, ENT_COMPAT, 'UTF-8'); ?>">
								<button type="button" class="uk-button uk-button-secondary" onclick="applyCoupon();" id="apply-coupon"><?php echo JText::_('ESHOP_COUPON_APPLY'); ?></button>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<?php
	}
	if (EshopHelper::getConfigValue('allow_voucher'))
	{
		?>
		<table class="table table-bordered table-striped">
			<tbody>
				<tr>
					<td class="form-horizontal">
						<div class="<?php echo $controlGroupClass; ?>">
							<label for="voucher_code" class="<?php echo $controlLabelClass; ?>"><?php echo JText::_('ESHOP_VOUCHER_TEXT'); ?>:</label>
							<div class="<?php echo $controlsClass; ?>">
								<input type="text" id="voucher_code" name="voucher_code" class="uk-input uk-form-width-medium" value="<?php echo htmlspecialchars($this->voucher_code, ENT_COMPAT, 'UTF-8'); ?>">
								<button type="button" class="uk-button uk-button-secondary" onclick="applyVoucher();" id="apply-voucher"><?php echo JText::_('ESHOP_VOUCHER_APPLY'); ?></button>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<?php
	}
	if (EshopHelper::getConfigValue('shipping_estimate') && $this->shipping_required)
	{
		?>
		<table class="table table-bordered table-striped">
			<tbody>
				<tr>
					<th class="uk-text-meta"><?php echo JText::_('ESHOP_SHIPPING_ESTIMATE_TEXT'); ?></th>
				</tr>
				<tr>
					<td class="form-horizontal">
					<div class="uk-margin-medium-top uk-margin-medium-bottom">
					
				<div class="uk-grid-small uk-grid-margin-small" uk-grid>
					<div class="uk-grid-item-match uk-width-expand@m">
	
						<div class="<?php echo $controlGroupClass; ?>">
							<label for="country_id" class="<?php echo $controlLabelClass; ?>"><span class="required">* </span><?php echo JText::_('ESHOP_COUNTRY'); ?>:</label>
							<div class="<?php echo $controlsClass; ?>">
								<?php echo $this->lists['country_id']; ?>
							</div>
						</div>
						<div class="<?php echo $controlGroupClass; ?>">
							<label for="zone_id" class="<?php echo $controlLabelClass; ?>"><span class="required">* </span><?php echo JText::_('ESHOP_REGION_STATE'); ?>:</label>
							<div class="<?php echo $controlsClass; ?>">
								<?php echo $this->lists['zone_id']; ?>
							</div>
						</div>
						<div class="<?php echo $controlGroupClass; ?>">
							<label for="postcode" class="<?php echo $controlLabelClass; ?>"><span class="required" id="postcode-required" style="display: none;">* </span><?php echo JText::_('ESHOP_POST_CODE'); ?>:</label>
							<div class="<?php echo $controlsClass; ?>">
								<input class="uk-input" name="postcode" id="postcode" value="<?php echo $this->postcode; ?>" />
							</div>
						</div>
						<div class="<?php echo $controlGroupClass; ?>">
							<label class="<?php echo $controlLabelClass; ?>"> </label>
							<div class="<?php echo $controlsClass; ?>">
								<button type="button" id="get-quotes" class="uk-button uk-button-secondary"><?php echo JText::_('ESHOP_GET_QUOTES'); ?></button>
							</div>
						</div>
					</div>
					
					<div class="uk-grid-item-match uk-width-expand@m">						
					</div>						
						
				</div>
					</td>
				</tr>
			</tbody>
		</table>
		<?php
	}
	?>
	<a class="uk-button uk-button-default" href="<?php echo JRoute::_(EshopHelper::getContinueShopingUrl()); ?>"><span uk-icon="arrow-left"></span><?php echo JText::_('ESHOP_CONTINUE_SHOPPING'); ?></a>
	<?php
	if (EshopHelper::getConfigValue('active_https'))
	{
		$checkoutUrl = JRoute::_(EshopRoute::getViewRoute('checkout'), true, 1);
	}
	else
	{
		$checkoutUrl = JRoute::_(EshopRoute::getViewRoute('checkout'));
	}
	?>
	<a class="uk-button uk-button-primary <?php echo $pullRightClass; ?>" href="<?php echo $checkoutUrl; ?>"><?php echo JText::_('ESHOP_CHECKOUT'); ?></a>
	
	<script type="text/javascript">
		//Function to update cart
		function updateCart()
		{
			Eshop.jQuery(function($){
				var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
				$.ajax({
					type: 'POST',
					url: siteUrl + 'index.php?option=com_eshop&task=cart.updates<?php echo EshopHelper::getAttachedLangLink(); ?>',
					data: $('.cart-info input[type=\'text\'], .cart-info input[type=\'hidden\']'),
					beforeSend: function() {
						$('#update-cart').attr('disabled', true);
						$('#update-cart').after('<span class="wait">&nbsp;<img src="components/com_eshop/assets/images/loading.svg" alt="" /></span>');
					},
					complete: function() {
						$('#update-cart').attr('disabled', false);
						$('.wait').remove();
					},
					success: function() {
						window.location.href = "<?php echo JRoute::_(EshopRoute::getViewRoute('cart')); ?>";
				  	}
				});
			})
		}

		Eshop.jQuery(function($) {
			//Ajax remove cart item
			$('.eshop-remove-item-cart').bind('click', function() {
				var aTag = $(this);
				var id = aTag.attr('id');
				var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
				$.ajax({
					type :'POST',
					url: siteUrl + 'index.php?option=com_eshop&task=cart.remove&key=' +  id + '&redirect=1<?php echo EshopHelper::getAttachedLangLink(); ?>',
					beforeSend: function() {
						aTag.attr('disabled', true);
						aTag.after('<span class="wait">&nbsp;<img src="components/com_eshop/assets/images/loading.svg" alt="" /></span>');
					},
					complete: function() {
						aTag.attr('disabled', false);
						$('.wait').remove();
					},
					success : function() {
						window.location.href = '<?php echo JRoute::_(EshopRoute::getViewRoute('cart')); ?>';
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});
			});
		});
		<?php
		if (EshopHelper::getConfigValue('allow_coupon'))
		{
			?>
			//Function to apply coupon
			function applyCoupon()
			{
				Eshop.jQuery(function($) {
					var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
					$.ajax({
						type: 'POST',
						url: siteUrl + 'index.php?option=com_eshop&task=cart.applyCoupon<?php echo EshopHelper::getAttachedLangLink(); ?>',
						data: 'coupon_code=' + document.getElementById('coupon_code').value,
						beforeSend: function() {
							$('#apply-coupon').attr('disabled', true);
							$('#apply-coupon').after('<span class="wait">&nbsp;<img src="components/com_eshop/assets/images/loading.svg" alt="" /></span>');
						},
						complete: function() {
							$('#apply-coupon').attr('disabled', false);
							$('.wait').remove();
						},
						success: function() {
							window.location.href = "<?php echo JRoute::_(EshopRoute::getViewRoute('cart')); ?>";
					  	}
					});
				});
			}
			<?php
		}
		if (EshopHelper::getConfigValue('allow_voucher'))
		{
			?>
			//Function to apply voucher
			function applyVoucher()
			{
				Eshop.jQuery(function($) {
					var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
					$.ajax({
						type: 'POST',
						url: siteUrl + 'index.php?option=com_eshop&task=cart.applyVoucher<?php echo EshopHelper::getAttachedLangLink(); ?>',
						data: 'voucher_code=' + document.getElementById('voucher_code').value,
						beforeSend: function() {
							$('#apply-voucher').attr('disabled', true);
							$('#apply-voucher').after('<span class="wait">&nbsp;<img src="components/com_eshop/assets/images/loading.svg" alt="" /></span>');
						},
						complete: function() {
							$('#apply-voucher').attr('disabled', false);
							$('.wait').remove();
						},
						success: function() {
							window.location.href = "<?php echo JRoute::_(EshopRoute::getViewRoute('cart')); ?>";
					  	}
					});
				});
			}
			<?php
		}
		if ($this->shipping_required)
		{
			?>
			Eshop.jQuery(function($){
				$('select[name=\'country_id\']').bind('change', function() {
					var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
					$.ajax({
						url: siteUrl + 'index.php?option=com_eshop&task=cart.getZones<?php echo EshopHelper::getAttachedLangLink(); ?>&country_id=' + this.value,
						dataType: 'json',
						beforeSend: function() {
							$('.wait').remove();
							$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="components/com_eshop/assets/images/loading.svg" alt="" /></span>');
						},
						complete: function() {
							$('.wait').remove();
						},
						success: function(json) {
							if (json['postcode_required'] == '1')
							{
								$('#postcode-required').show();
							}
							else
							{
								$('#postcode-required').hide();
							}
							html = '<option value=""><?php echo JText::_('ESHOP_PLEASE_SELECT'); ?></option>';
							if (json['zones'] != '')
							{
								for (var i = 0; i < json['zones'].length; i++)
								{
				        			html += '<option value="' + json['zones'][i]['id'] + '"';
									if (json['zones'][i]['id'] == '<?php $this->shipping_zone_id; ?>')
									{
					      				html += ' selected="selected"';
					    			}
					    			html += '>' + json['zones'][i]['zone_name'] + '</option>';
								}
							}
							$('select[name=\'zone_id\']').html(html);
						}
					});
				});
			});
			
			//Function to apply shipping
			function applyShipping()
			{
				Eshop.jQuery(function($){
					var shippingMethod = document.getElementsByName('shipping_method');
					var validated = false;
					var selectedShippingMethod = '';
					for (var i = 0, length = shippingMethod.length; i < length; i++)
					{
						if (shippingMethod[i].checked)
						{
							validated = true;
							selectedShippingMethod = shippingMethod[i].value;
							break;
					    }
					}
					if (!validated)
					{
						alert('<?php echo JText::_('ESHOP_ERROR_SHIPPING_METHOD'); ?>');
						return;
					}
					else
					{
						var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
						$.ajax({
							type: 'POST',
							url: siteUrl + 'index.php?option=com_eshop&task=cart.applyShipping<?php echo EshopHelper::getAttachedLangLink(); ?>',
							data: 'shipping_method=' + selectedShippingMethod,
							beforeSend: function() {
								$('#apply-shipping').attr('disabled', true);
								$('#apply-shipping').after('<span class="wait">&nbsp;<img src="components/com_eshop/assets/images/loading.svg" alt="" /></span>');
							},
							complete: function() {
								$('#apply-shipping').attr('disabled', false);
								$('.wait').remove();
							},
							success: function() {
								window.location.href = "<?php echo JRoute::_(EshopRoute::getViewRoute('cart')); ?>";
						  	}
						});
					}
				});
			}
	
			//Function to get quotes
			Eshop.jQuery(function($){
				$('#get-quotes').bind('click', function() {
					var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
					var dataString = 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val());
					$.ajax({
						type: 'POST',
						url: siteUrl + 'index.php?option=com_eshop&task=cart.getQuote<?php echo EshopHelper::getAttachedLangLink(); ?>',
						data: dataString,
						dataType: 'json',
						beforeSend: function() {
							$('#get-quotes').attr('disabled', true);
							$('#get-quotes').after('<span class="wait">&nbsp;<img src="components/com_eshop/assets/images/loading.svg" alt="" /></span>');
						},
						complete: function() {
							$('#get-quotes').attr('disabled', false);
							$('.wait').remove();
						},
						success: function(json) {
							$(' .error').remove();
							if (json['error'])
							{
								if (json['error']['warning'])
								{
									$.colorbox({
										overlayClose: true,
										opacity: 0.5,
										href: false,
										html: '<h3>' + json['error']['warning'] + '</h3>' + '<div class="no-shipping-method">' + '<?php echo JText::_('ESHOP_NO_SHIPPING_METHOD_AVAILABLE'); ?>' + '</div>'
									});
								}
								if (json['error']['country'])
								{
									$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
								}
								if (json['error']['zone'])
								{
									$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
								}
								if (json['error']['postcode'])
								{
									$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
								}
							}
							if (json['shipping_methods'])
							{
								//Prepare html for shipping methods list here
								html = '<div>';
								html += '<h3><?php echo JText::_('ESHOP_SHIPPING_METHOD_TITLE'); ?></h3>';
								html += '<form class="uk-form uk-margin-top" action="" method="post" enctype="multipart/form-data" name="shipping_form">';
								var firstShippingOption = true;
								for (i in json['shipping_methods'])
								{
									html += '<div class="uk-margin">';
									if (!json['shipping_methods'][i]['error'])
									{
										for (j in json['shipping_methods'][i]['quote'])
										{
											var checkedStr = ' ';
											<?php
											if ($this->shipping_method != '')
											{
												?>
												if (json['shipping_methods'][i]['quote'][j]['name'] == '<?php echo $this->shipping_method; ?>')
												{
													checkedStr = " checked = 'checked' ";
												}
												<?php
											}
											else 
											{
												?>
												if (firstShippingOption)
												{
													checkedStr = " checked = 'checked' ";
												}
												<?php
											}
											?>
											firstShippingOption = false;
											html += '<div class="uk-form-controls"><label>';
											html += '<input type="radio" value="' + json['shipping_methods'][i]['quote'][j]['name'] + '" name="shipping_method"' + checkedStr +'/>';
											html += ' ' + json['shipping_methods'][i]['quote'][j]['title'];
											if (json['shipping_methods'][i]['quote'][j]['text']) {
												html += ' (';
    											html += json['shipping_methods'][i]['quote'][j]['text'];
    											html += ')';
											}
											html += '</label></div>';
										}
									}
									else
									{
										html += json['shipping_methods'][i]['error'];
									}
									html += '</div>';
								}
								html += '<div class="uk-margin-top"><input class="uk-button uk-button-primary" type="button" onclick="applyShipping();" id="apply-shipping" value="<?php echo JText::_('ESHOP_SHIPPING_APPLY'); ?>"></div>';
								html += '</form>';
								html += '</div>';
								$.colorbox({
									overlayClose: true,
									opacity: 0.5,
									href: false,
									html: html
								});
							}
					  	}
					});
				});
			});
			<?php
		}
		?>
	</script>
	<?php
}