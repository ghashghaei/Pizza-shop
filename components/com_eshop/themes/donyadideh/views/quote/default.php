<?php

// no direct access
defined( '_JEXEC' ) or die();
$bootstrapHelper        = $this->bootstrapHelper;
$rowFluidClass          = $bootstrapHelper->getClassMapping('row-fluid');
$controlGroupClass      = $bootstrapHelper->getClassMapping('control-group');
$controlLabelClass      = $bootstrapHelper->getClassMapping('control-label');
$controlsClass          = $bootstrapHelper->getClassMapping('controls');
$pullLeftClass          = $bootstrapHelper->getClassMapping('pull-left');
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
	<div class="success"><?php echo $this->success; ?></div>
	<?php
}
?>
<h3><?php echo JText::_('ESHOP_QUOTE_CART'); ?></h3>
<?php
if (!count($this->quoteData))
{
	?>
	<div class="no-content"><?php echo JText::_('ESHOP_QUOTE_EMPTY'); ?></div>
	<?php
}
else
{
	?>
	<div class="quote-info">
		<table class="table uk-table-responsive uk-table uk-table-hover">
			<thead>
				<tr>
					<th class="uk-text-center uk-text-meta uk-table-shrink"><?php echo JText::_('ESHOP_REMOVE'); ?></th>
					<th class="uk-text-center uk-text-meta uk-width-small"><?php echo JText::_('ESHOP_IMAGE'); ?></th>
					<th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_PRODUCT_NAME'); ?></th>
					<th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_MODEL'); ?></th>
					<th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_QUANTITY'); ?></th>
					<?php
					if (EshopHelper::showPrice())
					{
					?>
					<th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_UNIT_PRICE'); ?></th>
					<th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_TOTAL'); ?></th>
					<?php
					}
					?>
				</tr>
			</thead>
			<tbody>
				<?php
				$totalPrice = 0;
				$countProducts = 0;
				foreach ($this->quoteData as $key => $product)
				{
					$countProducts++;
					$optionData = $product['option_data'];
					$viewProductUrl = JRoute::_(EshopRoute::getProductRoute($product['product_id'], EshopHelper::getProductCategory($product['product_id'])));
					if (EshopHelper::showPrice() && !$product['product_call_for_price'])
					{
						$totalPrice += $product['total_price'];
					}
					?>
					<tr>
						<td class="uk-text-center uk-text-middle" style="vertical-align: middle;" data-content="<?php echo JText::_('ESHOP_REMOVE'); ?>">
							<a class="eshop-remove-item-quote" id="<?php echo $key; ?>" style="cursor: pointer;">
								<span class="uk-text-danger" uk-icon="close" title="<?php echo JText::_('ESHOP_REMOVE'); ?>"></span>
							</a>
						</td>
						<td class="uk-text-center uk-text-middle" style="vertical-align: middle;" data-content="<?php echo JText::_('ESHOP_IMAGE'); ?>">
							<a href="<?php echo $viewProductUrl; ?>">
								<img class="<?php echo $imgPolaroid; ?>" src="<?php echo $product['image']; ?>" />
							</a>
						</td>
						<td class="uk-text-center uk-text-middle" data-content="<?php echo JText::_('ESHOP_PRODUCT_NAME'); ?>">
							<a href="<?php echo $viewProductUrl; ?>">
								<?php echo $product['product_name']; ?>
							</a>
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
									<a onclick="quantityUpdate('+', 'quantity_quote_<?php echo $countProducts; ?>', <?php echo EshopHelper::getConfigValue('quantity_step', '1'); ?>)" class="<?php echo $btnClass; ?> btn-default button-plus" id="quote_<?php echo $countProducts; ?>">+</a>
										<input type="text" class="eshop-quantity-value" value="<?php echo htmlspecialchars($product['quantity'], ENT_COMPAT, 'UTF-8'); ?>" name="quantity[]" id="quantity_quote_<?php echo $countProducts; ?>" />
									<a onclick="quantityUpdate('-', 'quantity_quote_<?php echo $countProducts; ?>', <?php echo EshopHelper::getConfigValue('quantity_step', '1'); ?>)" class="<?php echo $btnClass; ?> btn-default button-minus" id="quote_<?php echo $countProducts; ?>">-</a>
								</span>
							</div>
						</td>
						<?php
						if (EshopHelper::showPrice())
						{
							?>
							<td class="uk-text-center uk-text-middle" data-content="<?php echo JText::_('ESHOP_UNIT_PRICE'); ?>">
								<?php
								if (!$product['product_call_for_price'])
								{
									echo $this->currency->format($product['price']);
								}
								?>
							</td>
							<td class="uk-text-center uk-text-middle" data-content="<?php echo JText::_('ESHOP_TOTAL'); ?>">
								<?php
								if (!$product['product_call_for_price'])
								{
									echo $this->currency->format($product['total_price']);
								}	
								?>
							</td>
							<?php
						}
						?>
					</tr>
					<?php
				}
				if (EshopHelper::showPrice())
				{
					?>
					<tr>
						<td colspan="6" class="uk-text-left"><?php echo JText::_('ESHOP_TOTAL'); ?>:</td>
						<td><strong><?php echo $this->currency->format($totalPrice); ?></strong></td>
					</tr>
					<?php
				}
				?>
			</tbody>
		</table>
	</div>
	<div>
		<div class="uk-margin uk-text-right">
			<button type="button" class="uk-button uk-button-default" onclick="updateQuote();" id="update-quote"><?php echo JText::_('ESHOP_UPDATE_QUOTE'); ?></button>
		</div>
	</div>
	
<table class="table table-bordered table-striped">	
	<tbody>
		<tr>
			<th class="uk-text-meta"><?php echo JText::_('ESHOP_QUOTE_FORM'); ?></th>
		</tr>
		<tr>
		<td class="form-horizontal">
<div class="uk-grid-small uk-grid-margin-small" uk-grid>
	<div class="uk-grid-item-match uk-width-expand@m">
	
		<div class="uk-margin-medium-top uk-margin-medium-bottom" id="quote-form-area">
			<form method="post" name="adminForm" id="adminForm" action="index.php" class="form form-horizontal">
				<div class="<?php echo $controlGroupClass; ?>">
					<label class="<?php echo $controlLabelClass; ?>" for="name"><span class="required">* </span><?php echo JText::_('ESHOP_QUOTE_NAME'); ?>:</label>
					<div class="<?php echo $controlsClass; ?> docs-input-sizes">
						<input type="text" class="uk-input" name="name" id="name" value="" />
						<span style="display: none;" class="error name-required"><?php echo JText::_('ESHOP_QUOTE_NAME_REQUIRED'); ?></span>
					</div>
				</div>
				<div class="<?php echo $controlGroupClass; ?>">
					<label class="<?php echo $controlLabelClass; ?>" for="email"><span class="required">* </span><?php echo JText::_('ESHOP_QUOTE_EMAIL'); ?>:</label>
					<div class="<?php echo $controlsClass; ?> docs-input-sizes">
						<input type="text" class="uk-input" name="email" id="email" value="" />
						<span style="display: none;" class="error email-required"><?php echo JText::_('ESHOP_QUOTE_EMAIL_REQUIRED'); ?></span>
						<span style="display: none;" class="error email-invalid"><?php echo JText::_('ESHOP_QUOTE_EMAIL_INVALID'); ?></span>
					</div>
				</div>
				<div class="<?php echo $controlGroupClass; ?>">
					<label class="<?php echo $controlLabelClass; ?>" for="company"><?php echo JText::_('ESHOP_QUOTE_COMPANY'); ?>:</label>
					<div class="<?php echo $controlsClass; ?> docs-input-sizes">
						<input type="text" class="uk-input" name="company" id="company" value="" />
					</div>
				</div>
				<div class="<?php echo $controlGroupClass; ?>">
					<label class="<?php echo $controlLabelClass; ?>" for="phone"><?php echo JText::_('ESHOP_QUOTE_TELEPHONE'); ?>:</label>
					<div class="<?php echo $controlsClass; ?> docs-input-sizes">
						<input type="text" class="uk-input" name="telephone" id="telephone" value="" />
					</div>
				</div>
				<div class="<?php echo $controlGroupClass; ?>">
					<label class="<?php echo $controlLabelClass; ?>" for="message"><span class="required">* </span><?php echo JText::_('ESHOP_QUOTE_MESSAGE'); ?>:</label>
					<div class="<?php echo $controlsClass; ?> docs-input-sizes">
						<textarea class="uk-textarea" rows="7" cols="5" name="message" id="message"></textarea>
						<span style="display: none;" class="error message-required"><?php echo JText::_('ESHOP_QUOTE_MESSAGE_REQUIRED'); ?></span>
					</div>
				</div>
				<?php
				if (EshopHelper::getConfigValue('acymailing_integration') || EshopHelper::getConfigValue('mailchimp_integration'))
				{
					?>
					<div class="<?php echo $controlGroupClass; ?>">
						<span class="newsletter-interest">
							<input type="checkbox" value="1" name="newsletter_interest" /><?php echo JText::_('ESHOP_NEWSLETTER_INTEREST'); ?>
						</span>
					</div>	
					<?php
				}
				
				if ($this->showCaptcha)
				{
				    if ($this->captchaPlugin == 'recaptcha_invisible')
				    {
				        $style = ' style="display:none;"';
				    }
				    else
				    {
				        $style = '';
				    }
					?>
					<div class="<?php echo $controlGroupClass; ?>"<?php echo $style; ?>>
						<div class="<?php echo $controlLabelClass; ?>">
            				<?php echo JText::_('ESHOP_CAPTCHA'); ?>
							<span class="required">* </span>
						</div>
						<div class="<?php echo $controlsClass; ?>">
							<?php echo $this->captcha; ?>
						</div>
					</div>
					<?php
				}
				?>
				<div class="<?php echo $controlsClass; ?> docs-input-sizes">
				<input type="button" class="uk-button uk-button-primary" id="button-ask-quote" value="<?php echo JText::_('ESHOP_QUOTE_REQUEST_QUOTE'); ?>" />
				<span class="wait"></span>
				</div>
			</form>
		</div>
	</div>
	
	<div class="uk-grid-item-match uk-width-expand@m">

	</div>
</div>			
		</td>
		</tr>
	</tbody>
</table>	
	
	
	<script type="text/javascript">
		//Function to update quote
		function updateQuote(key)
		{
			Eshop.jQuery(function($){
				var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
				$.ajax({
					type: 'POST',
					url: siteUrl + 'index.php?option=com_eshop&task=quote.updates<?php echo EshopHelper::getAttachedLangLink(); ?>',
					data: $('.quote-info input[type=\'text\'], .quote-info input[type=\'hidden\']'),
					beforeSend: function() {
						$('#update-quote').attr('disabled', true);
						$('#update-quote').after('<span class="wait">&nbsp;<img src="components/com_eshop/assets/images/loading.svg" alt="" /></span>');
					},
					complete: function() {
						$('#update-quote').attr('disabled', false);
						$('.wait').remove();
					},
					success: function() {
						window.location.href = "<?php echo JRoute::_(EshopRoute::getViewRoute('quote')); ?>";
				  	}
				});
			})
		}

		Eshop.jQuery(function($) {
			//Ajax remove quote item
			$('.eshop-remove-item-quote').bind('click', function() {
				var aTag = $(this);
				var id = aTag.attr('id');
				var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
				$.ajax({
					type :'POST',
					url: siteUrl + 'index.php?option=com_eshop&task=quote.remove&key=' +  id + '&redirect=1<?php echo EshopHelper::getAttachedLangLink(); ?>',
					beforeSend: function() {
						aTag.attr('disabled', true);
						aTag.after('<span class="wait">&nbsp;<img src="components/com_eshop/assets/images/loading.svg" alt="" /></span>');
					},
					complete: function() {
						aTag.attr('disabled', false);
						$('.wait').remove();
					},
					success : function() {
						window.location.href = '<?php echo JRoute::_(EshopRoute::getViewRoute('quote')); ?>';
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});
			});
		});

		Eshop.jQuery(function($){
			$('#button-ask-quote').click(function(){
				var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
				$.ajax({
					url: siteUrl + 'index.php?option=com_eshop&task=quote.processQuote<?php echo EshopHelper::getAttachedLangLink(); ?>',
					type: 'post',
					data: $('#quote-form-area input[type=\'text\'], #quote-form-area input[type=\'hidden\'], #quote-form-area textarea, #quote-form-area input[type=\'checkbox\']:checked'),
					dataType: 'json',
					beforeSend: function() {
						$('#button-ask-quote').attr('disabled', true);
						$('#button-ask-quote').after('<span class="wait">&nbsp;<img src="components/com_eshop/assets/images/loading.svg" alt="" /></span>');
					},
					complete: function() {
						$('#button-ask-quote').attr('disabled', false);
						$('.wait').remove();
					},
					success: function(json) {
						$('.error').remove();
						if (json['return']) {
							window.location.href = json['return'];
						} else if (json['error']) {
							//name error
							if (json['error']['name']) {
								$('#quote-form-area input[name=\'name\']').after('<span class="error">' + json['error']['name'] + '</span>');
							}
							//name error
							if (json['error']['email']) {
								$('#quote-form-area input[name=\'email\']').after('<span class="error">' + json['error']['email'] + '</span>');
							}
							//message error
							if (json['error']['message']) {
								$('#message').after('<span class="error">' + json['error']['message'] + '</span>');
							}
							//captcha error
							if (json['error']['captcha']) {
								$('#dynamic_recaptcha_1').after('<span class="error">' + json['error']['captcha'] + '</span>');
							}
						} else {
							//redirect to complete page
							window.location.href = json['success'];
						}	  
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});
			});
		});
	</script>
	<?php
}