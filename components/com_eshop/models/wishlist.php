<?php

// no direct access
defined('_JEXEC') or die;

class EShopModelWishlist extends EShopModel
{
	/**
	 * Constructor.
	 *
	 * @param array $config
	 */
	public function __construct($config = array())
	{
		parent::__construct($config);
	}

	public function add($productId)
	{
		$json        = array();
		$productInfo = EshopHelper::getProduct($productId, JFactory::getLanguage()->getTag());

		if (is_object($productInfo))
		{
			$user             = JFactory::getUser();
			$viewProductLink  = JRoute::_(EshopRoute::getProductRoute($productId, EshopHelper::getProductCategory($productId)));
			$viewWishListLink = JRoute::_(EshopRoute::getViewRoute('wishlist'));

			if ($user->get('id'))
			{
				$db    = $this->getDbo();
				$query = $db->getQuery(true);
				$query->select('COUNT(*)')
					->from('#__eshop_wishlists')
					->where('customer_id = ' . intval($user->get('id')))
					->where('product_id = ' . intval($productId));
				$db->setQuery($query);

				if ($db->loadResult())
				{
					$message = '<div class="wish-list-message">' . sprintf(JText::_('ESHOP_ADD_TO_WISHLIST_ALREADY_IN_MESSAGE_USER'), $viewProductLink, $productInfo->product_name, $viewWishListLink) . '</div>';
				}
				else
				{
					$row              = JTable::getInstance('Eshop', 'Wishlist');
					$row->customer_id = $user->get('id');
					$row->product_id  = $productId;
					$row->store();
					$message = '<div class="wish-list-message">' . sprintf(JText::_('ESHOP_ADD_TO_WISHLIST_SUCCESS_MESSAGE_USER'), $viewProductLink, $productInfo->product_name, $viewWishListLink) . '</div>';
				}
			}
			else
			{
				$session  = JFactory::getSession();
				$wishlist = $session->get('wishlist');

				if (!$wishlist)
				{
					$wishlist = array();
				}

				if (!in_array($productId, $wishlist))
				{
					$wishlist[] = $productId;
					$session->set('wishlist', $wishlist);
				}

				$loginLink    = JRoute::_('index.php?option=com_users&view=login&return=' . base64_encode('index.php?option=com_eshop&view=wishlist'));
				$registerLink = JRoute::_('index.php?option=com_users&view=registration');
				$message      = '<div class="wish-list-message">' . sprintf(JText::_('ESHOP_ADD_TO_WISHLIST_SUCCESS_MESSAGE_GUEST'), $viewProductLink, $productInfo->product_name, $viewWishListLink, $loginLink, $registerLink) . '</div>';
			}

			$json['success']['message'] = '<h3>' . JText::_('ESHOP_WISHLIST') . '</h3>' . $message;
		}

		return $json;
	}
}