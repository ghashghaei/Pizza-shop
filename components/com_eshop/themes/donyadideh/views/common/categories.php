<?php

// no direct access
defined( '_JEXEC' ) or die();

$span                   = intval(12 / $categoriesPerRow);
$rowFluidClass          = $bootstrapHelper->getClassMapping('row-fluid');
$spanClass              = $bootstrapHelper->getClassMapping('span' . $span);
?>

<div class="uk-grid-margin" uk-grid>
<div class="uk-flex-auto uk-width-1-1@m">
<div class="uk-margin uk-text-center">
<div class="uk-child-width-1-2 uk-child-width-1-2@s uk-child-width-1-3@m uk-child-width-1-3@l uk-child-width-1-3@xl uk-grid-small uk-grid-match" uk-grid>
	<?php
	$count = 0;
	foreach ($categories as $category) 
	{
		$categoryUrl = JRoute::_(EshopRoute::getCategoryRoute($category->id));
		?>
	<div>
	<a class="el-item uk-card uk-card-default uk-card-small uk-card-hover uk-transition-toggle uk-display-block uk-link-toggle" href="<?php echo $categoryUrl; ?>" title="<?php echo $category->category_page_title != '' ? $category->category_page_title : $category->category_name; ?>">

	<div class="uk-card-media-top">
	<div class="uk-inline-clip">
	<img src="<?php echo $category->image; ?>" alt="<?php echo $category->category_alt_image != '' ? $category->category_alt_image : $category->category_name; ?>" sizes="(min-width: 500px) 500px" data-width="500" data-height="333" class="el-image uk-transition-scale-up uk-transition-opaque">
	</div>
	</div>

	<div class="uk-card-body uk-margin-remove-first-child">				
	<h6 class="el-title uk-margin-top uk-margin-remove-bottom"><?php echo $category->category_name; ?></h6>
	</div>				

	</a>
	</div>

	<?php
	}
	?>
</div>
</div>
</div>
</div>