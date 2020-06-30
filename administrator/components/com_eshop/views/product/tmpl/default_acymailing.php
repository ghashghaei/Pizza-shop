<?php
/**
 * @version        3.3.0
 * @package        Joomla
 * @subpackage     EShop
 * @author         Giang Dinh Truong
 * @copyright      Copyright (C) 2012 Ossolution Team
 * @license        GNU/GPL, see LICENSE.php
 */
// no direct access
defined('_JEXEC') or die();
?>
<div class="control-group">
	<div class="control-label">
		<?php echo JText::_('ESHOP_ACYMAILING_NEWSLETTER_LISTS'); ?>
		<span class="help"><?php echo JText::_('ESHOP_ACYMAILING_NEWSLETTER_LISTS_HELP'); ?></span>
	</div>
	<div class="controls">
		<?php echo $this->lists['acymailing_list_ids']; ?>
	</div>
</div>

