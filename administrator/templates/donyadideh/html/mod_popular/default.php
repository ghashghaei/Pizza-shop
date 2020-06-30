<?php

defined('_JEXEC') or die;

?>

<h4 class="uk-heading-line uk-text-center uk-margin-large-bottom"><span>اطلاعات محتوای سایت</span></h3>

<div class="uk-container">
<div class="uk-grid uk-grid-medium" data-uk-grid>

<!-- panel -->
<div class="uk-width-1-1@l">
<div class="uk-card uk-card-default uk-card-hover">
<div class="uk-card-header">
<div class="uk-grid uk-grid-small">
<div class="uk-width-auto"><h4>پر بازدیدترین مطالب</h4></div>
<div class="uk-width-expand uk-text-left panel-icons">
<a href="#" data-uk-icon="icon: move"></a>
<a href="#" data-uk-icon="icon: cog"></a>
</div>
</div>
</div>
<div class="uk-card-body">
<div class="chart-container">

<div class="uk-overflow-auto">
<table class="uk-table uk-table-divider uk-table-hover">

<thead>
<tr>
<th>تعداد بازدید</th>
<th class="uk-text-nowrap">عنوان مطلب</th>
<th class="uk-text-nowrap">نام کاربر</th>
<th class="uk-text-center uk-text-nowrap">تاریخ ایجاد</th>
</tr>
</thead>

<tbody>

<?php if (count($list)) : ?>
<?php foreach ($list as $i => $item) : ?>
<?php // Calculate popular items ?>
<?php $hits = (int) $item->hits; ?>
<?php $hits_class = ($hits >= 10000 ? 'important' : ($hits >= 1000 ? 'warning' : ($hits >= 100 ? 'info' : ''))); ?>

<tr class="el-item">
<td class="uk-table-shrink">
<span class="badge badge-<?php echo $hits_class; ?> hasTooltip" title="<?php echo JHtml::_('tooltipText', 'JGLOBAL_HITS'); ?>"><?php echo $item->hits; ?></span>
<?php if ($item->checked_out) : ?>
<?php echo JHtml::_('jgrid.checkedout', $i, $item->editor, $item->checked_out_time); ?>
<?php endif; ?>
</td>
<td class="uk-text-nowrap uk-table-shrink">
<?php if ($item->link) : ?>
<a href="<?php echo $item->link; ?>">
<?php echo htmlspecialchars($item->title, ENT_QUOTES, 'UTF-8'); ?></a>
<?php else : ?>
<?php echo htmlspecialchars($item->title, ENT_QUOTES, 'UTF-8'); ?>
<?php endif; ?>
</td>
<td class="uk-text-nowrap uk-table-shrink">
<?php echo $item->author_name; ?>
</td>
<td class="uk-text-nowrap uk-text-center uk-table-shrink">
<?php echo JHtml::_('date', $item->created, JText::_('DATE_FORMAT_LC5')); ?>
</td>
</tr>

<?php endforeach; ?>

</tbody>

</table>
</div>

<?php else : ?>
<?php echo JText::_('MOD_POPULAR_NO_MATCHING_RESULTS'); ?>
<?php endif; ?>

</div>
</div>
</div>
</div>
</div>
</div>