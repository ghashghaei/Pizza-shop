<?php

// no direct access
defined( '_JEXEC' ) or die();
$bootstrapHelper        = $this->bootstrapHelper;
$pullRightClass         = $bootstrapHelper->getClassMapping('pull-right');
$btnClass				= $bootstrapHelper->getClassMapping('btn');

$user = JFactory::getUser();
$language = JFactory::getLanguage();
$tag = $language->getTag();

if (!$tag)
{
	$tag = 'en-GB';
}

if(!$this->orderProducts)
{
	?>
	<script>
	var notifications = UIkit.notification('<?php echo JText::_('ESHOP_ORDER_DOES_NOT_EXITS'); ?>', {
		pos: 'top-right',
		status: 'warning'
		});
	</script>
	<?php
}
else
{
	$hasShipping = $this->orderInfor->shipping_method;
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
<span class="el-image uk-text-muted" uk-icon="icon: cart; ratio: 3;"></span>
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
<h3 class="uk-text-success"><?php echo JText::_('ESHOP_ORDER_ID'); ?>: <?php echo $this->orderInfor->id; ?>#</h3>

	<form id="adminForm">
		<table cellpadding="0" cellspacing="0" class="list">
			<thead>
				<tr>
					<td colspan="2" class="left">
						<?php echo JText::_('ESHOP_ORDER_DETAILS'); ?>
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width: 50%;" class="left">
						 <b><?php echo JText::_('ESHOP_ORDER_ID'); ?>: </b><?php echo $this->orderInfor->id; ?>#<br />
	         			 <b><?php echo JText::_('ESHOP_DATE_ADDED'); ?>: </b> <?php echo JHtml::date($this->orderInfor->created_date, EshopHelper::getConfigValue('date_format', 'm-d-Y'), null); ?>
	         		</td>
					<td style="width: 50%;" class="left">
					    <b><?php echo JText::_('ESHOP_PAYMENT_METHOD'); ?>: </b> <?php echo JText::_($this->orderInfor->payment_method_title); ?><br />
					    <b><?php echo JText::_('ESHOP_SHIPPING_METHOD'); ?>: </b> <?php echo JText::_($this->orderInfor->shipping_method_title); ?><br />
	                </td>
				</tr>
			</tbody>
		</table>
		<table cellpadding="0" cellspacing="0" class="list">
			<thead>
				<tr>
					<td class="left">
						<?php echo JText::_('ESHOP_PAYMENT_ADDRESS'); ?>
					</td>
					<?php
					if ($hasShipping)
					{
						?>
						<td class="left">
							<?php echo JText::_('ESHOP_SHIPPING_ADDRESS'); ?>
						</td>
						<?php
					}
					?>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="left">
						<?php
						echo EshopHelper::getPaymentAddress($this->orderInfor);
						$excludedFields = array('firstname', 'lastname', 'email', 'telephone', 'fax', 'company', 'company_id', 'address_1', 'address_2', 'city', 'postcode', 'country_id', 'zone_id');
						foreach ($this->paymentFields as $field)
						{
							$fieldName = $field->name;
							if (!in_array($fieldName, $excludedFields))
							{
								$fieldValue = $this->orderInfor->{'payment_'.$fieldName};
								if (is_string($fieldValue) && is_array(json_decode($fieldValue)))
								{
									$fieldValue = implode(', ', json_decode($fieldValue));
								}
								if ($fieldValue != '')
								{
									echo '<br />' . JText::_($field->title) . ': ' . $fieldValue;
								}
							}
						}
						?>
					</td>
					<?php
					if ($hasShipping)
					{
						?>
						<td class="left">
							<?php
							echo EshopHelper::getShippingAddress($this->orderInfor);
							foreach ($this->shippingFields as $field)
							{
								$fieldName = $field->name;
								if (!in_array($fieldName, $excludedFields))
								{
									$fieldValue = $this->orderInfor->{'shipping_'.$fieldName};
									if (is_string($fieldValue) && is_array(json_decode($fieldValue)))
									{
										$fieldValue = implode(', ', json_decode($fieldValue));
									}
									if ($fieldValue != '')
									{
										echo '<br />' . JText::_($field->title) . ': ' . $fieldValue;
									}
								}
							}
							?>
						</td>
						<?php
					}
					?>
				</tr>
			</tbody>
		</table>
		<table cellpadding="0" cellspacing="0" class="list">
			<thead>
				<tr>
					<td class="left">
						<?php echo JText::_('ESHOP_PRODUCT_NAME'); ?>
					</td>
					<td class="left">
						<?php echo JText::_('ESHOP_MODEL'); ?>
					</td>
					<td class="left">
						<?php echo JText::_('ESHOP_QUANTITY'); ?>
					</td>
					<td class="left">
						<?php echo JText::_('ESHOP_PRICE'); ?>
					</td>
					<td class="left">
						<?php echo JText::_('ESHOP_TOTAL'); ?>
					</td>
				</tr>
			</thead>
			<tbody>
				<?php
				foreach ($this->orderProducts as $product)
				{
					$options = $product->options;
					?>
					<tr>
						<td class="left">
							<?php
							echo '<b>' . $product->product_name . '</b>';
							for ($i = 0; $n = count($options), $i < $n; $i++)
							{
								echo '<br />- ' . $options[$i]->option_name . ': ' . $options[$i]->option_value . (isset($options[$i]->sku) && $options[$i]->sku != '' ? ' (' . $options[$i]->sku . ')' : '');
							}
							?>
						</td>
						<td class="left"><?php echo $product->product_sku; ?></td>
						<td class="left"><?php echo $product->quantity; ?></td>
						<td class="right"><?php echo $product->price; ?></td>
						<td class="right"><?php echo $product->total_price; ?></td>
					</tr>
					<?php
				}
				?>
			</tbody>
			<tfoot>
				<?php
					foreach ($this->orderTotals as $ordertotal)
					{ 
				?>
				<tr>
					<td colspan="3"></td>
					<td class="right">
						<b><?php echo $ordertotal->title?>: </b>
					</td>
					<td class="right">
						<?php echo $ordertotal->text?>
					</td>
				</tr>
				<?php
					} 
				?>
			</tfoot>
		</table>
		
		<h3 class="uk-text-success"><?php echo JText::_('ESHOP_STATUS'); ?></h3>
		<table cellpadding="0" cellspacing="0" class="list">
			<thead>
				<tr>
					<td class="left">
						<?php echo JText::_('ESHOP_DATE_ADDED'); ?>
					</td>
					<td class="left">
						<?php echo JText::_('ESHOP_STATUS'); ?>
					</td>
					<td class="left">
						<?php echo JText::_('ESHOP_COMMENT'); ?>
					</td>
					<?php
					if (EshopHelper::getConfigValue('delivery_date'))
					{
						?>
						<td class="left">
							<?php echo JText::_('ESHOP_DELIVERY_DATE'); ?>
						</td>
						<?php
					}
					?>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="left uk-text-success">
						<?php echo JHtml::date($this->orderInfor->created_date, EshopHelper::getConfigValue('date_format', 'm-d-Y'));?>
					</td>
					<td class="left uk-text-success">
						<?php echo EshopHelper::getOrderStatusName($this->orderInfor->order_status_id, $tag); ?>
					</td>
					<td class="left uk-text-success">
						<?php echo nl2br($this->orderInfor->comment); ?>
					</td>
					<?php
					if (EshopHelper::getConfigValue('delivery_date'))
					{
						?>
						<td class="left">
							<?php echo JHtml::date($this->orderInfor->delivery_date, EshopHelper::getConfigValue('date_format', 'm-d-Y')); ?>
						</td>
						<?php
					}
					?>
				</tr>
			</tbody>
		</table>
	</form>
</div>
	<?php
}
?>
<script type="text/javascript">
	Eshop.jQuery(function($){
		$(document).ready(function(){
			$('#button-user-orderinfor').click(function(){
				var url = '<?php echo JRoute::_(EshopRoute::getViewRoute('customer') . '&layout=orders'); ?>';
				$(location).attr('href',url);
			});
		})
	});
</script>