<?php

// no direct access
defined( '_JEXEC' ) or die();
if (!is_object($this->orderInfor))
{
	?>
	<p><?php echo JText::_('ESHOP_ORDER_NOT_EXISTED'); ?></p>
	<?php
}
else
{
	if ($this->conversionTrackingCode != '')
	{
		?>
		<script language="javascript">
			<?php echo $this->conversionTrackingCode; ?>
		</script>
		<?php
	}
	// iDevAffiliate integration
	if (EshopHelper::getConfigValue('idevaffiliate_integration') && file_exists( JPATH_SITE . "/" . EshopHelper::getConfigValue('idevaffiliate_path') . "/sale.php" ))
	{
		?>
		<img border="0" src="<?php echo self::getSiteUrl() . self::getConfigValue('idevaffiliate_path'); ?>/sale.php?profile=72198&idev_saleamt=<?php echo $this->orderInfor->total; ?>&idev_ordernum=<?php echo $this->orderInfor->order_number; ?>" width="1" height="1" />
		<?php
		EshopHelper::iDevAffiliate($this->orderInfor);
	}
	$hasShipping = $this->orderInfor->shipping_method;
	?>
	
<div class="uk-alert-success" uk-alert>
    <a class="uk-alert-close" uk-close></a>
	<h3><?php echo sprintf(JText::_('ESHOP_ORDER_COMPLETED_TITLE'), $this->orderInfor->id); ?></h3>
	<hr>
	<p><?php echo sprintf(JText::_('ESHOP_ORDER_COMPLETED_DESC'), $this->orderInfor->id); ?></p>
</div>	

<div class="uk-card uk-card-body uk-card-default">	
<div class="uk-overflow-auto">
	<table class="uk-table uk-table-divider">
		<thead>
			<tr>
				<td class="uk-text-success" colspan="2">
					<?php echo JText::_('ESHOP_ORDER_DETAILS'); ?>
				</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<b><?php echo JText::_('ESHOP_ORDER_ID'); ?>: </b> #<?php echo $this->orderInfor->id; ?><br />
					<b><?php echo JText::_('ESHOP_DATE_ADDED'); ?>: </b> <?php echo JHtml::date($this->orderInfor->created_date, EshopHelper::getConfigValue('date_format', 'm-d-Y')); ?>
	         	</td>
				<td>
					<b><?php echo JText::_('ESHOP_PAYMENT_METHOD'); ?>: </b> <?php echo JText::_($this->orderInfor->payment_method_title); ?><br />
					<b><?php echo JText::_('ESHOP_SHIPPING_METHOD'); ?>: </b> <?php echo JText::_($this->orderInfor->shipping_method_title); ?><br />
				</td>
			</tr>
		</tbody>
	</table>
</div>
</div>
		
		
		
<div class="uk-card uk-card-body uk-card-default uk-margin-top">	
<div class="uk-overflow-auto">
	<table class="uk-table uk-table-divider">
			<thead>
				<tr>
					<td class="uk-text-success">
						<?php echo JText::_('ESHOP_PAYMENT_ADDRESS'); ?>
				</td>
				<?php
				if ($hasShipping)
				{
					?>
					<td class="uk-text-success">
						<?php echo JText::_('ESHOP_SHIPPING_ADDRESS'); ?>
					</td>
					<?php
				}
				?>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td data-content="<?php echo JText::_('ESHOP_PAYMENT_ADDRESS'); ?>">
					<?php
					$paymentAddress = EshopHelper::getPaymentAddress($this->orderInfor);
					
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

							$paymentAddress = str_replace(strtoupper('[payment_' . $fieldName . ']'), $fieldValue, $paymentAddress);
						}
					}
					
					echo $paymentAddress;
					?>
				</td>
				<?php
				if ($hasShipping)
				{
					?>
					<td data-content="<?php echo JText::_('ESHOP_SHIPPING_ADDRESS'); ?>">
						<?php
						$shippingAddress = EshopHelper::getShippingAddress($this->orderInfor);
						
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

								$shippingAddress = str_replace(strtoupper('[shipping_' . $fieldName . ']'), $fieldValue, $shippingAddress);
							}
						}
						
						echo $shippingAddress;
						?>
					</td>
					<?php
				}
				?>
			</tr>
		</tbody>
	</table>
</div>
</div>
	
	
	
	
<div class="uk-card uk-card-body uk-card-default uk-margin-top">	
<div class="uk-overflow-auto">	
	<table class="uk-table uk-table-divider uk-table-hover">
		<thead>
			<tr>
				<td class="uk-text-meta">
					<?php echo JText::_('ESHOP_PRODUCT_NAME'); ?>
				</td>
				<td class="uk-text-center uk-text-meta">
					<?php echo JText::_('ESHOP_MODEL'); ?>
				</td>
				<td class="uk-text-center uk-text-meta">
					<?php echo JText::_('ESHOP_QUANTITY'); ?>
				</td>
				<td class="uk-text-center uk-text-meta">
					<?php echo JText::_('ESHOP_PRICE'); ?>
				</td>
				<td class="uk-text-center uk-text-meta">
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
					<td class="uk-text-middle" data-content="<?php echo JText::_('ESHOP_PRODUCT_NAME'); ?>">
						<?php
						echo '<b>' . $product->product_name . '</b>';
						for ($i = 0; $n = count($options), $i < $n; $i++)
						{
							$option = $options[$i];
							if ($option->option_type == 'File' && $option->option_value != '')
							{
								echo '<br />- ' . $option->option_name . ': <a href="index.php?option=com_eshop&task=downloadOptionFile&id=' . $option->id . '">' . $option->option_value . '</a>';
							}
							else
							{
								echo '<br />- ' . $option->option_name . ': ' . $option->option_value . (isset($option->sku) && $option->sku != '' ? ' (' . $option->sku . ')' : '');
							}
						}
						?>
					</td>
					<td class="uk-text-center uk-text-middle" data-content="<?php echo JText::_('ESHOP_MODEL'); ?>"><?php echo $product->product_sku; ?></td>
					<td class="uk-text-center uk-text-middle" data-content="<?php echo JText::_('ESHOP_QUANTITY'); ?>"><?php echo $product->quantity; ?></td>
					<td class="uk-text-center uk-text-middle" data-content="<?php echo JText::_('ESHOP_PRICE'); ?>"><?php echo $product->price; ?></td>
					<td class="uk-text-center uk-text-middle" data-content="<?php echo JText::_('ESHOP_TOTAL'); ?>"><?php echo $product->total_price; ?></td>
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
				<td class="uk-text-center uk-text-middle uk-text-success">
					<b><?php echo $ordertotal->title?>: </b>
				</td>
				<td class="uk-text-center uk-text-middle uk-text-success">
					<?php echo $ordertotal->text?>
				</td>
			</tr>
			<?php
				} 
			?>
		</tfoot>
	</table>
</div>
</div>
	<?php
}	
?>