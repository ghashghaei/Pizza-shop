<?php

// no direct access
defined( '_JEXEC' ) or die();
$bootstrapHelper        = $this->bootstrapHelper;
$rowFluidClass          = $bootstrapHelper->getClassMapping('row-fluid');
$span2Class             = $bootstrapHelper->getClassMapping('span2');
$pullLeftClass          = $bootstrapHelper->getClassMapping('pull-left');
$btnClass				= $bootstrapHelper->getClassMapping('btn');

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
<span class="el-image uk-text-muted" uk-icon="icon: download; ratio: 3;"></span>
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
<h3 class="uk-text-success"><?php echo JText::_('ESHOP_DOWNLOADS'); ?></h3>
<?php
if (!count($this->downloads))
{
	?>
	<div class="no-content"><?php echo JText::_('ESHOP_NO_DOWNLOADS'); ?></div>
	<?php
}
else
{
	?>
	<div class="<?php echo $rowFluidClass; ?>">
		<form id="adminForm" class="download-list">
			<?php
			foreach ($this->downloads as $download)
			{
				?>
				<div class="order-id"><b><?php echo JText::_('ESHOP_ORDER_ID'); ?>: </b> #<?php echo $download->order_id; ?></div>
				<div class="download-size"><b><?php echo JText::_('ESHOP_SIZE'); ?>: </b><?php echo $download->size;  ?></div>
				<div class="download-content">
					<div>
						<b><?php echo JText::_('ESHOP_NAME'); ?>: </b><?php echo $download->download_name; ?><br />
					</div>
					<div>
						<b><?php echo JText::_('ESHOP_REMAINING'); ?>: </b> <?php echo $download->remaining; ?>
					</div>
					<div class="download-info" align="right">
						<a href="<?php echo JRoute::_('index.php?option=com_eshop&task=customer.downloadFile&order_id='.intval($download->order_id).'&download_code='.$download->download_code); ?>" title="<?php echo JText::_('ESHOP_DOWNLOAD'); ?>">
							<img src="<?php echo JUri::root(true); ?>/components/com_eshop/themes/default/images/download.png" />
						</a>
					</div>
				</div>
				<?php
			}
			?>
		</form>
	</div>
	<?php
}
?>
</div>
<script type="text/javascript">
	Eshop.jQuery(function($){
		$(document).ready(function(){
			$('#button-back-download').click(function() {
				var url = '<?php echo JRoute::_(EshopRoute::getViewRoute('customer')); ?>';
				$(location).attr('href', url);
			});
		})
	});
</script>