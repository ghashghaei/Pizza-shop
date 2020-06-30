<?php

// no direct access
defined( '_JEXEC' ) or die();
$name = explode(' ', $this->user->get('name'));
$firstName = isset($name[0]) ? $name[0] : '';
$lastName = isset($name[1]) ? $name[1] : '';
$bootstrapHelper        = $this->bootstrapHelper;
$controlGroupClass      = $bootstrapHelper->getClassMapping('control-group');
$controlLabelClass      = $bootstrapHelper->getClassMapping('control-label');
$controlsClass          = $bootstrapHelper->getClassMapping('controls');
$pullLeftClass          = $bootstrapHelper->getClassMapping('pull-left');
$btnClass				= $bootstrapHelper->getClassMapping('btn');
?>

<div class="uk-container">
<div class="uk-grid-margin" uk-grid>
<div class="uk-width-1-1@m">
<div class="uk-margin uk-text-center">
<div class="uk-grid-small uk-child-width-1-2 uk-child-width-1-3@s uk-child-width-1-4@m uk-child-width-1-5@l uk-child-width-1-5@xl uk-grid-match" uk-grid>

<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php/customer">
<span class="el-image uk-text-primary" uk-icon="icon: home; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_MY_ACCOUNT'); ?></div>
</a>
</div>

<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php/customer/order-history">
<span class="el-image uk-text-primary" uk-icon="icon: cart; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_ORDER_HISTORY'); ?></div>
</a>
</div>

<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php/customer/downloads">
<span class="el-image uk-text-primary" uk-icon="icon: download; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_DOWNLOADS'); ?></div>
</a>
</div>

<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php/customer/addresses">
<span class="el-image uk-text-primary" uk-icon="icon: location; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_MODIFY_ADDRESS'); ?></div>
</a>
</div>

<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php/customer/edit-account">
<span class="el-image uk-text-muted" uk-icon="icon: user; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_EDIT_ACCOUNT'); ?></div>
</a>
</div>

</div>
</div>
</div>
</div>
</div>

<div class="uk-tile uk-tile-muted uk-padding uk-margin-large-top">

<h3 class="uk-text-success"><?php echo JText::_('ESHOP_EDIT_ACCOUNT'); ?></h3>
<form id="adminForm" action="<?php echo JRoute::_('index.php?option=com_eshop&task=customer.processUser'); ?>" class="uk-form-horizontal" method="post">
	<div id="process-user">
		<div class="<?php echo $controlGroupClass; ?>">
			<label for="firstname" class="uk-form-label"><span class="required">* </span><?php echo JText::_('ESHOP_FIRST_NAME'); ?></label>
			<div class="uk-form-controls">
				<input type="text" name="firstname" id="firstname" class="uk-input" value="<?php echo isset($this->userInfo->firstname) ? htmlspecialchars($this->userInfo->firstname, ENT_COMPAT, 'UTF-8') : htmlspecialchars($firstName, ENT_COMPAT, 'UTF-8'); ?>">
			</div>
		</div>
		<div class="<?php echo $controlGroupClass; ?>">
			<label for="lastname" class="uk-form-label"><span class="required">* </span><?php echo JText::_('ESHOP_LAST_NAME'); ?></label>
			<div class="uk-form-controls">
				<input type="text" name="lastname" id="lastname" class="uk-input" value="<?php echo isset($this->userInfo->lastname) ? htmlspecialchars($this->userInfo->lastname, ENT_COMPAT, 'UTF-8') : htmlspecialchars($lastName, ENT_COMPAT, 'UTF-8'); ?>">
			</div>
		</div>
		<div class="<?php echo $controlGroupClass; ?>">
			<label for="username" class="uk-form-label"><span class="required">* </span><?php echo JText::_('ESHOP_USERNAME'); ?></label>
			<div class="uk-form-controls">
				<input type="text" name="username" id="username" class="uk-input" value="<?php echo htmlspecialchars($this->userInfo->username, ENT_COMPAT, 'UTF-8'); ?>">
			</div>
		</div>
		<div class="<?php echo $controlGroupClass; ?>">
			<label for="password1" class="uk-form-label"><?php echo JText::_('ESHOP_PASSWORD'); ?></label>
			<div class="uk-form-controls">
				<input type="password" name="password1" id="password1" class="uk-input" value="">
			</div>
		</div>
		<div class="<?php echo $controlGroupClass; ?>">
			<label for="password2" class="uk-form-label"><?php echo JText::_('ESHOP_CONFIRM_PASSWORD'); ?></label>
			<div class="uk-form-controls">
				<input type="password" name="password2" id="password2" class="uk-input" value="">
			</div>
		</div>
		<div class="<?php echo $controlGroupClass; ?>">
			<label for="email" class="uk-form-label"><span class="required">* </span><?php echo JText::_('ESHOP_EMAIL'); ?></label>
			<div class="uk-form-controls">
				<input type="text" name="email" id="email" class="uk-input" value="<?php echo isset($this->userInfo->email) ? htmlspecialchars($this->userInfo->email, ENT_COMPAT, 'UTF-8') : htmlspecialchars($this->user->get('email'), ENT_COMPAT, 'UTF-8'); ?>">
			</div>
		</div>
		<div class="<?php echo $controlGroupClass; ?>">
			<label for="telephone" class="uk-form-label"><?php echo JText::_('ESHOP_TELEPHONE'); ?></label>
			<div class="uk-form-controls">
				<input type="text" name="telephone" id="telephone" class="uk-input" value="<?php echo isset($this->userInfo->telephone) ? htmlspecialchars($this->userInfo->telephone, ENT_COMPAT, 'UTF-8') : ''; ?>">
			</div>
		</div>
		<div class="<?php echo $controlGroupClass; ?>">
			<label for="fax" class="uk-form-label"><?php echo JText::_('ESHOP_FAX'); ?></label>
			<div class="uk-form-controls">
				<input type="text" name="fax" id="fax" class="uk-input" value="<?php echo isset($this->userInfo->fax) ? htmlspecialchars($this->userInfo->fax, ENT_COMPAT, 'UTF-8') : ''; ?>">
			</div>
		</div>
		<?php
		if (isset($this->customergroup_id))
		{
			?>
			<div class="<?php echo $controlGroupClass; ?>">
				<label for="fax" class="uk-form-label"><?php echo JText::_('ESHOP_CUSTOMER_GROUP'); ?></label>
				<div class="uk-form-controls">
					<?php echo $this->customergroup_id; ?>
				</div>
			</div>
			<?php
		}
		elseif (isset($this->default_customergroup_id))
		{
			?>
			<input type="hidden" name="customergroup_id" class="uk-input" value="<?php echo $this->default_customergroup_id; ?>" />
			<?php
		}
		?>
	</div>
	<div class="uk-form-controls">
	<div class="no_margin_left <?php echo $pullLeftClass; ?>">
		<input type="button" value="<?php echo JText::_('ESHOP_BACK'); ?>" id="button-back-user-infor" class="uk-button uk-button-secondary">
		<input type="button" value="<?php echo JText::_('ESHOP_SAVE'); ?>" id="button-user-infor" class="uk-button uk-button-primary">
		<input type="hidden" name="id" value="<?php echo isset($this->userInfo->id) ? $this->userInfo->id : ''; ?>">
	</div>
	</div>
</form>
</div>
<script type="text/javascript">
	Eshop.jQuery(function($){
		$(document).ready(function(){
			$('#button-back-user-infor').click(function(){
				var url = '<?php echo JRoute::_(EshopRoute::getViewRoute('customer')); ?>';
				$(location).attr('href',url);
			});
		})
	
		//process user
		$('#button-user-infor').on('click', function() {
			var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
			$.ajax({
				url: siteUrl + 'index.php?option=com_eshop&task=customer.processUser<?php echo EshopHelper::getAttachedLangLink(); ?>',
				type: 'post',
				data: $("#adminForm").serialize(),
				dataType: 'json',
				success: function(json) {
						$('.warning, .error').remove();
						if (json['return']) {
							window.location.href = json['return'];
						} else if (json['error']) {
						//Firstname error
						if (json['error']['firstname']) {
							$('#process-user input[name=\'firstname\']').after('<span class="error">' + json['error']['firstname'] + '</span>');
						}
						//Lastname error
						if (json['error']['lastname']) {
							$('#process-user input[name=\'lastname\']').after('<span class="error">' + json['error']['lastname'] + '</span>');
						}
						//Username error
						if (json['error']['username']) {
							$('#process-user input[name=\'username\']').after('<span class="error">' + json['error']['username'] + '</span>');
						}
						if (json['error']['username_existed']) {
							$('#process-user input[name=\'username\']').after('<span class="error">' + json['error']['username_existed'] + '</span>');
						}
						//Password error
						if (json['error']['password']) {
							$('#process-user input[name=\'password1\']').after('<span class="error">' + json['error']['password'] + '</span>');
						}
						//Confirm password error
						if (json['error']['confirm']) {
							$('#process-user input[name=\'password2\']').after('<span class="error">' + json['error']['confirm'] + '</span>');
						}
						//Email validate
						if (json['error']['email']) {
							$('#process-user input[name=\'email\']').after('<span class="error">' + json['error']['email'] + '</span>');
						}
						//Email error
						if (json['error']['email_existed']) {
							$('#process-user input[name=\'email\']').after('<span class="error">' + json['error']['email_existed'] + '</span>');
						}
							
					} else {
						$('.error').remove();
						$('.warning, .error').remove();
						
					}	  
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});	
		});

		
	});
</script>