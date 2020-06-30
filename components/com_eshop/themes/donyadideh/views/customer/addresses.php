<?php

// no direct access
defined( '_JEXEC' ) or die();

$language = JFactory::getLanguage();
$tag = $language->getTag();
$bootstrapHelper        = $this->bootstrapHelper;
$rowFluidClass          = $bootstrapHelper->getClassMapping('row-fluid');
$pullLeftClass          = $bootstrapHelper->getClassMapping('pull-left');
$pullRightClass         = $bootstrapHelper->getClassMapping('pull-right');
$btnClass				= $bootstrapHelper->getClassMapping('btn');

if (!$tag)
{
	$tag = 'en-GB';
}

if (isset($this->success))
{
	?>
	<script>
	var notifications = UIkit.notification('<?php echo $this->success; ?>', {
		pos: 'top-right',
		status: 'success'
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
		status: 'warning'
		});
	</script>
	<?php
}
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
<span class="el-image uk-text-muted" uk-icon="icon: location; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_MODIFY_ADDRESS'); ?></div>
</a>
</div>

<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php/customer/edit-account">
<span class="el-image uk-text-primary" uk-icon="icon: user; ratio: 3;"></span>
<div class="el-meta uk-text-meta uk-margin-top"><?php echo JText::_('ESHOP_EDIT_ACCOUNT'); ?></div>
</a>
</div>

</div>
</div>
</div>
</div>
</div>

<div class="uk-tile uk-tile-muted uk-padding uk-margin-large-top">
<h3 class="uk-text-success"><?php echo JText::_('ESHOP_ADDRESS_HISTORY'); ?></h3>
<?php
if (!count($this->addresses))
{
	?>
	<div class="no-content"><?php echo JText::_('ESHOP_NO_ADDRESS'); ?></div>
	<?php
}
else
{
	?>
	<div class="<?php echo $rowFluidClass; ?>">
		<form id="adminForm" class="order-list">
			<?php
			foreach ($this->addresses as $address)
			{
				?>
				<div class="content">
					<table class="list">
						<tr>
							<td class="left" width="80%">
								<?php
								$addressText = $address->firstname;
								if (EshopHelper::isFieldPublished('lastname') && $address->lastname != '')
								{
									$addressText .= " " . $address->lastname;
								}
								$addressText .= "<br />" . $address->email;
								$addressText .= "<br />" . $address->address_1;
								if (EshopHelper::isFieldPublished('address_2') && $address->address_2 != '')
								{
									$addressText .= ", " . $address->address_2;
								}
								if (EshopHelper::isFieldPublished('city') && $address->city != '')
								{
									$addressText .= " | " . $address->city;
								}
								if (EshopHelper::isFieldPublished('postcode') && $address->postcode != '')
								{
									$addressText .= ", " . $address->postcode;
								}
								if (EshopHelper::isFieldPublished('zone_id') && $address->zone_name != '')
								{
									$addressText .= "<br />" . $address->zone_name;
								}
								if (EshopHelper::isFieldPublished('country_id') && $address->country_name != '')
								{
									$addressText .= " | " . $address->country_name;
								}
								if (EshopHelper::isFieldPublished('telephone') && $address->telephone != '')
								{
									$addressText .= "<br />" . $address->telephone;
								}
								if (EshopHelper::isFieldPublished('fax') && $address->fax != '')
								{
									$addressText .= " | " . $address->fax;
								}
								if (EshopHelper::isFieldPublished('company_id') && $address->company_id != '')
								{
									$addressText .= "<br />" . $address->company_id;
								}
								if (EshopHelper::isFieldPublished('company') && $address->company != '')
								{
									$addressText .= " | " . $address->company;
								}
								echo $addressText;
								?>
							</td>
							<td class="right" width="20%">
								<input type="button" value="<?php echo JText::_('ESHOP_EDIT'); ?>" id="button-edit-address" class="uk-button uk-button-secondary" onclick="window.location.assign('<?php echo JText::_('edit-address'.'?aid='.$address->id); ?>');" />&nbsp; 
								<input type="button" value="<?php echo JText::_('ESHOP_DELETE'); ?>" id="<?php echo $address->id; ?>" class="button-delete-address uk-button uk-button-danger uk-button-small <?php echo $pullRightClass; ?>" />
							</td>
						</tr>
					</table>
				</div>	
				<?php
			}
			?>
		</form>
	</div>
	<?php
}
?>
<div class="<?php echo $rowFluidClass; ?>">
	<input type="button" value="<?php echo JText::_('ESHOP_ADD_ADDRESS'); ?>" id="button-new-address" class="uk-button uk-button-primary <?php echo $pullRightClass; ?>" />
</div>
</div>
<script type="text/javascript">
	Eshop.jQuery(function($){
		$(document).ready(function(){
			$('#button-back-address').click(function() {
				var url = '<?php echo JRoute::_(EshopRoute::getViewRoute('customer')); ?>';
				$(location).attr('href', url);
			});

			$('#button-new-address').click(function() {
				var url = '<?php echo JText::_('edit-address'); ?>';
				$(location).attr('href', url);
			});

			//process user
			$('.button-delete-address').on('click', function() {
				var id = $(this).attr('id');
				var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
				$.ajax({
					url: siteUrl + 'index.php?option=com_eshop&task=customer.deleteAddress<?php echo EshopHelper::getAttachedLangLink(); ?>&aid=' + id,
					type: 'post',
					data: $("#adminForm").serialize(),
					dataType: 'json',
					success: function(json) {
							$('.warning, .error').remove();
							if (json['return']) {
								window.location.href = json['return'];
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
		})
	});
</script>