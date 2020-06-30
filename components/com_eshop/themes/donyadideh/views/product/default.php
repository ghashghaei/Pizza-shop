<?php

// no direct access
defined( '_JEXEC' ) or die();
$uri = JUri::getInstance();
$bootstrapHelper        = $this->bootstrapHelper;
$rowFluidClass          = $bootstrapHelper->getClassMapping('row-fluid');
$span3Class             = $bootstrapHelper->getClassMapping('span3');
$span4Class             = $bootstrapHelper->getClassMapping('span4');
$span6Class             = $bootstrapHelper->getClassMapping('span6');
$span8Class             = $bootstrapHelper->getClassMapping('span8');
$span12Class            = $bootstrapHelper->getClassMapping('span12');
$pullLeftClass          = $bootstrapHelper->getClassMapping('pull-left');
$pullRightClass         = $bootstrapHelper->getClassMapping('pull-right');
$controlGroupClass      = $bootstrapHelper->getClassMapping('control-group');
$controlLabelClass      = $bootstrapHelper->getClassMapping('control-label');
$controlsClass          = $bootstrapHelper->getClassMapping('controls');
$inputAppendClass       = $bootstrapHelper->getClassMapping('input-append');
$inputPrependClass      = $bootstrapHelper->getClassMapping('input-prepend');
$imgPolaroid            = $bootstrapHelper->getClassMapping('img-polaroid');
$btnClass				= $bootstrapHelper->getClassMapping('btn');

$gridRatioImageInfo     = EshopHelper::getConfigValue('grid_ratio_image_info');
?>
<script src="<?php echo JUri::base(true); ?>/components/com_eshop/assets/colorbox/jquery.colorbox.js" type="text/javascript"></script>
<script src="<?php echo JUri::base(true); ?>/components/com_eshop/assets/js/slick.js" type="text/javascript"></script>
<script src="<?php echo JUri::base(true); ?>/components/com_eshop/assets/js/eshop-pagination.js" type="text/javascript"></script>

<?php
if (EshopHelper::getConfigValue('show_products_nav') && (is_object($this->productsNavigation[0]) || is_object($this->productsNavigation[1])))
{
	?>
	<div class="<?php echo $rowFluidClass; ?> uk-margin uk-visible@m">
		<div class="<?php echo $span6Class; ?> eshop-pre-nav uk-text-left">
			<?php
			if (is_object($this->productsNavigation[0]))
			{
				?>
				<a class="uk-button uk-button-default uk-button-small" href="<?php echo JRoute::_(EshopRoute::getProductRoute($this->productsNavigation[0]->id, isset($this->productsNavigation[0]->category_id) ? $this->productsNavigation[0]->category_id : EshopHelper::getProductCategory($this->productsNavigation[0]->id))); ?>" title="<?php echo $this->productsNavigation[0]->product_page_title != '' ? $this->productsNavigation[0]->product_page_title : $this->productsNavigation[0]->product_name; ?>" uk-tooltip><span uk-icon="arrow-left"></span>
				قبلی
				</a>
				<?php
			}
			?>
		</div>
		<div class="<?php echo $span6Class; ?> eshop-next-nav uk-text-right">
			<?php
			if (is_object($this->productsNavigation[1]))
			{
				?>
				<a class="uk-button uk-button-default uk-button-small" href="<?php echo JRoute::_(EshopRoute::getProductRoute($this->productsNavigation[1]->id, isset($this->productsNavigation[1]->category_id) ? $this->productsNavigation[1]->category_id : EshopHelper::getProductCategory($this->productsNavigation[1]->id))); ?>" title="<?php echo $this->productsNavigation[1]->product_page_title != '' ? $this->productsNavigation[1]->product_page_title : $this->productsNavigation[1]->product_name; ?>" uk-tooltip>
				بعدی<span uk-icon="arrow-right"></span>
				</a>
				<?php
			}
			?>
		</div>
	</div>
	<?php
}
?>

<?php
if (EshopHelper::getConfigValue('rich_snippets') == '1')
{
	?>
	<div itemscope itemtype="http://schema.org/Product" style="display: none;">
		<meta itemprop="mpn" content="<?php echo $this->item->product_sku; ?>" />
		<meta itemprop="sku" content="<?php echo $this->item->product_sku; ?>" />
		<meta itemprop="name" content="<?php echo $this->item->product_name; ?>" />
		<?php
		if ($this->item->thumb_image)
		{
			?>
			<link itemprop="image" href="<?php echo EshopHelper::getSiteUrl() . $this->item->thumb_image; ?>" />
			<?php
		}
		
		if ($this->item->product_short_desc)
		{
			$description = $this->item->product_short_desc;
		}
		else
		{
			$description = $this->item->product_desc;
		}
		
		$description = utf8_substr(strip_tags(html_entity_decode($description, ENT_QUOTES, 'UTF-8')), 0, 100) . '..';
		?>
		<meta itemprop="description" content="<?php echo $description; ?>" />
		
		<?php
		if (is_object($this->manufacturer) && $this->manufacturer->manufacturer_name != '')
		{
			?>
			<meta itemprop="brand" content="<?php echo $this->manufacturer->manufacturer_name; ?>" />
			<?php
		}

		if (EshopHelper::getConfigValue('allow_reviews') && count($this->productReviews))
		{
			?>
			<div itemprop="aggregateRating" itemtype="http://schema.org/AggregateRating" itemscope>
				<meta itemprop="reviewCount" content="<?php echo count($this->productReviews); ?>" />
				<meta itemprop="ratingValue" content="<?php echo EshopHelper::getProductRating($this->item->id); ?>" />
			</div>
			<?php
			foreach ($this->productReviews as $review)
			{
			    ?>
				<div itemprop="review" itemtype="http://schema.org/Review" itemscope>
					<div itemprop="author" itemtype="http://schema.org/Person" itemscope>
						<meta itemprop="name" content="<?php echo $review->author; ?>" />
					</div>
					<div itemprop="reviewRating" itemtype="http://schema.org/Rating" itemscope>
						<meta itemprop="ratingValue" content="<?php echo $review->rating; ?>" />
						<meta itemprop="bestRating" content="5" />
					</div>
				</div>
			    <?php
			}
		}
		?>
		<div itemprop="offers" itemtype="http://schema.org/Offer" itemscope>
			<link itemprop="url" href="<?php echo JUri::getInstance()->toString(); ?>" />
			<?php
			if (EshopHelper::getConfigValue('show_availability'))
			{
			    if ($this->item->product_quantity > 0)
			    {
			        $availability = "http://schema.org/InStock";
			    }
			    else
			    {
			        $availability = "http://schema.org/OutOfStock";
			    }
                ?>
				<meta itemprop="availability" content="<?php echo $availability; ?>" />
				<?php
            }
			if (EshopHelper::showPrice() && !$this->item->product_call_for_price)
			{
				?>
				<meta itemprop="price" content="<?php echo $this->currency->format($this->item->product_price, '', '', false); ?>" />
				<meta itemprop="priceCurrency" content="<?php echo $this->currency->getCurrencyCode(); ?>" />
				<?php
			}
			?>
		</div>
    </div>
    <?php
}
?>

<div class="product-info">

<div class="uk-section-default">
<div class="uk-container">                

<div class="uk-grid-column-collapse uk-grid-margin" uk-grid>
<div class="uk-flex-auto uk-width-3-4@s">
<h4><?php echo $this->item->product_page_heading != '' ? $this->item->product_page_heading : $this->item->product_name; ?></h4>
</div>
<div class="uk-flex-auto uk-width-1-4@s">
<div class="uk-text-small uk-text-primary uk-margin uk-text-right">
<?php
if (count($this->labels))
{
	for ($i = 0; $n = count($this->labels), $i < $n; $i++)
	{
		$label = $this->labels[$i];
		if ($label->label_style == 'rotated' && !($label->enable_image && $label->label_image))
		{
			?>

			<?php
		}
		if ($label->enable_image && $label->label_image)
		{
			$imageWidth = $label->label_image_width > 0 ? $label->label_image_width : EshopHelper::getConfigValue('label_image_width');
			if (!$imageWidth)
				$imageWidth = 50;
			$imageHeight = $label->label_image_height > 0 ? $label->label_image_height : EshopHelper::getConfigValue('label_image_height');
			if (!$imageHeight)
				$imageHeight = 50;
			?>
			<img src="<?php echo $label->label_image; ?>" style="opacity: <?php echo $label->label_opacity; ?>; width: <?php echo $imageWidth; ?>px; height: <?php echo $imageHeight; ?>px; box-shadow: none;" />
			<?php
		}
		else 
		{
			?>
			<span class="uk-label" style="background-color: <?php echo '#'.$label->label_background_color; ?>; color: <?php echo '#'.$label->label_foreground_color; ?>; opacity: <?php echo $label->label_opacity; ?>;<?php if ($label->label_bold) echo 'font-weight: bold;'; ?>">
				<?php echo $label->label_name; ?>
			</span>
			<?php
		}
		if ($label->label_style == 'rotated' && !($label->enable_image && $label->label_image))
		{
			?>

			<?php
		}
	}
}
?>
</div>
</div>
</div>

<div class="uk-grid-column-medium uk-grid-margin" uk-grid uk-height-match="target: .uk-card; row: false">

<!-- تصویر محصول -->
<div class="uk-width-expand@m">

<div uk-slideshow="ratio: 1:1; minHeight: 300;" class="uk-margin uk-text-center">
<div class="uk-position-relative uk-visible-toggle" tabindex="-1">
<?php
if (EshopHelper::getConfigValue('view_image') == 'zoom')
{
?>
<ul class="uk-slideshow-items" uk-lightbox>				
	<?php
	if (count($this->productImages))
	{
	?>
	<?php
	for ($i = 0; $n = count($this->productImages), $i < $n; $i++)
	{
		?>
		<li class="el-item">
			<a href="<?php echo $this->productImages[$i]->popup_image; ?>">
				<img src="<?php echo $this->productImages[$i]->thumb_image; ?>" title="<?php echo $this->item->product_page_title != '' ? $this->item->product_page_title : $this->item->product_name; ?>" alt="<?php echo $this->item->product_alt_image != '' ? $this->item->product_alt_image : $this->item->product_name; ?>" sizes="(max-aspect-ratio: 500/500) 100vh" data-width="500" data-height="500" class="el-image" uk-cover />
			</a>
		</li>	
		<?php
	}
	?>
</ul>
	<?php
	}
}
else 
{
	?>
<ul class="uk-slideshow-items">				
	<?php
	if (count($this->productImages))
	{
	?>
	<?php
	for ($i = 0; $n = count($this->productImages), $i < $n; $i++)
	{
	?>
	<li class="el-item">
		<img src="<?php echo $this->productImages[$i]->thumb_image; ?>" title="<?php echo $this->item->product_page_title != '' ? $this->item->product_page_title : $this->item->product_name; ?>" alt="<?php echo $this->item->product_alt_image != '' ? $this->item->product_alt_image : $this->item->product_name; ?>" sizes="(max-aspect-ratio: 500/500) 100vh" data-width="500" data-height="500" class="el-image" uk-cover />
	</li>	
	<?php
	}
	?>
</ul>
	<?php
	}
}
?>      
<div class="uk-hidden-hover uk-hidden-touch uk-visible@m">
<a class="el-slidenav uk-position-medium uk-position-center-left" href="#" uk-slidenav-previous uk-slideshow-item="previous"></a>
<a class="el-slidenav uk-position-medium uk-position-center-right" href="#" uk-slidenav-next uk-slideshow-item="next"></a>
</div>        
	
</div>

        
<div uk-slider="finite: 1;" class="uk-margin uk-text-center">
<div class="uk-position-relative">

<div class="uk-slider-container">
        
<ul class="uk-thumbnav uk-flex-center uk-margin-top uk-slider-items uk-grid uk-grid-small">
<?php
if (EshopHelper::getConfigValue('view_image') == 'zoom')
{
	?>
	<?php
	if (count($this->productImages))
	{
	?>
		<?php
		for ($i = 0; $n = count($this->productImages), $i < $n; $i++)
		{
			?>
			<li uk-slideshow-item="<?php echo $i; ?>" class="el-item uk-width-1-3 uk-width-1-4@s uk-width-1-4@m uk-width-1-5@l uk-width-1-5@xl">
				<a href="#">
				<div class="uk-cover-container">
					<img src="<?php echo $this->productImages[$i]->small_thumb_image; ?>" title="<?php echo $this->item->product_page_title != '' ? $this->item->product_page_title : $this->item->product_name; ?>" alt="<?php echo $this->item->product_alt_image != '' ? $this->item->product_alt_image : $this->item->product_name; ?>" sizes="(min-width: 100px) 100px" data-width="100" data-height="100" class="el-image" />
				</div>
				</a>
			</li>	
			<?php
		}
		?>
	<?php
	}
}
else 
{
	?>
	<?php
	if (count($this->productImages))
	{
	?>
	<?php
	for ($i = 0; $n = count($this->productImages), $i < $n; $i++)
	{
		?>
		<li uk-slideshow-item="<?php echo $i; ?>" class="el-item uk-width-1-3 uk-width-1-4@s uk-width-1-4@m uk-width-1-5@l uk-width-1-5@xl">
			<a href="#">
			<div class="uk-cover-container">
				<img src="<?php echo $this->productImages[$i]->small_thumb_image; ?>" title="<?php echo $this->item->product_page_title != '' ? $this->item->product_page_title : $this->item->product_name; ?>" alt="<?php echo $this->item->product_alt_image != '' ? $this->item->product_alt_image : $this->item->product_name; ?>" sizes="(min-width: 100px) 100px" data-width="100" data-height="100" class="el-image" />
			</div>
			</a>
		</li>	
		<?php
	}
	?>
	<?php
	}
}
?>
</ul>

</div>

<div class="uk-visible@l">
<a class="el-slidenav uk-position-center-left-out" href="#" uk-slidenav-previous uk-slider-item="previous" uk-toggle="cls: uk-position-center-left-out uk-position-center-left; mode: media; media: @l"></a>
<a class="el-slidenav uk-position-center-right-out" href="#" uk-slidenav-next uk-slider-item="next" uk-toggle="cls: uk-position-center-right-out uk-position-center-right; mode: media; media: @l"></a>
</div>

</div>
<ul class="el-nav uk-slider-nav uk-dotnav uk-flex-center uk-margin-small-top uk-hidden@m" uk-margin></ul>    
</div>

</div>

</div>
<!-- پایان تصویر محصول -->


<!-- شروع مشخصات قیمت -->
<div class="uk-width-expand@m">

<?php
if (EshopHelper::getConfigValue('show_manufacturer') || EshopHelper::getConfigValue('show_sku') || EshopHelper::getConfigValue('show_availability') || EshopHelper::getConfigValue('show_product_weight') || EshopHelper::getConfigValue('show_product_dimensions') || (EshopHelper::getConfigValue('show_product_tags') && count($this->productTags)) || (EshopHelper::getConfigValue('show_product_attachments') && count($this->productAttachments)) || (isset($this->item->paramData) && count($this->item->paramData)))
{
?>

<div class="uk-margin">
<div class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-2@m uk-child-width-1-2@l uk-child-width-1-2@xl uk-grid-small uk-grid-match" uk-grid>


<div class="el-item uk-panel uk-margin-remove-first-child">
<div class="el-meta uk-text-meta uk-margin-top">
	<?php
	if (EshopHelper::getConfigValue('show_sku'))
	{
		?>
		<div class="product-sku">
			<?php echo JText::_('ESHOP_PRODUCT_CODE'); ?>:
			<span><?php echo $this->item->product_sku; ?></span>
		</div>
		<?php
	}
	?>
</div>
</div>


<div class="el-item uk-panel uk-margin-remove-first-child">
	<div class="el-meta uk-text-meta uk-text-left uk-text-right@s uk-margin-top">
	<?php	
	if (EshopHelper::getConfigValue('allow_reviews'))
	{
	?>
	<small class="uk-margin-small-right uk-visible@s"><?php echo '(' . count($this->productReviews) . ' نفر' . ')'; ?></small>
	<img src="components/com_eshop/assets/images/stars-<?php echo round(EshopHelper::getProductRating($this->item->id)); ?>.png" class="rating" />
	<small class="uk-margin-small-left uk-hidden@s"><?php echo '(' . count($this->productReviews) . ' نفر' . ')'; ?></small>
	<?php
	}
	?>
	</div>        
</div>

<div>
<div class="el-item uk-panel uk-margin-remove-first-child">

<div class="el-meta uk-text-meta uk-margin-top">
<?php
if (EshopHelper::getConfigValue('show_manufacturer'))
{
	?>
	<div class="product-manufacturer">
		<?php echo JText::_('ESHOP_BRAND'); ?>:
		<span>
			<?php
			if (isset($this->manufacturer->manufacturer_name))
			{
				?>
				<a href="<?php echo JRoute::_(EshopRoute::getManufacturerRoute($this->manufacturer->id)); ?>"><?php echo $this->manufacturer->manufacturer_name; ?></a>
				<?php
			}
			?>
		</span>
	</div>
	<?php
}
?>
</div>        

</div>
</div>
<div>
<div class="el-item uk-panel uk-margin-remove-first-child">
<div class="el-meta uk-text-meta uk-margin-top">
	<?php
	if (EshopHelper::getConfigValue('show_product_tags') && count($this->productTags))
	{
		?>
		<div class="product-tags uk-text-left uk-text-right@s">
			<?php echo JText::_('ESHOP_PRODUCT_TAGS'); ?>:
			<span>
				<?php
				for ($i = 0; $n = count($this->productTags), $i < $n; $i++)
				{
					$tagName = trim($this->productTags[$i]->tag_name);
					$searchTagLink = JRoute::_(EshopRoute::getViewRoute('search') . '&keyword=' . $tagName, false);
					?>
					<a href="<?php echo $searchTagLink; ?>"><?php echo $tagName; ?></a>
					<?php
					if ($i < ($n - 1))
						echo ", ";
				}
				?>
			</span>
		</div>
		<?php
	}
	?>
</div>
</div>
</div>
</div>
</div>

<?php
if (EshopHelper::showPrice() && !$this->item->product_call_for_price)
{
	?>
	<div class="uk-alert uk-alert-primary">
			<h4 class="uk-text-primary uk-margin-remove-vertical">
		<div class="product-price" id="product-price">
				<strong>
					<?php echo JText::_('ESHOP_PRICE'); ?>:
					<?php
					$productPriceArray = EshopHelper::getProductPriceArray($this->item->id, $this->item->product_price);
					if ($productPriceArray['salePrice'] >= 0)
					{
						?>
						<span class="eshop-base-price"><?php echo $this->currency->format($this->tax->calculate($productPriceArray['basePrice'], $this->item->product_taxclass_id, EshopHelper::getConfigValue('tax'))); ?></span>&nbsp;
						<span class="eshop-sale-price"><?php echo $this->currency->format($this->tax->calculate($productPriceArray['salePrice'], $this->item->product_taxclass_id, EshopHelper::getConfigValue('tax'))); ?></span>
						<?php
					}
					else
					{
						?>
						<span class="price"><?php echo $this->currency->format($this->tax->calculate($productPriceArray['basePrice'], $this->item->product_taxclass_id, EshopHelper::getConfigValue('tax'))); ?></span>
						<?php
					}
					?>
				</strong><br />
				<?php
				if (EshopHelper::getConfigValue('tax') && EshopHelper::getConfigValue('display_ex_tax'))
				{
					?>
					<small>
						<?php echo JText::_('ESHOP_EX_TAX'); ?>:
						<?php
						if ($productPriceArray['salePrice'] >= 0)
						{
							echo $this->currency->format($productPriceArray['salePrice']);
						}
						else
						{
							echo $this->currency->format($productPriceArray['basePrice']);
						}
						?>
					</small>
					<?php
				}
				?>
		</div>
			</h4>
	</div>
<?php
}
if ($this->item->product_call_for_price)
{
	?>
	<div class="uk-alert-success uk-alert">
		<h4><small><?php echo JText::_('ESHOP_CALL_FOR_PRICE'); ?>:</small> <?php echo EshopHelper::getConfigValue('telephone'); ?></h4>
	</div>
	<?php
}
?>

<div class="uk-text-meta">
<div class="uk-margin">
<div class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-2@m uk-child-width-1-2@l uk-child-width-1-2@xl uk-grid-small" uk-grid>

<div id="product-dynamic-info" class="el-item uk-panel uk-margin-remove-first-child uk-text-meta">
	<?php
	if (EshopHelper::getConfigValue('show_availability'))
	{
		?>
		<div class="product-availability">
			<?php echo JText::_('ESHOP_AVAILABILITY'); ?>:
			<span class="uk-text-success">
				<?php
				echo $this->item->availability;
				if (isset($this->product_available_date))
				{
					echo ' (' . JText::_('ESHOP_PRODUCT_AVAILABLE_DATE') . ': ' . $this->product_available_date . ')';
				}
				?>
			</span>
		</div>
		<?php
	}
	?>

	<?php
	if (count($this->discountPrices))
	{
	?>
	<?php
	for ($i = 0; $n = count($this->discountPrices), $i < $n; $i++)
	{
		$discountPrices = $this->discountPrices[$i];
		echo $discountPrices->quantity.' '.JText::_('ESHOP_OR_MORE').' '.$this->currency->format($this->tax->calculate($discountPrices->price, $this->item->product_taxclass_id, EshopHelper::getConfigValue('tax'))).'<br />';
	}
	?>
	<?php
	}
	?>
</div>

<div class="el-item uk-panel uk-margin-remove-first-child">
<div class="uk-text-right@s uk-text-center">
	<a href="javascript:void(0);" class="uk-margin-small-right" uk-tooltip="اشتراک در فیس بوک"  onclick="socialsharing_facebook_click('')">
	<i uk-icon="facebook"></i>
	</a>
	<a href="javascript:void(0);" class="uk-margin-small-right" uk-tooltip="اشتراک در تویتر"  onclick="socialsharing_twitter_click('')">
	<i uk-icon="twitter"></i>
	</a>
	<a href="javascript:void(0);" class="uk-margin-small-right" uk-tooltip="اشتراک در لینکدین"  onclick="socialsharing_linkedin_click('')">
	<i uk-icon="linkedin"></i>
	</a>
	<a href="javascript:void(0);" class="uk-margin-small-right" uk-tooltip="اشتراک در تلگرام"  onclick="socialsharing_telegram_click('')">
	<i uk-icon="telegram"><svg width="20" height="20" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1764 11q33 24 27 64l-256 1536q-5 29-32 45-14 8-31 8-11 0-24-5l-527-215-298 327q-18 21-47 21-14 0-23-4-19-7-30-23.5t-11-36.5v-452l-472-193q-37-14-40-55-3-39 32-59l1664-960q35-21 68 2zm-342 1499l221-1323-1434 827 336 137 863-639-478 797z"/></svg></i>
	</a>
	<a href="javascript:void(0);" class="uk-margin-small-right" uk-tooltip="اشتراک در واتساپ"  onclick="socialsharing_whatsapp_click('')">
	<i uk-icon="whatsapp"></i>
	</a>
</div>
</div>

</div>
</div>
</div>

<hr>

<div class="uk-margin">
<div class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-2@m uk-child-width-1-2@l uk-child-width-1-2@xl uk-grid-small uk-grid-match" uk-grid>
<?php
if (count($this->productOptions))
{
?>

	<?php
	for ($i = 0; $n = count($this->productOptions), $i < $n; $i++)
	{
		$option = $this->productOptions[$i];
		
		if (!EshopHelper::isCartMode($this->item) && !EshopHelper::isQuoteMode($this->item) && ($option->option_type == 'Text' || $option->option_type == 'Textarea' || $option->option_type == 'File' || $option->option_type == 'Date' || $option->option_type == 'Datetime'))
		{
			continue;
		}
		?>
<div>
<div class="el-item uk-panel uk-alert uk-padding-small uk-margin-remove-first-child">
		<div id="option-<?php echo $option->product_option_id; ?>">

				<?php
				if ($option->required && (EshopHelper::isCartMode($this->item) || EshopHelper::isQuoteMode($this->item)))
				{
					?>
					<small class="required">*</small>
					<?php
				}
				?>
				<small><?php echo $option->option_name; ?>:</small>
				<?php
				if ($option->option_type == 'File')
				{
					?>
					<small id="file-<?php echo $option->product_option_id; ?>"></small>
					<?php
				}
				if ($option->option_desc != '')
				{
					?>
					<small class="uk-text-meta"><?php echo $option->option_desc; ?></small>
					<?php
				}
				else 
				{
					?>
					<?php
				}
				echo EshopOption::renderOption($this->item->id, $option->id, $option->option_type, $this->item->product_taxclass_id);
				?>
		</div>
</div>
</div>
		<?php
	}
	?>

<?php
}
?>
</div>
</div>

<div class="uk-margin-medium-bottom uk-margin-medium-top">
<?php
if (EshopHelper::isCartMode($this->item) || EshopHelper::isQuoteMode($this->item))
{
	?>
		<input type="hidden" name="id" value="<?php echo $this->item->id; ?>" />
		<?php
		if (EshopHelper::getConfigValue('show_quantity_box_in_product_page'))
		{
		?>
			<a onclick="quantityUpdate('-', 'quantity_<?php echo $this->item->id; ?>', <?php echo EshopHelper::getConfigValue('quantity_step', '1'); ?>)" id="<?php echo $this->item->id; ?>" uk-icon="icon: minus; ratio: .75"></a>
			<input type="text" class="uk-text-center uk-input uk-form-width-xsmall" id="quantity_<?php echo $this->item->id; ?>" name="quantity" value="<?php echo EshopHelper::getConfigValue('start_quantity_number', '1'); ?>" />
			<a onclick="quantityUpdate('+', 'quantity_<?php echo $this->item->id; ?>', <?php echo EshopHelper::getConfigValue('quantity_step', '1'); ?>)" id="<?php echo $this->item->id; ?>" uk-icon="icon: plus; ratio: .75"></a>
		<?php
		}
		if (EshopHelper::isCartMode($this->item))
		{
			?>
		<button id="add-to-cart" class="uk-display-inline-block uk-button uk-button-primary" type="button"><span class="uk-margin-small-right" uk-icon="cart"></span><?php echo JText::_('ESHOP_ADD_TO_CART'); ?></button>
			<?php
		}
		if (EshopHelper::isQuoteMode($this->item))
		{
			?>
		<button id="add-to-quote" class="uk-display-inline-block uk-button uk-button-secondary" type="button"><span class="uk-margin-small-right" uk-icon="future"></span><?php echo JText::_('ESHOP_ADD_TO_QUOTE'); ?></button>
			<?php
		}
		?>
	<?php
}
?>
</div>

<hr>

<div class="uk-margin">
<div class="uk-text-left@s uk-text-center">
	<?php

	if (($this->item->product_quantity <= 0 && EshopHelper::getConfigValue('allow_notify') && !EshopHelper::getConfigValue('stock_checkout')) || EshopHelper::getConfigValue('allow_wishlist') || EshopHelper::getConfigValue('allow_compare') || EshopHelper::getConfigValue('allow_ask_question') || EshopHelper::getConfigValue('allow_download_pdf_product') || EshopHelper::getConfigValue('allow_email_to_a_friend'))
	{
		?>

			<?php
			if ($this->item->product_quantity <= 0 && EshopHelper::getConfigValue('allow_notify') && !EshopHelper::getConfigValue('stock_checkout'))
			{
				?>
				<a style="cursor: pointer;" onclick="makeNotify(<?php echo $this->item->id; ?>, '<?php echo EshopHelper::getSiteUrl();?>', '<?php echo EshopHelper::getAttachedLangLink(); ?>')" class="uk-margin-small-right" uk-tooltip="<?php echo JText::_('ESHOP_PRODUCT_NOTIFY');?>">
				<i uk-icon="bell"></i> <small class="uk-visible@s"><?php echo JText::_('ESHOP_PRODUCT_NOTIFY');?></small>
				</a>
				<?php
			}
			if (EshopHelper::getConfigValue('allow_wishlist'))
			{
				?>
				<a style="cursor: pointer;" onclick="addToWishList(<?php echo $this->item->id; ?>, '<?php echo EshopHelper::getSiteUrl(); ?>', '<?php echo EshopHelper::getAttachedLangLink(); ?>')" class="uk-margin-small-right" uk-tooltip="<?php echo JText::_('ESHOP_ADD_TO_WISH_LIST'); ?>">
				<i uk-icon="heart"></i> <small class="uk-visible@s"><?php echo JText::_('ESHOP_ADD_TO_WISH_LIST'); ?></small>
				</a>
				<?php
			}
			if (EshopHelper::getConfigValue('allow_compare'))
			{
				?>
				<a style="cursor: pointer;" onclick="addToCompare(<?php echo $this->item->id; ?>, '<?php echo EshopHelper::getSiteUrl(); ?>', '<?php echo EshopHelper::getAttachedLangLink(); ?>')" class="uk-margin-small-right" uk-tooltip="<?php echo JText::_('ESHOP_ADD_TO_COMPARE'); ?>">
				<i uk-icon="copy"></i> <small class="uk-visible@s"><?php echo JText::_('ESHOP_ADD_TO_COMPARE'); ?></small>
				</a>
				<?php
			}
			if (EshopHelper::getConfigValue('allow_ask_question'))
			{
				?>
				<a style="cursor: pointer;" onclick="askQuestion(<?php echo $this->item->id; ?>, '<?php echo EshopHelper::getSiteUrl(); ?>', '<?php echo EshopHelper::getAttachedLangLink(); ?>')" class="uk-margin-small-right" uk-tooltip="<?php echo JText::_('ESHOP_ASK_QUESTION'); ?>">
				<i uk-icon="question"></i> <small class="uk-visible@s"><?php echo JText::_('ESHOP_ASK_QUESTION'); ?></small>
				</a>
				<?php
			}
			if (EshopHelper::getConfigValue('allow_email_to_a_friend'))
			{
				?>
				<a style="cursor: pointer;" onclick="emailAFriend(<?php echo $this->item->id; ?>, '<?php echo EshopHelper::getSiteUrl(); ?>', '<?php echo EshopHelper::getAttachedLangLink(); ?>')" class="uk-margin-small-right" uk-tooltip="<?php echo JText::_('ESHOP_EMAIL_A_FRIEND'); ?>">
				<i uk-icon="mail"></i> <small class="uk-visible@s"><?php echo JText::_('ESHOP_EMAIL_A_FRIEND'); ?></small>
				</a>
				<?php
			}
			if (EshopHelper::getConfigValue('allow_download_pdf_product'))
			{
				?>
				<a style="cursor: pointer;" href="index.php?option=com_eshop&task=product.downloadPDF&product_id=<?php echo $this->item->id; ?>" target="_blank" class="uk-margin-small-right" uk-tooltip="<?php echo JText::_('ESHOP_DOWNLOAD_PDF_PRODUCT'); ?>">
				<i uk-icon="file-pdf"></i> <small class="uk-visible@s"><?php echo JText::_('ESHOP_DOWNLOAD_PDF_PRODUCT'); ?></small>
				</a>
				<?php
			}
			?>

		<?php
	}
	?>
</div>
</div>

<hr>

<?php
if (isset($this->item->paramData) && count($this->item->paramData))
{
?>
<div class="uk-margin">
	<ul class="uk-list uk-list-striped">
		<?php
		foreach ($this->item->paramData as $param)
		{
			if ($param['value'])
			{
				?>
			<!--<li><?php echo $param['title']; ?>: </li>-->
				<li><i class="uk-margin-small-right" uk-icon="check"></i><?php echo $param['value']; ?></li>
			<?php
			}
		}
		?>
	</ul>
</div>
<?php
}
?>


<?php
if (EshopHelper::getConfigValue('show_product_attachments') && count($this->productAttachments) > 0)
{
?>

<div class="uk-margin">
<a class="uk-button uk-button-default" href="#modal-attachments" uk-toggle><span class="uk-margin-small-right" uk-icon="download"></span><?php echo JText::_('ESHOP_PRODUCT_ATTACHMENTS'); ?></a>
<div id="modal-attachments" class="uk-flex-top" uk-modal>
    <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">
        <button class="uk-modal-close-default" type="button" uk-close></button>
        <div class="uk-modal-header uk-padding-small">
            <h4 class="uk-text-success"><?php echo JText::_('ESHOP_PRODUCT_ATTACHMENTS'); ?></h4>
        </div>
<div class="uk-modal-body uk-padding-remove">
	<div class="uk-grid-margin" uk-grid>
	<div class="uk-flex-auto uk-width-1-1@m">
	<div class="uk-overflow-auto">
	<table class="uk-table uk-table-striped uk-table-hover uk-table-small uk-table-middle">
	<thead>
	<tr>
	<th class="uk-text-nowrap"><?php echo JText::_('ESHOP_DOWNLOAD_FILE_ROW'); ?></th>
	<th class="uk-text-nowrap"><?php echo JText::_('ESHOP_DOWNLOAD_FILE_TITLE'); ?></th>
	<th class="uk-text-center uk-text-nowrap"><?php echo JText::_('ESHOP_DOWNLOAD_FILE_DOWNLOAD'); ?></th>
	</tr>
	</thead>
	
	<tbody>
	<?php
	for ($i = 0; $n = count($this->productAttachments), $i < $n; $i++)
	{
		$productAttachment = $this->productAttachments[$i]->file_name;
		?>		
	<tr class="el-item">
	<td class="uk-text-nowrap uk-table-shrink">
	<div class="el-meta uk-text-meta">
	<span uk-icon="check"></span>
	</div></td>
	<td class="uk-text-nowrap uk-table-shrink">
	<div class="el-title"><small><?php echo $productAttachment; ?></small></div></td>
	<td class="uk-text-nowrap uk-text-center uk-table-shrink">
	<a href="<?php echo JURI::root().'media/com_eshop/attachments/'.$productAttachment; ?>" target="_blank"><small><span uk-icon="download"></span> دانلود</small></a></td>
	</tr>
	<?php } ?>
	</tbody>
	</table>
</div>
</div>
</div>
</div>

</div>
</div>
</div>
<?php
}
?>



<?php
}
?>
</div>
<!-- پایان مشخصات قیمت -->

</div>



<!-- محصولات مرتبط -->
<div class="uk-grid-margin" uk-grid>
<div class="uk-grid-item-match uk-flex-auto uk-width-1-1@m">
<div class="uk-tile-muted uk-tile uk-tile-small">    
<h5 class="uk-heading-line uk-text-muted uk-margin-medium uk-margin-remove-top"><span><?php echo JText::_('ESHOP_RELATED_PRODUCTS'); ?></span></h5>
<div uk-slider="finite: 1;" class="uk-margin uk-text-center">
<div class="uk-position-relative">
<div class="uk-slider-container">
<ul class="uk-slider-items uk-grid">
<?php
if (EshopHelper::getConfigValue('show_related_products') && count($this->productRelations))
{
	?>
		<?php
		for ($i = 0; $n = count($this->productRelations), $i < $n; $i++)
		{
			$productRelation = $this->productRelations[$i];
			?>
			<li class="el-item uk-width-1-2 uk-width-1-3@s uk-width-1-3@m uk-width-1-4@l uk-width-1-5@xl">
			<div class="uk-cover-container uk-transition-toggle" tabindex="0">
				<a href="<?php echo JRoute::_(EshopRoute::getProductRoute($productRelation->id, EshopHelper::getProductCategory($productRelation->id))); ?>">
					<img src="<?php echo $productRelation->thumb_image; ?>" title="<?php echo $productRelation->product_page_title != '' ? $productRelation->product_page_title : $productRelation->product_name; ?>" alt="<?php echo $productRelation->product_alt_image != '' ? $productRelation->product_alt_image : $productRelation->product_name; ?>" sizes="(min-width: 300px) 300px" data-width="300" data-height="300" class="el-image uk-transition-scale-up uk-transition-opaque" />
					<?php 
					if (isset($productRelation->additional_image) && EshopHelper::getConfigValue('product_image_rollover', 0))
					{
					?>
					<?php
					}
					?>
				</a>
			</div>
				<a href="<?php echo JRoute::_(EshopRoute::getProductRoute($productRelation->id, EshopHelper::getProductCategory($productRelation->id))); ?>">
					<small><?php echo $productRelation->product_name; ?></small>
				</a><br>
				<?php
				if (EshopHelper::showPrice() && !$productRelation->product_call_for_price)
				{
				?>
					<?php
					$productRelationPriceArray = EshopHelper::getProductPriceArray($productRelation->id, $productRelation->product_price);
					if ($productRelationPriceArray['salePrice'] >= 0)
					{
						?>
						<small class="eshop-base-price"><?php echo $this->currency->format($this->tax->calculate($productRelationPriceArray['basePrice'], $productRelation->product_taxclass_id, EshopHelper::getConfigValue('tax'))); ?></small>&nbsp;
						<small><?php echo $this->currency->format($this->tax->calculate($productRelationPriceArray['salePrice'], $productRelation->product_taxclass_id, EshopHelper::getConfigValue('tax'))); ?></small>
						<?php
					}
					else
					{
						?>
						<small><?php echo $this->currency->format($this->tax->calculate($productRelationPriceArray['basePrice'], $productRelation->product_taxclass_id, EshopHelper::getConfigValue('tax'))); ?></small>
						<?php
					}
				}
				if ($productRelation->product_call_for_price)
				{
					?>
					<small class="uk-text-success">
						<?php echo JText::_('ESHOP_CALL_FOR_PRICE'); ?>
					</small>
					<?php
				}
				?>
			</li>
			<?php
		}
		?>
<?php
}
?>
</ul>
	</div>
</div>
<div class="uk-visible@l">
<a class="el-slidenav uk-position-center-left-out" href="#" uk-slidenav-previous uk-slider-item="previous" uk-toggle="cls: uk-position-center-left-out uk-position-center-left; mode: media; media: @l"></a>
<a class="el-slidenav uk-position-center-right-out" href="#" uk-slidenav-next uk-slider-item="next" uk-toggle="cls: uk-position-center-right-out uk-position-center-right; mode: media; media: @l"></a>
</div>
</div>
<ul class="el-nav uk-slider-nav uk-dotnav uk-flex-center uk-margin-top uk-hidden@l" uk-margin></ul>    
</div>
</div>
</div>
<!-- پایان محصولات مرتبط -->



<!-- مشخصات و نظرات کاربران -->
<div class="uk-grid-margin" id="description" uk-grid>
<div class="uk-grid-item-match uk-flex-auto uk-width-1-1@m">
	<div class="uk-tile-muted uk-tile uk-tile-small">    
<div class="uk-margin">
<?php
{
?>

<ul class="el-nav uk-margin uk-background-muted" uk-tab="connect: #js-4c1; animation: uk-animation-slide-bottom-medium;" uk-sticky style="margin-right: -10px !important;">
	<li>
        <a href="#"><?php echo JText::_('ESHOP_DESCRIPTION'); ?></a>
    </li>
	<li>
        <a href="#"><?php echo JText::_('ESHOP_SPECIFICATION'); ?></a>
    </li>	
    <li>
        <a href="#"><?php echo $this->item->tab1_title; ?></a>
    </li>
    <li>
        <a href="#"><?php echo $this->item->tab2_title; ?></a>
    </li>
    <li>
        <a href="#"><?php echo $this->item->tab3_title; ?></a>
    </li>
    <li>
        <a href="#"><?php echo $this->item->tab4_title; ?></a>
    </li>
    <li>
        <a href="#"><?php echo $this->item->tab5_title; ?></a>
    </li>
</ul>



<ul id="js-4c1" class="uk-switcher">
	<li class="el-item uk-margin-remove-first-child">                
		<h3 class="el-title uk-margin-top"><?php echo JText::_('ESHOP_DESCRIPTION'); ?>:</h3>
		<small class="uk-text-meta"><?php echo $this->item->product_name; ?></small>
		<div class="el-content uk-panel uk-margin-top"><?php echo $this->item->product_desc; ?></div>        
	</li>
	<li class="el-item uk-margin-remove-first-child">
		<h3 class="el-title uk-margin-top"><?php echo JText::_('ESHOP_SPECIFICATION'); ?>:</h3>
		<small class="uk-text-meta"><?php echo $this->item->product_name; ?></small>
		<div class="el-content uk-panel uk-margin-top">
		
		<table class="uk-table uk-table-divider uk-table-hover uk-table-small uk-margin-top">
			<thead>
				<tr>
					<th colspan="2"></th>
				</tr>
			</thead>
			<tbody>
				<?php
				if (EshopHelper::getConfigValue('show_product_weight'))
				{
				?>
				<tr>
					<td width="30%"><?php echo JText::_('ESHOP_PRODUCT_WEIGHT'); ?>:</td>
					<td width="70%"><?php echo number_format($this->item->product_weight, 2).EshopHelper::getWeightUnit($this->item->product_weight_id, JFactory::getLanguage()->getTag()); ?></td>
				</tr>
				<?php
				}
				?>

				<?php
				if (EshopHelper::getConfigValue('show_product_dimensions'))
				{
				?>
				<tr>
					<td width="30%"><?php echo JText::_('ESHOP_PRODUCT_DIMENSIONS'); ?>:</td>
					<td width="30%"><?php echo number_format($this->item->product_length, 2).EshopHelper::getLengthUnit($this->item->product_length_id, JFactory::getLanguage()->getTag()) . ' × ' . number_format($this->item->product_width, 2).EshopHelper::getLengthUnit($this->item->product_length_id, JFactory::getLanguage()->getTag()) . ' × ' . number_format($this->item->product_height, 2).EshopHelper::getLengthUnit($this->item->product_length_id, JFactory::getLanguage()->getTag()); ?></td>
				</tr>
				<?php
				}
				?>
			</tbody>
		</table>
		
		<table class="uk-table uk-table-divider uk-table-hover uk-table-small uk-margin-top">
			<?php
			for ($i = 0; $n = count($this->attributeGroups), $i < $n; $i++)
			{
				if (count($this->productAttributes[$i]))
				{
				?>
				<thead>
					<tr>
						<th colspan="2"><h5 class="uk-heading-bullet uk-text-success uk-margin-remove"><?php echo $this->attributeGroups[$i]->attributegroup_name; ?></h5></th>
					</tr>
				</thead>
				<tbody>
					<?php
					for ($j = 0; $m = count($this->productAttributes[$i]), $j < $m; $j++)
					{
						?>
						<tr>
							<td width="30%"><?php echo $this->productAttributes[$i][$j]->attribute_name; ?>:</td>
							<td width="70%"><?php echo $this->productAttributes[$i][$j]->value; ?></td>
						</tr>
						<?php
					}
					?>
				</tbody>
				<?php
				}
				?>
    			<?php
    		}
    		?>
    	</table>		
		</div>        
	</li>

	<li class="el-item uk-margin-remove-first-child">
	<h4 class="el-title uk-margin-top"><?php echo $this->item->tab1_title; ?></h4>
		<div class="el-content uk-panel uk-margin-top"><?php echo $this->item->tab1_content; ?></div>        
	</li>
	<li class="el-item uk-margin-remove-first-child">
	<h4 class="el-title uk-margin-top"><?php echo $this->item->tab2_title; ?></h4>
		<div class="el-content uk-panel uk-margin-top"><?php echo $this->item->tab2_content; ?></div>        
	</li>
	<li class="el-item uk-margin-remove-first-child">
	<h4 class="el-title uk-margin-top"><?php echo $this->item->tab3_title; ?></h4>
		<div class="el-content uk-panel uk-margin-top"><?php echo $this->item->tab3_content; ?></div>        
	</li>
	<li class="el-item uk-margin-remove-first-child">
	<h4 class="el-title uk-margin-top"><?php echo $this->item->tab4_title; ?></h4>
		<div class="el-content uk-panel uk-margin-top"><?php echo $this->item->tab4_content; ?></div>        
	</li>
	<li class="el-item uk-margin-remove-first-child">
	<h4 class="el-title uk-margin-top"><?php echo $this->item->tab5_title; ?></h4>
		<div class="el-content uk-panel uk-margin-top"><?php echo $this->item->tab5_content; ?></div>        
	</li>
</ul>
<?php
}
?>
</div>

    </div>
</div>
</div>
<!-- پایان مشخصات و نظرات کاربران -->


</div>
</div>

</div>


<input type="hidden" name="review-tab" id="review-tab" value="0" />
<script type="text/javascript">
function socialsharing_twitter_click(message)
{
	window.open('https://twitter.com/intent/tweet?text=' + encodeURIComponent(location.href), 'sharer', 'toolbar=0,status=0,width=660,height=445');
}
function socialsharing_facebook_click(message)
{
	window.open('http://www.facebook.com/sharer.php?u=' + encodeURIComponent(location.href), 'sharer', 'toolbar=0,status=0,width=660,height=445');
}
function socialsharing_whatsapp_click(message)
{	
	window.open('https://api.whatsapp.com/send?text=' + encodeURIComponent(location.href), 'sharer', 'toolbar=0,status=0,width=660,height=445');
}
function socialsharing_telegram_click(message)
{
	window.open('https://telegram.me/share/url?url=' + encodeURIComponent(location.href), 'sharer', 'toolbar=0,status=0,width=660,height=445');
}
function socialsharing_linkedin_click(message)
{
	window.open('http://www.linkedin.com/shareArticle?mini=true&url=' + encodeURIComponent(location.href), 'sharer', 'toolbar=0,status=0,width=660,height=445');
}
</script>
<script type="text/javascript">
	// Add to cart button
	Eshop.jQuery(function($){

		$("ul#productTab li a").on('shown.bs.tab', function (e) {
			var isTab = $(this).attr('href');
			var reviewTab = $('#review-tab').val();
			if(isTab == '#reviews' && reviewTab == 0)
			{
				$('#review-tab').val(1);
				loadReviewPagination();
			}
		});
		loadReviewPagination = (function(){
			 $(".review-pagination-list").eshopPagination({
				 containerID: "wrap-review",
				 perPage: 5,
			 });
		})

		$('#add-to-cart').bind('click', function() {
			var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
			$.ajax({
				type: 'POST',
				url: siteUrl + 'index.php?option=com_eshop&task=cart.add<?php echo EshopHelper::getAttachedLangLink(); ?>',
				data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
				dataType: 'json',
				beforeSend: function() {
					$('#add-to-cart').attr('disabled', true);
					$('#add-to-cart').after('<span class="wait">&nbsp;<img src="components/com_eshop/assets/images/loading.svg" alt="" /></span>');
				},
				complete: function() {
					$('#add-to-cart').attr('disabled', false);
					$('.wait').remove();
				},
				success: function(json) {
					$('.error').remove();
					if (json['error']) {
						if (json['error']['option']) {
							for (i in json['error']['option']) {
								$('#option-' + i).after('<small class="error-qst uk-text-danger">' + json['error']['option'][i] + '</small>');
							}
						}
					}
					if (json['success']) {
						<?php
						if (EshopHelper::getConfigValue('cart_popout', 'popout') == 'message')
						{
						    $message = EshopHelper::getCartSuccessMessage($this->item->id, $this->item->product_name);
                            ?>
                            $.ajax({
								url: siteUrl + 'index.php?option=com_eshop&view=cart&layout=mini&format=raw<?php echo EshopHelper::getAttachedLangLink(); ?>&pt=' + json['time'],
								dataType: 'html',
								success: function(html) {
									$('#eshop-cart').html(html);
									$('.eshop-content').hide();
									$('.alert-success').remove();
                                    $('.product-cart').before('<div class="alert-success"><?php echo $message; ?></div>');
								},
								error: function(xhr, ajaxOptions, thrownError) {
									alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
								}
							});
                            <?php
						}
						elseif (EshopHelper::getConfigValue('cart_popout', 'popout') == 'redirect')
						{
						    ?>
    						window.location.href = '<?php echo JRoute::_(EshopRoute::getViewRoute('cart')); ?>';
    						<?php
						}
						else
						{
							?>
							$.ajax({
								url: siteUrl + 'index.php?option=com_eshop&view=cart&layout=popout&format=raw<?php echo EshopHelper::getAttachedLangLink(); ?>&pt=' + json['time'],
								dataType: 'html',
								success: function(html) {
									$.colorbox({
										overlayClose: true,
										opacity: 0.5,
										href: false,
										html: html
									});
									$.ajax({
										url: siteUrl + 'index.php?option=com_eshop&view=cart&layout=mini&format=raw<?php echo EshopHelper::getAttachedLangLink(); ?>&pt=' + json['time'],
										dataType: 'html',
										success: function(html) {
											$('#eshop-cart').html(html);
											$('.eshop-content').hide();
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
							<?php
						}
						?>
					}
			  	},
			  	error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		});
		$('#add-to-quote').bind('click', function() {
			var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
			$.ajax({
				type: 'POST',
				url: siteUrl + 'index.php?option=com_eshop&task=quote.add<?php echo EshopHelper::getAttachedLangLink(); ?>',
				data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
				dataType: 'json',
				beforeSend: function() {
					$('#add-to-quote').attr('disabled', true);
					$('#add-to-quote').after('<span class="wait">&nbsp;<img src="components/com_eshop/assets/images/loading.svg" alt="" /></span>');
				},
				complete: function() {
					$('#add-to-quote').attr('disabled', false);
					$('.wait').remove();
				},
				success: function(json) {
					$('.error').remove();
					if (json['error']) {
						if (json['error']['option']) {
							for (i in json['error']['option']) {
								$('#option-' + i).after('<small class="error-qst uk-text-danger">' + json['error']['option'][i] + '</small>');
							}
						}
					}
					if (json['success']) {
						$.ajax({
							url: siteUrl + 'index.php?option=com_eshop&view=quote&layout=popout&format=raw<?php echo EshopHelper::getAttachedLangLink(); ?>&pt=' + json['time'],
							dataType: 'html',
							success: function(html) {
								$.colorbox({
									overlayClose: true,
									opacity: 0.5,
									href: false,
									html: html
								});
								$.ajax({
									url: siteUrl + 'index.php?option=com_eshop&view=quote&layout=mini&format=raw<?php echo EshopHelper::getAttachedLangLink(); ?>&pt=' + json['time'],
									dataType: 'html',
									success: function(html) {
										$('#eshop-quote').html(html);
										$('.eshop-content').hide();
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
			  	}
			});
		});
		// Submit review button
		$('#button-review').bind('click', function() {
			var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
			$.ajax({
				url: siteUrl + 'index.php?option=com_eshop&task=product.writeReview<?php echo EshopHelper::getAttachedLangLink(); ?>',
				type: 'post',
				dataType: 'json',
				data: $('#reviews input[type=\'text\'], #reviews textarea, #reviews input[type=\'radio\']:checked, #reviews input[type=\'hidden\']'),
				beforeSend: function() {
					$('.success, .warning').remove();
					$('#button-review').attr('disabled', true);
					$('#button-review').after('<span class="wait">&nbsp;<img src="components/com_eshop/assets/images/loading.svg" alt="" /></span>');
				},
				complete: function() {
					$('#button-review').attr('disabled', false);
					$('.wait').remove();
				},
				success: function(data) {
					if (data['error']) {
						$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
					}
					if (data['success']) {
						$('#review-title').after('<div class="success">' + data['success'] + '</div>');
						$('input[name=\'author\']').val('');
						$('textarea[name=\'review\']').val('');
						$('input[name=\'rating\']:checked').attr('checked', '');
					}
				}
			});
		});

		// Function to active reviews tab
		activeReviewsTab = (function(){
			$('#productTabs a[href="#reviews"]').tab('show');
		});
		// Function to update price when options are added
		<?php
		if (EshopHelper::isCartMode($this->item) || EshopHelper::isQuoteMode($this->item))
		{
			?>
			updatePrice = (function(){
				var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
				$.ajax({
					type: 'POST',
					url: siteUrl + 'index.php?option=com_eshop&view=product&id=<?php echo $this->item->id; ?>&layout=price&format=raw<?php echo EshopHelper::getAttachedLangLink(); ?>',
					data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
					dataType: 'html',
					success: function(html) {
						$('#product-price').html(html);
					}
				});
			})
			
			updateInfo = (function(){
    			var siteUrl = '<?php echo EshopHelper::getSiteUrl(); ?>';
    			$.ajax({
    				type: 'POST',
    				url: siteUrl + 'index.php?option=com_eshop&view=product&id=<?php echo $this->item->id; ?>&layout=info&format=raw<?php echo EshopHelper::getAttachedLangLink(); ?>',
    				data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
    				dataType: 'html',
    				success: function(html) {
    					$('#product-dynamic-info').html(html);
    				}
    			});
    		})
			<?php
		}
		?>
		
		$(document).ready(function(){
			  $('.image-additional').slick({
				  dots: false,
				  infinite: false,
				  speed: 300,
				  slidesToShow: 3,
				  touchMove: false,
				  slidesToScroll: 1
				});
		});
		
	})
</script>
<?php
if (count($this->productOptions))
{
	?>
	<script type="text/javascript" src="<?php echo JUri::base(true); ?>/components/com_eshop/assets/js/ajaxupload.js"></script>
	<?php
	foreach ($this->productOptions as $option)
	{
		if ($option->option_type == 'File')
		{
			?>
			<script type="text/javascript">
				new AjaxUpload('#button-option-<?php echo $option->product_option_id; ?>', {
					action: 'index.php',
					name: 'file',
					data: {
						option : 'com_eshop',
						task : 'product.uploadFile'
					},
					autoSubmit: true,
					responseType: 'json',
					onSubmit: function(file, extension) {
						jQuery('#button-option-<?php echo $option->product_option_id; ?>').after('<span class="wait">&nbsp;<img src="components/com_eshop/assets/images/loading.svg" alt="" /></span>');
						jQuery('#button-option-<?php echo $option->product_option_id; ?>').attr('disabled', true);
					},
					onComplete: function(file, json) {
						jQuery('#button-option-<?php echo $option->product_option_id; ?>').attr('disabled', false);
						jQuery('.error').remove();
						if (json['success']) {
							alert(json['success']);
							jQuery('input[name=\'options[<?php echo $option->product_option_id; ?>]\']').attr('value', json['file']);
							jQuery('#file-<?php echo $option->product_option_id; ?>').html(json['file']);
						}
						if (json['error']) {
							jQuery('#option-<?php echo $option->product_option_id; ?>').after('<span class="error">' + json['error'] + '</span>');
						}
						jQuery('.wait').remove();
					}
				});
			</script>
			<?php
		}
	}
}