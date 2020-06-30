<?php
/**
 * @version		3.3.0
 * @package		Joomla
 * @subpackage	EShop
 * @author  	Giang Dinh Truong
 * @copyright	Copyright (C) 2012 Ossolution Team
 * @license		GNU/GPL, see LICENSE.php
 */
// no direct access
defined( '_JEXEC' ) or die();
?>
<button class="btn" type="button" onclick="Joomla.submitbutton('products.cancel'); ">
	<?php echo JText::_('ESHOP_CANCEL'); ?>
</button>
<button class="btn btn-success" type="submit" onclick="Joomla.submitbutton('products.saveInventory');">
	<?php echo JText::_('ESHOP_PROCESS'); ?>
</button>