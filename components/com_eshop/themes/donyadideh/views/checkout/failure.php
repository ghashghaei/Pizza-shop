<?php

// no direct access
defined( '_JEXEC' ) or die(); 
?>
<h3><?php echo JText::_('ESHOP_PAYMENT_FAILURE_TITLE'); ?></h3>
<p>
	<?php
	$session = JFactory::getSession();
	echo $session->get('omnipay_payment_error_reason');
	?>
</p>