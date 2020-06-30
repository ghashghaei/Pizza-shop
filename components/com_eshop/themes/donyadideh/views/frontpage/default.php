<?php

// no direct access
defined ( '_JEXEC' ) or die ();

//Display Shop Instroduction
if (EshopHelper::getMessageValue('shop_introduction') != '' && EshopHelper::getConfigValue('introduction_display_on', 'front_page') == 'front_page')
{
	?>
	<div class="eshop-shop-introduction"><?php echo EshopHelper::getMessageValue('shop_introduction'); ?></div>
	<?php
}

//Display Page Heading
if ($this->params->get('show_page_heading'))
{
	?>
	<h3 class="eshop-frontpage-heading"><?php echo $this->params->get('page_heading'); ?></h3>
	<?php
}

if (count($this->categories)) 
{
	?>
	<div class="eshop-categories-list">
		<?php echo EshopHtmlHelper::loadCommonLayout('common/categories.php', array ('categories' => $this->categories, 'categoriesPerRow' => $this->categoriesPerRow, 'bootstrapHelper' => $this->bootstrapHelper)); ?>
	</div>
	<?php
}

if (count($this->products))
{
	?>
	<div class="eshop-products-list">
		<?php
		echo EshopHtmlHelper::loadCommonLayout('common/products.php', array(
			'products' => $this->products,
			'tax' => $this->tax,
			'currency' => $this->currency,
			'productsPerRow' => $this->productsPerRow,
			'catId' => 0,
			'showSortOptions' => false,
		    'bootstrapHelper' => $this->bootstrapHelper
		));
		?>
	</div>
	<?php
}