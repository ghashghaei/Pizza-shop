<?php

defined('_JEXEC') or die;

$msgList = $displayData['msgList'];

$alert = array('error' => 'alert-error', 'warning' => '', 'notice' => 'alert-info', 'message' => 'alert-success');
?>
<div hidden>
	<?php if (is_array($msgList) && $msgList) : ?>
		<?php foreach ($msgList as $type => $msgs) : ?>
				<?php if (!empty($msgs)) : ?>
					<?php foreach ($msgs as $msg) : ?>
					<script>
					var notifications = UIkit.notification('<?php echo $msg; ?>', {
						pos: 'bottom-left',
						status: 'primary',
						timeout: 3000
						});
					</script>
					<?php endforeach; ?>
				<?php endif; ?>
		<?php endforeach; ?>
	<?php endif; ?>
</div>