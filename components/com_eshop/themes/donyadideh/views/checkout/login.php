<?php

// no direct access
defined( '_JEXEC' ) or die();
$bootstrapHelper        = $this->bootstrapHelper;
$span5Class             = $bootstrapHelper->getClassMapping('span5');
$span6Class             = $bootstrapHelper->getClassMapping('span6');
$controlGroupClass      = $bootstrapHelper->getClassMapping('control-group');
$controlLabelClass      = $bootstrapHelper->getClassMapping('control-label');
$controlsClass          = $bootstrapHelper->getClassMapping('controls');
$pullLeftClass          = $bootstrapHelper->getClassMapping('pull-left');
$btnClass				= $bootstrapHelper->getClassMapping('btn');
?>
<div class="uk-margin uk-grid-small uk-grid-margin-small" uk-grid>
<div class="uk-grid-item-match uk-width-expand@m">
	<div class="uk-tile-muted uk-tile uk-tile-small">
	<?php
	if (EshopHelper::getCheckoutType() != 'guest_only')
	{
		?>
		<h4><?php echo JText::_('ESHOP_CHECKOUT_NEW_CUSTOMER'); ?></h4>
		<p><?php echo JText::_('ESHOP_CHECKOUT_NEW_CUSTOMER_INTRO'); ?></p>
		<div class="uk-margin">
		<label class="radio"><input type="radio" value="register" name="account" checked="checked" /> <?php echo JText::_('ESHOP_REGISTER_ACCOUNT'); ?></label>
		</div>
		<?php
	}
	if (EshopHelper::getCheckoutType() != 'registered_only')
	{
		?>
		<div class="uk-margin">
		<label class="radio"><input type="radio" value="guest" name="account" <?php if (EshopHelper::getCheckoutType() == 'guest_only') echo 'checked="checked"'; ?> /> <?php echo JText::_('ESHOP_GUEST_CHECKOUT'); ?></label>
		</div>
		<?php
	}
	?>
	<div class="uk-margin">
	<input type="button" class="uk-button uk-button-primary" id="button-account" value="<?php echo JText::_('ESHOP_CONTINUE'); ?>" />
	</div>
	</div>
</div>



<?php
if (EshopHelper::getCheckoutType() != 'guest_only')
{
?>
<div class="uk-grid-item-match uk-width-expand@m">
	<div class="uk-tile-muted uk-tile uk-tile-small">
	<div id="login">
		<h4><?php echo JText::_('ESHOP_REGISTERED_CUSTOMER'); ?></h4>
		<p><?php echo JText::_('ESHOP_REGISTERED_CUSTOMER_INTRO'); ?></p>
		<fieldset>
			<div class="<?php echo $controlGroupClass; ?>">
				<div class="<?php echo $controlsClass; ?>">
					<input type="text" placeholder="<?php echo JText::_('ESHOP_USERNAME_INTRO'); ?>" id="username" name="username" class="uk-input uk-form-width-large focused" />
				</div>
			</div>
			<div class="<?php echo $controlGroupClass; ?>">
				<div class="<?php echo $controlsClass; ?>">
					<input type="password" placeholder="<?php echo JText::_('ESHOP_PASSWORD_INTRO'); ?>" id="password" name="password" class="uk-input uk-form-width-large" />
				</div>
			</div>
			<label class="checkbox" for="remember">
				<input type="checkbox" alt="<?php echo JText::_('ESHOP_REMEMBER_ME'); ?>" value="yes" class="inputbox" name="remember" id="remember" /> <small><?php echo JText::_('ESHOP_REMEMBER_ME'); ?></small>
			</label>
			<div class="uk-margin">
			<input type="button" class="<?php echo $btnClass; ?> btn-primary <?php echo $pullLeftClass; ?>" id="button-login" value="<?php echo JText::_('ESHOP_CONTINUE'); ?>" />
			<?php echo JHtml::_('form.token'); ?>
			</div>
		</fieldset>
		<div class="uk-text-right">
				<a href="<?php echo JRoute::_('index.php?option=com_users&view=reset'); ?>">
				<span uk-icon="refresh"></span>
				<small><?php echo JText::_('ESHOP_FORGOT_YOUR_PASSWORD'); ?></small></a>
		</div>
	</div>
	</div>
</div>	
<?php
}
?>

</div>

<script type="text/javascript">
	//Script to change Payment Address heading when changing checkout options between Register and Guest
	Eshop.jQuery(document).ready(function($){
		$('#checkout-options .checkout-content input[name=\'account\']').click(function(){
			if ($(this).val() == 'register') {
				$('#payment-address .checkout-heading').html('<?php echo JText::_('ESHOP_CHECKOUT_STEP_2_REGISTER'); ?>');
			} else {
				$('#payment-address .checkout-heading').html('<?php echo JText::_('ESHOP_CHECKOUT_STEP_2_GUEST'); ?>');
			}
		});

		//Checkout options - will run if user choose Register Account or Guest Checkout
		$('#button-account').click(function(){
			var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
			$.ajax({
				url: siteUrl + 'index.php?option=com_eshop&view=checkout&layout=' + $('input[name=\'account\']:checked').attr('value') + '&format=raw<?php echo EshopHelper::getAttachedLangLink(); ?>',
				dataType: 'html',
				beforeSend: function() {
					$('#button-account').attr('disabled', true);
					$('#button-account').after('<span class="wait">&nbsp;<img src="components/com_eshop/assets/images/loading.svg" alt="" /></span>');
				},
				complete: function() {
					$('#button-account').attr('disabled', false);
					$('.wait').remove();
				},
				success: function(html) {
					$('#payment-address .checkout-content').html(html);
					$('#checkout-options .checkout-content').slideUp('slow');
					$('#payment-address .checkout-content').slideDown('slow');
					$('.checkout-heading a').remove();
					$('#checkout-options .checkout-heading').append('<a><?php echo JText::_('ESHOP_EDIT'); ?><span class="uk-margin-small-left" uk-icon="settings"></span></a>');
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		});

		
		//Login - will run if user choose login with an existed account
		$('#button-login').click(function(){
			var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
			$.ajax({
				url: siteUrl + 'index.php?option=com_eshop&task=checkout.login<?php echo EshopHelper::getAttachedLangLink(); ?>',
				type: 'post',
				data: $('#checkout-options #login :input'),
				dataType: 'json',
				beforeSend: function() {
					$('#button-login').attr('disabled', true);
					$('#button-login').after('<span class="wait">&nbsp;<img src="components/com_eshop/assets/images/loading.svg" alt="" /></span>');
				},	
				complete: function() {
					$('#button-login').attr('disabled', false);
					$('.wait').remove();
				},				
				success: function(json) {
					$('.warning, .error').remove();
					if (json['return']) {
						window.location.href = json['return'];
					} else if (json['error']) {
						$('#checkout-options .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '</div>');
						$('.warning').fadeIn('slow');
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		});
	});
</script>