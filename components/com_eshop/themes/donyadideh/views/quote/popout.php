<?php

// no direct access
defined( '_JEXEC' ) or die();
$bootstrapHelper        = $this->bootstrapHelper;
$controlGroupClass      = $bootstrapHelper->getClassMapping('control-group');
$controlsClass          = $bootstrapHelper->getClassMapping('controls');
$inputAppendClass       = $bootstrapHelper->getClassMapping('input-append');
$inputPrependClass      = $bootstrapHelper->getClassMapping('input-prepend');
$imgPolaroid            = $bootstrapHelper->getClassMapping('img-polaroid');
$btnClass				= $bootstrapHelper->getClassMapping('btn');
?>
<script src="<?php echo JUri::base(true); ?>/components/com_eshop/assets/colorbox/jquery.colorbox.js" type="text/javascript"></script>
<script src="<?php echo JUri::base(true); ?>/components/com_eshop/assets/js/eshop.js" type="text/javascript"></script>
<h3><?php echo JText::_('ESHOP_QUOTE_CART'); ?></h3>
<?php
if (isset($this->success))
{
	?>
	<div class="success"><?php echo $this->success; ?></div>
	<?php
}
?>
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
		<table class="table table-responsive table-bordered table-striped">
			<thead>
				<tr>
					<th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_REMOVE'); ?></th>
					<th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_IMAGE'); ?></th>
					<th class="uk-text-meta"><?php echo JText::_('ESHOP_PRODUCT_NAME'); ?></th>
					<th class="uk-text-center uk-text-meta"><?php echo JText::_('ESHOP_QUANTITY'); ?></th>
					<?php
					if (EshopHelper::showPrice())
					{
						?>
						<th class="uk-text-center uk-text-meta" nowrap="nowrap"><?php echo JText::_('ESHOP_UNIT_PRICE'); ?></th>
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
						<td class="eshop-center-text" style="vertical-align: middle;" data-content="<?php echo JText::_('ESHOP_REMOVE'); ?>">
							<a class="eshop-remove-item-quote" id="<?php echo $key; ?>" style="cursor: pointer;">
								<span class="uk-text-danger" uk-icon="icon: close; ratio: 1" title="<?php echo JText::_('ESHOP_REMOVE'); ?>"></span>
							</a>
						</td>
						<td class="muted eshop-center-text" style="vertical-align: middle;" data-content="<?php echo JText::_('ESHOP_IMAGE'); ?>">
							<a href="<?php echo $viewProductUrl; ?>">
								<img class="<?php echo $imgPolaroid; ?>" src="<?php echo $product['image']; ?>" />
							</a>
						</td>
						<td class="uk-width-small uk-text-middle" data-content="<?php echo JText::_('ESHOP_PRODUCT_NAME'); ?>">
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
						<td class="uk-text-middle" data-content="<?php echo JText::_('ESHOP_QUANTITY'); ?>">
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
							<td class="uk-text-middle" data-content="<?php echo JText::_('ESHOP_UNIT_PRICE'); ?>">
								<?php
								if (!$product['product_call_for_price'])
								{
									echo $this->currency->format($product['price']);
								}
								?>
							</td>
							<td class="uk-text-middle" data-content="<?php echo JText::_('ESHOP_TOTAL'); ?>">
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
				?>
			</tbody>
		</table>
		<?php
		if (EshopHelper::showPrice())
		{
			?>
			<div class="uk-margin totals text-center uk-text-center">
				<div>
					<?php echo JText::_('ESHOP_TOTAL'); ?>:
					<?php echo $this->currency->format($totalPrice); ?>
				</div>
			</div>
			<?php
		}
		?>
	</div>
	<div class="uk-text-center bottom <?php echo $controlGroupClass; ?>">
		<div class="<?php echo $controlsClass; ?>">
			<button type="button" class="uk-button uk-button-secondary" onclick="updateQuote();" id="update-quote"><?php echo JText::_('ESHOP_UPDATE_QUOTE'); ?></button>
			<a class="uk-button uk-button-primary" href="<?php echo JRoute::_(EshopRoute::getViewRoute('quote')); ?>"><?php echo JText::_('ESHOP_QUOTE_FORM'); ?></a>
		</div>
	</div>
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
						$.ajax({
							url: siteUrl + 'index.php?option=com_eshop&view=quote&layout=popout&format=raw<?php echo EshopHelper::getAttachedLangLink(); ?>&pt=<?php echo time(); ?>',
							dataType: 'html',
							success: function(html) {
								$.colorbox({
									overlayClose: true,
									opacity: 0.5,
									href: false,
									html: html
								});
								$.ajax({
									url: siteUrl + 'index.php?option=com_eshop&view=quote&layout=mini&format=raw<?php echo EshopHelper::getAttachedLangLink(); ?>&pt=<?php echo time(); ?>',
									dataType: 'html',
									success: function(html) {
										jQuery('#eshop-quote').html(html);
										jQuery('.eshop-content').hide();
									},
									error: function(xhr, ajaxOptions, thrownError) {
										alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
									}
								});
							},
							error: function(xhr, ajaxOptions, thrownError) {
								alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
							}
						});
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
						$.ajax({
							url: siteUrl + 'index.php?option=com_eshop&view=quote&layout=popout&format=raw<?php echo EshopHelper::getAttachedLangLink(); ?>&pt=<?php echo time(); ?>',
							dataType: 'html',
							success: function(html) {
								$.colorbox({
									overlayClose: true,
									opacity: 0.5,
									href: false,
									html: html
								});
								$.ajax({
									url: siteUrl + 'index.php?option=com_eshop&view=quote&layout=mini&format=raw<?php echo EshopHelper::getAttachedLangLink(); ?>&pt=<?php echo time(); ?>',
									dataType: 'html',
									success: function(html) {
										jQuery('#eshop-quote').html(html);
										jQuery('.eshop-content').hide();
									},
									error: function(xhr, ajaxOptions, thrownError) {
										alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
									}
								});
							},
							error: function(xhr, ajaxOptions, thrownError) {
								alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
							}
						});
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