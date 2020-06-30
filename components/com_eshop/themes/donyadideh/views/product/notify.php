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
$input  = JFactory::getApplication()->input;
$bootstrapHelper        = $this->bootstrapHelper;
$controlGroupClass      = $bootstrapHelper->getClassMapping('control-group');
$controlLabelClass      = $bootstrapHelper->getClassMapping('control-label');
$controlsClass          = $bootstrapHelper->getClassMapping('controls');
$pullLeftClass          = $bootstrapHelper->getClassMapping('pull-left');
$btnClass				= $bootstrapHelper->getClassMapping('btn');
?>
<h3 id="make-notify-title"><?php echo JText::_('ESHOP_PRODUCT_NOTIFY_TITLE'); ?></h3>
<div id="make-notify-area">
	<div class="make-notify-intro"><small><?php echo sprintf(JText::_('ESHOP_PRODUCT_NOTIFY_DESC'), $this->item->product_name); ?></small></div>
	<form method="post" name="adminForm" id="adminForm" action="index.php" class="uk-form-stacked">
		<div class="uk-margin">
				<input type="text" class="uk-input uk-form-width-large" name="notify_email" id="notify_email" value="" placeholder="* <?php echo JText::_('ESHOP_EMAIL'); ?>" />
				<span style="display: none;" class="error email-required"><?php echo JText::_('ESHOP_EMAIL_REQUIRED'); ?></span>
				<span style="display: none;" class="error email-invalid"><?php echo JText::_('ESHOP_EMAIL_INVALID'); ?></span>
		</div>			
		<input type="hidden" name="product_id" id="product_id" value="<?php echo $input->getInt('id'); ?>" />
		<input type="button" class="uk-button uk-button-primary <?php echo $pullLeftClass; ?>" id="button-make-notify" value="<?php echo JText::_('ESHOP_SUBMIT'); ?>" />
		<span class="wait"></span>
	</form>
</div>
<script type="text/javascript">
	function isValidEmail(emailAddress)
	{
	    var pattern = new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
	    return pattern.test(emailAddress);
	}
	Eshop.jQuery(function($){
		$('#button-make-notify').click(function(){
			var contactEmail = $('#notify_email').val();
			var validated = true;
			if(contactEmail == '')
			{
				validated = false;
				$('.email-required').show();
			}
			else if (!isValidEmail(contactEmail))
			{
				validated = false;
				$('.email-required').hide();
				$('.email-invalid').show();
			}
			else
			{
				$('.email-required').hide();
				$('.email-invalid').hide();
			}
			
			if (validated)
			{
				var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
				$.ajax({
					type :'post',
					url: siteUrl + 'index.php?option=com_eshop&task=product.processNotify<?php echo EshopHelper::getAttachedLangLink(); ?>',
					data: $('#make-notify-area input[type=\'text\'], #make-notify-area input[type=\'hidden\']'),
					beforeSend: function() {
						$('.wait').html('<img src="<?php echo JUri::base(true); ?>/components/com_eshop/assets/images/loading.svg" alt="" />');
					},
					success : function(html) {
						$('#make-notify-area').html('<div>'+html+'</div>');
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});
			}
		});
	});
</script>
