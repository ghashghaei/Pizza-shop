<?php

defined('_JEXEC') or die;

?>
<div class="uk-container">
<div class="uk-grid uk-grid-medium" data-uk-grid>

<!-- panel -->
<div class="uk-width-1-1@l">
<div class="uk-card uk-card-default uk-card-hover">
<div class="uk-card-header">
<div class="uk-grid uk-grid-small">
<div class="uk-width-auto"><h4>آخرین مطالب</h4></div>
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
<th>وضعیت</th>
<th class="uk-text-nowrap">عنوان مطلب</th>
<th class="uk-text-nowrap">نام کاربر</th>
<th class="uk-text-center uk-text-nowrap">تاریخ ایجاد</th>
</tr>
</thead>

<tbody>
<?php if (count($list)) : ?>
<?php foreach ($list as $i => $item) : ?>

<tr class="el-item">
<td class="uk-table-shrink">
<?php echo JHtml::_('jgrid.published', $item->state, $i, 'articles.', false, 'cb', $item->publish_up, $item->publish_down); ?>
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
<?php echo JText::_('MOD_LATEST_NO_MATCHING_RESULTS');?>
<?php endif; ?>

</div>
</div>
</div>
</div>
</div>
</div>
