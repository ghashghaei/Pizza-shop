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
defined('_JEXEC') or die;

/**
 * HTML View class for EShop component
 *
 * @static
 * @package        Joomla
 * @subpackage     EShop
 * @since          1.5
 */
class EShopViewQuote extends EShopView
{
	public function display($tpl = null)
	{
		$app = JFactory::getApplication();

		if (!EshopHelper::getConfigValue('quote_cart_mode'))
		{
			JFactory::getSession()->set('warning', JText::_('ESHOP_QUOTE_CART_MODE_OFF'));
			$app->redirect(JRoute::_(EshopRoute::getViewRoute('categories')));
		}
		else
		{
			$menu     = $app->getMenu();
			$menuItem = $menu->getActive();

			if ($menuItem)
			{
				if (isset($menuItem->query['view']) && ($menuItem->query['view'] == 'frontpage'))
				{
					$pathway = $app->getPathway();
					$pathUrl = EshopRoute::getViewRoute('frontpage');
					$pathway->addItem(JText::_('ESHOP_QUOTE_CART'), $pathUrl);
				}
			}

			JFactory::getDocument()->addStyleSheet(JUri::base(true) . '/components/com_eshop/assets/colorbox/colorbox.css');

			$this->setPageTitle(JText::_('ESHOP_QUOTE_CART'));

			$session         = JFactory::getSession();
			$tax             = new EshopTax(EshopHelper::getConfig());
			$currency        = new EshopCurrency();
			$quoteData       = $this->get('QuoteData');
			$this->quoteData = $quoteData;
			$this->tax       = $tax;
			$this->currency  = $currency;

			// Success message
			if ($session->get('success'))
			{
				$this->success = $session->get('success');
				$session->clear('success');
			}

			//Captcha
			$this->showCaptcha = false;

			if (EshopHelper::getConfigValue('enable_quote_captcha'))
			{
				$captchaPlugin = JFactory::getConfig()->get('captcha');
				 
				if (!$captchaPlugin)
				{
				    // Hardcode to recaptcha, reduce support request
				    $captchaPlugin = 'recaptcha';
				}
				 
				$plugin = JPluginHelper::getPlugin('captcha', $captchaPlugin);
				 
				if ($plugin)
				{
				    $this->showCaptcha = true;
				    $this->captcha = JCaptcha::getInstance($captchaPlugin)->display('dynamic_recaptcha_1', 'dynamic_recaptcha_1', 'required');
				}
				else
				{
				    JFactory::getApplication()->enqueueMessage(\JText::_('ESHOP_CAPTCHA_IS_NOT_ACTIVATED'), 'error');
				}
				 
				$this->captchaPlugin = $captchaPlugin;
			}

			$this->bootstrapHelper       = new EshopHelperBootstrap(EshopHelper::getConfigValue('twitter_bootstrap_version'));

			parent::display($tpl);
		}
	}
}