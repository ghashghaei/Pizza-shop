<?php

defined('_JEXEC') or die;

JHtml::_('jquery.framework');
JFactory::getDocument()->addScriptDeclaration('
	jQuery(document).ready(function($) {
		$("a.js-revert").on("click", function(e) {
			e.preventDefault();
			e.stopPropagation();

			var activeTab = [];
			activeTab.push("#" + e.target.href.split("#")[1]);
			var path = window.location.pathname;
			localStorage.removeItem(e.target.href.replace(/&return=[a-zA-Z0-9%]+/, "").replace(/&[a-zA-Z-_]+=[0-9]+/, ""));
			localStorage.setItem(path + e.target.href.split("index.php")[1].split("#")[0], JSON.stringify(activeTab));
			return window.location.href = e.target.href.split("#")[0];
		});
	});
');
?>

<div class="uk-container uk-margin-large-top">
<div class="uk-grid-margin" uk-grid>
<div class="uk-width-1-1@m">
<div class="uk-margin uk-text-center">
<div class="uk-grid-small uk-child-width-1-2 uk-child-width-1-3@s uk-child-width-1-3@m uk-child-width-1-4@l uk-child-width-1-4@xl uk-grid-match" uk-grid>
<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php?option=com_content&view=article&layout=edit">
<span class="el-image uk-text-muted" uk-icon="icon: file-edit; ratio: 3;"></span>
<h4 class="el-title uk-margin-top uk-margin-remove-bottom">جدید</h4>
<div class="el-meta uk-text-meta uk-margin-top">ایجاد مطلب جدید</div>
</a>
</div>
<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php?option=com_content">
<span class="el-image uk-text-muted" uk-icon="icon: copy; ratio: 3;"></span>
<h4 class="el-title uk-margin-top uk-margin-remove-bottom">مطالب</h4>
<div class="el-meta uk-text-meta uk-margin-top">مشاهده کل مطالب</div>
</a>
</div>
<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php?option=com_categories&extension=com_content">
<span class="el-image uk-text-muted" uk-icon="icon: folder; ratio: 3;"></span>
<h4 class="el-title uk-margin-top uk-margin-remove-bottom">مجموعه ها</h4>
<div class="el-meta uk-text-meta uk-margin-top">مشاهده کل مجموعه ها</div>
</a>
</div>
<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php?option=com_tags">
<span class="el-image uk-text-muted" uk-icon="icon: tag; ratio: 3;"></span>
<h4 class="el-title uk-margin-top uk-margin-remove-bottom">برچسب ها</h4>
<div class="el-meta uk-text-meta uk-margin-top">مشاهده کل برچسب ها</div>
</a></div>
<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php?option=com_menus&view=items&menutype=mainmenu">
<span class="el-image uk-text-muted" uk-icon="icon: menu; ratio: 3;"></span>
<h4 class="el-title uk-margin-top uk-margin-remove-bottom">منو ها</h4>
<div class="el-meta uk-text-meta uk-margin-top">مشاهده منوهای سایت</div>
</a>
</div>
<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php?option=com_modules">
<span class="el-image uk-text-muted" uk-icon="icon: thumbnails; ratio: 3;"></span>
<h4 class="el-title uk-margin-top uk-margin-remove-bottom">ماژول ها</h4>
<div class="el-meta uk-text-meta uk-margin-top">مشاهده ماژول های سایت</div>
</a>
</div>
<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php?option=com_users&view=users">
<span class="el-image uk-text-muted" uk-icon="icon: users; ratio: 3;"></span>
<h4 class="el-title uk-margin-top uk-margin-remove-bottom">کاربران</h4>
<div class="el-meta uk-text-meta uk-margin-top">مشاهده کاربران سایت</div>
</a></div>
<div>
<a class="el-item uk-card uk-card-default uk-card-hover uk-card-body uk-margin-remove-first-child uk-display-block uk-link-toggle" href="index.php?option=com_media">
<span class="el-image uk-text-muted" uk-icon="icon: server; ratio: 3;"></span>
<h4 class="el-title uk-margin-top uk-margin-remove-bottom">فضای هاست</h4>
<div class="el-meta uk-text-meta uk-margin-top">مشاهده فضای سایت</div>
</a>
</div>
</div>
</div>
</div>
</div>
</div>

<h4 class="uk-heading-line uk-text-center uk-margin-large"><span>اطلاعات سیستم</span></h4>

<div class="uk-container">
<div class="uk-grid-margin" uk-grid>
<div class="uk-width-1-1@m">
<div class="uk-margin">
<div class="uk-grid-small uk-child-width-1-2 uk-child-width-1-2@s uk-child-width-1-2@m uk-child-width-1-3@l uk-child-width-1-3@xl uk-grid-match" uk-grid>

<?php foreach ($list as $item) : ?>

<div>
<div class="el-item uk-tile uk-tile-default uk-padding uk-margin-remove-first-child">
<div class="uk-child-width-expand uk-grid-small" uk-grid>
<div class="uk-width-1-4@s">
<span class="el-image uk-text-success" uk-icon="icon: <?php echo $item->icon; ?>; ratio: 2;"></span></div>
<div class="uk-margin-remove-first-child">
<h5 class="el-title uk-text-muted uk-margin-top uk-margin-remove-bottom"><?php echo $item->title; ?></h5>        
<div class="el-meta uk-text-meta uk-text-muted uk-margin-top"><?php echo $item->data; ?></div>        
</div>
</div>
</div>
</div>

<?php endforeach; ?>

</div>
</div>
</div>
</div>
</div>