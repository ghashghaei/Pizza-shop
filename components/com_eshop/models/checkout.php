<?php

// no direct access
defined('_JEXEC') or die;

use Joomla\Registry\Registry;

class EShopModelCheckout extends EShopModel
{

	/**
	 * Entity data
	 *
	 * @var array
	 */
	protected $cartData = null;

	/**
	 *
	 * Total Data object array, each element is an price price in the cart
	 * @var object array
	 */
	protected $totalData = null;

	/**
	 *
	 * Final total price of the cart
	 * @var float
	 */
	protected $total = null;

	/**
	 *
	 * Taxes of all elements in the cart
	 * @var array
	 */
	protected $taxes = null;

	public function __construct($config = array())
	{
		parent::__construct();
		$this->cartData  = null;
		$this->totalData = null;
		$this->total     = null;
		$this->taxes     = null;
	}

	/**
	 *
	 * Function to register user
	 *
	 * @param post array $data
	 *
	 * @return  array
	 */
	public function register($data)
	{
		$cart    = new EshopCart();
		$user    = JFactory::getUser();
		$session = JFactory::getSession();
		$input   = JFactory::getApplication()->input;

		//Process EU Vat Number
		if (EshopHelper::getConfigValue('enable_eu_vat_rules') && EshopHelper::getConfigValue('eu_vat_rules_based_on') == 'payment')
		{
			$euVatNumber = $input->get('eu_vat_number');

			if ($euVatNumber != '' && EshopEuvat::validateEUVATNumber($euVatNumber))
			{
				$session->set('eu_vat_number', $euVatNumber);
			}
			else
			{
				$session->clear('eu_vat_number');
			}
		}

		$json  = array();
		$db    = JFactory::getDbo();
		$query = $db->getQuery(true);

		// If user is already logged in, return to checkout page
		if ($user->get('id'))
		{
			if (EshopHelper::getConfigValue('active_https'))
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'), true, 1);
			}
			else
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'));
			}
		}

		// Validate products in the cart
		if (!$cart->hasProducts())
		{
			$json['return'] = JRoute::_(EshopRoute::getViewRoute('cart'));
		}

		if (!$json)
		{
			$fields = EshopHelper::getFormFields('B');
			$form   = new RADForm($fields);

			if (isset($data['country_id']) && !EshopHelper::hasZone($data['country_id']))
			{
				$form->removeRule('zone_id');
			}

			$valid = $form->validate($data);

			if (!$valid)
			{
				$json['error'] = $form->getErrors();
			}

			//Email validate
			if ($data['email'] != '')
			{
				$query->select('COUNT(*)')
					->from('#__users')
					->where('email = "' . $data['email'] . '"');
				$db->setQuery($query);

				if ($db->loadResult())
				{
					$json['error']['email'] = JText::_('ESHOP_ERROR_EMAIL_EXISTED');
				}
			}

			// Username validate
			if ($data['username'] == '')
			{
				$json['error']['username'] = JText::_('ESHOP_ERROR_USERNAME');
			}
			else
			{
				$query->clear()
					->select('COUNT(*)')
					->from('#__users')
					->where('username = "' . $data['username'] . '"');
				$db->setQuery($query);

				if ($db->loadResult())
				{
					$json['error']['username'] = JText::_('ESHOP_ERROR_USERNAME_EXISTED');
				}
			}

			// Password validate
			if ($data['password1'] == '')
			{
				$json['error']['password1'] = JText::_('ESHOP_ERROR_PASSWORD');
			}

			// Confirm password validate
			if ($data['password1'] != $data['password2'])
			{
				$json['error']['password2'] = JText::_('ESHOP_ERROR_CONFIRM_PASSWORD');
			}

			// Captcha validation
			if (EshopHelper::getConfigValue('enable_register_account_captcha'))
			{
				$input = JFactory::getApplication()->input;
				$captchaPlugin = JFactory::getConfig()->get('captcha');
				
				if (!$captchaPlugin)
				{
				    // Hardcode to recaptcha, reduce support request
				    $captchaPlugin = 'recaptcha';
				}
				
				$plugin = JPluginHelper::getPlugin('captcha', $captchaPlugin);
				
				if ($plugin)
				{
				    try
				    {
				        JCaptcha::getInstance($captchaPlugin)->checkAnswer($input->post->get('recaptcha_response_field', '', 'string'));
				    }
				    catch (\Exception $e)
				    {
				        $json['error']['captcha'] = JText::_('ESHOP_INVALID_CAPTCHA');
				    }   
				}
			}
			
			// Validate account terms agree
			if (EshopHelper::getConfigValue('account_terms') && !isset($data['account_terms_agree']))
			{
				$json['error']['warning'] = JText::_('ESHOP_ERROR_ACCOUNT_TERMS_AGREE');
			}
		}

		if (!$json)
		{
			$session->set('account', 'register');
			// Register user here
			// Load com_users language file
			$lang = JFactory::getLanguage();
			$tag  = $lang->getTag();

			if (!$tag)
			{
				$tag = 'en-GB';
			}

			$lang->load('com_users', JPATH_ROOT, $tag);
			$data['name'] = $data['firstname'];

			if (isset($data['lastname']))
			{
				$data['name'] .= ' ' . $data['lastname'];
			}

			$data['password'] = $data['password2'] = $data['password'] = $data['password1'];
			$data['email1']   = $data['email2'] = $data['email'];

			$user             = new JUser();
			$params           = JComponentHelper::getParams('com_users');
			$data['groups']   = array();
			$data['groups'][] = $params->get('new_usertype', 2);
			$data['block']    = 0;

			if (!$user->bind($data))
			{
				$json['error']['warning'] = JText::sprintf('COM_USERS_REGISTRATION_BIND_FAILED', $user->getError());
			}
			else
			{
				// Store the data.
				if (!$user->save())
				{
					$json['error']['warning'] = JText::sprintf('COM_USERS_REGISTRATION_SAVE_FAILED', $user->getError());
				}
			}
		}

		if (!$json)
		{
			// Login user first
			$app                     = JFactory::getApplication();
			$credentials             = array();
			$credentials['username'] = $data['username'];
			$credentials['password'] = $data['password1'];
			$options                 = array();

			if (true === $app->login($credentials, $options))
			{
				// Login success - store address
				$user = JFactory::getUser();
				$row  = JTable::getInstance('Eshop', 'Address');
				$row->bind($data);
				$row->customer_id   = $user->get('id');
				$row->created_date  = JFactory::getDate()->toSql();
				$row->modified_date = JFactory::getDate()->toSql();
				$row->store();
				$addressId = $row->id;
				// Store customer
				$row = JTable::getInstance('Eshop', 'Customer');
				$row->bind($data);
				$row->customer_id     = $user->get('id');
				$customerGroupId      = EshopHelper::getConfigValue('customergroup_id');
				$customerGroupDisplay = EshopHelper::getConfigValue('customer_group_display');

				if ($customerGroupDisplay != '')
				{
					$customerGroupDisplay = explode(',', $customerGroupDisplay);

					$selectedCustomerGroupId = $input->getInt('customergroup_id', 0);

					if ($selectedCustomerGroupId && in_array($selectedCustomerGroupId, $customerGroupDisplay))
					{
						$customerGroupId = $selectedCustomerGroupId;
					}
				}

				$row->customergroup_id = $customerGroupId;
				$row->address_id       = $addressId;
				$row->published        = 1;
				$row->created_date     = JFactory::getDate()->toSql();
				$row->modified_date    = JFactory::getDate()->toSql();
				$row->store();

				//Assign billing address
				$addressInfo = EshopHelper::getAddress($addressId);
				$session->set('payment_address_id', $addressId);

				if (count($addressInfo))
				{
					$session->set('payment_country_id', $addressInfo['country_id']);
					$session->set('payment_zone_id', $addressInfo['zone_id']);
					$session->set('payment_postcode', $addressInfo['postcode']);
				}
				else
				{
					$session->clear('payment_country_id');
					$session->clear('payment_zone_id');
					$session->clear('payment_postcode');
				}

				if (isset($data['shipping_address']))
				{
					$session->set('shipping_address_id', $addressId);

					if (count($addressInfo))
					{
						$session->set('shipping_country_id', $addressInfo['country_id']);
						$session->set('shipping_zone_id', $addressInfo['zone_id']);
						$session->set('shipping_postcode', $addressInfo['postcode']);
					}
					else
					{
						$session->clear('shipping_country_id');
						$session->clear('shipping_zone_id');
						$session->clear('shipping_postcode');
					}
					//Process EU Vat Number
					if (EshopHelper::getConfigValue('enable_eu_vat_rules') && EshopHelper::getConfigValue('eu_vat_rules_based_on') == 'shipping')
					{
						$euVatNumber = $input->get('eu_vat_number');
					
						if ($euVatNumber != '' && EshopEuvat::validateEUVATNumber($euVatNumber))
						{
							$session->set('eu_vat_number', $euVatNumber);
						}
						else
						{
							$session->clear('eu_vat_number');
						}
					}
				}
			}
			else
			{
				$json['error']['warning'] = JText::_('ESHOP_WARNING_LOGIN_FAILED');
			}

			$session->clear('guest');
			$session->clear('customer');
			$session->clear('shipping_method');
			$session->clear('shipping_methods');
			$session->clear('payment_method');
		}

		return $json;
	}

	/**
	 *
	 * Function to guest
	 *
	 * @param post array $data
	 *
	 * @return  array
	 */
	public function guest($data)
	{
		$cart    = new EshopCart();
		$user    = JFactory::getUser();
		$session = JFactory::getSession();
		$input   = JFactory::getApplication()->input;

		//Process EU Vat Number
		if (EshopHelper::getConfigValue('enable_eu_vat_rules') && EshopHelper::getConfigValue('eu_vat_rules_based_on') == 'payment')
		{
			$euVatNumber = $input->get('eu_vat_number');

			if ($euVatNumber != '' && EshopEuvat::validateEUVATNumber($euVatNumber))
			{
				$session->set('eu_vat_number', $euVatNumber);
			}
			else
			{
				$session->clear('eu_vat_number');
			}
		}

		$json = array();

		// If user is already logged in, return to checkout page
		if ($user->get('id'))
		{
			if (EshopHelper::getConfigValue('active_https'))
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'), true, 1);
			}
			else
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'));
			}
		}

		// Validate products in the cart
		if (!$cart->hasProducts())
		{
			$json['return'] = JRoute::_(EshopRoute::getViewRoute('cart'));
		}

		if (!$json)
		{
			$fields = EshopHelper::getFormFields('B');
			$form   = new RADForm($fields);

			if (isset($data['country_id']) && !EshopHelper::hasZone($data['country_id']))
			{
				$form->removeRule('zone_id');
			}

			$valid = $form->validate($data);

			if (!$valid)
			{
				$json['error'] = $form->getErrors();
			}
		}

		if (!$json)
		{
			$customerGroupId      = EshopHelper::getConfigValue('customergroup_id');
			$customerGroupDisplay = EshopHelper::getConfigValue('customer_group_display');

			if ($customerGroupDisplay != '')
			{
				$customerGroupDisplay    = explode(',', $customerGroupDisplay);
				$selectedCustomerGroupId = $input->getInt('customergroup_id', 0);

				if ($selectedCustomerGroupId && in_array($selectedCustomerGroupId, $customerGroupDisplay))
				{
					$customerGroupId = $selectedCustomerGroupId;
				}
			}

			// Set guest information session
			$guest                     = array();
			$guest['customer_id']      = 0;
			$guest['customergroup_id'] = $customerGroupId;
			$guest['firstname']        = $data['firstname'];
			$guest['lastname']         = isset($data['lastname']) ? $data['lastname'] : '';
			$guest['email']            = $data['email'];
			$guest['telephone']        = isset($data['telephone']) ? $data['telephone'] : '';
			$guest['fax']              = isset($data['fax']) ? $data['fax'] : '';

			// Set payment (billing) address session
			$guest['payment'] = array();
			$billingFields    = EshopHelper::getFormFields('B');

			foreach ($billingFields as $field)
			{
				$fieldName = $field->name;

				if (isset($data[$fieldName]))
				{
					$guest['payment'][$fieldName] = $data[$fieldName];
				}
				else
				{
					$guest['payment'][$fieldName] = null;
				}
			}

			$countryId   = isset($data['country_id']) ? $data['country_id'] : EshopHelper::getConfigValue('country_id');
			$countryInfo = EshopHelper::getCountry($countryId);

			if (is_object($countryInfo))
			{
				$guest['payment']['country_name'] = $countryInfo->country_name;
				$guest['payment']['iso_code_2']   = $countryInfo->iso_code_2;
				$guest['payment']['iso_code_3']   = $countryInfo->iso_code_3;
			}
			else
			{
				$guest['payment']['country_name'] = '';
				$guest['payment']['iso_code_2']   = '';
				$guest['payment']['iso_code_3']   = '';
			}

			$zoneId   = isset($data['zone_id']) ? $data['zone_id'] : EshopHelper::getConfigValue('zone_id');
			$zoneInfo = EshopHelper::getZone($zoneId);

			if (is_object($zoneInfo))
			{
				$guest['payment']['zone_name'] = $zoneInfo->zone_name;
				$guest['payment']['zone_code'] = $zoneInfo->zone_code;
			}
			else
			{
				$guest['payment']['zone_name'] = '';
				$guest['payment']['zone_code'] = '';
			}

			// Default Payment Address
			$session->set('payment_country_id', $countryId);
			$session->set('payment_zone_id', $zoneId);
			$session->set('payment_postcode', isset($data['postcode']) ? $data['postcode'] : EshopHelper::getConfigValue('postcode'));

			// Set shipping address session
			if (isset($data['shipping_address']))
			{
				$guest['shipping_address'] = true;
			}
			else
			{
				$guest['shipping_address'] = false;
			}

			if ($guest['shipping_address'])
			{
				$guest['shipping'] = array();

				$shippingFields = EshopHelper::getFormFields('S');

				foreach ($shippingFields as $field)
				{
					$fieldName = $field->name;

					if (isset($data[$fieldName]))
					{
						$guest['shipping'][$fieldName] = $data[$fieldName];
					}
					else
					{
						$guest['shipping'][$fieldName] = null;
					}
				}

				if (is_object($countryInfo))
				{
					$guest['shipping']['country_name'] = $countryInfo->country_name;
					$guest['shipping']['iso_code_2']   = $countryInfo->iso_code_2;
					$guest['shipping']['iso_code_3']   = $countryInfo->iso_code_3;
				}
				else
				{
					$guest['shipping']['country_name'] = '';
					$guest['shipping']['iso_code_2']   = '';
					$guest['shipping']['iso_code_3']   = '';
				}

				if (is_object($zoneInfo))
				{
					$guest['shipping']['zone_name'] = $zoneInfo->zone_name;
					$guest['shipping']['zone_code'] = $zoneInfo->zone_code;
				}
				else
				{
					$guest['shipping']['zone_name'] = '';
					$guest['shipping']['zone_code'] = '';
				}

				// Default Shipping Address
				$session->set('shipping_country_id', $countryId);
				$session->set('shipping_zone_id', $zoneId);
				$session->set('shipping_postcode', isset($data['postcode']) ? $data['postcode'] : EshopHelper::getConfigValue('postcode'));
				
				//Process EU Vat Number
				if (EshopHelper::getConfigValue('enable_eu_vat_rules') && EshopHelper::getConfigValue('eu_vat_rules_based_on') == 'shipping')
				{
					$euVatNumber = $input->get('eu_vat_number');
						
					if ($euVatNumber != '' && EshopEuvat::validateEUVATNumber($euVatNumber))
					{
						$session->set('eu_vat_number', $euVatNumber);
					}
					else
					{
						$session->clear('eu_vat_number');
					}
				}
			}
			else
			{
				$tempGuest = $session->get('guest');

				if (isset($tempGuest['shipping']))
				{
					$guest['shipping'] = $tempGuest['shipping'];
				}
			}

			self::getCosts();

			$json['total'] = $this->total;
			$session->set('guest', $guest);
			$session->set('account', 'guest');
			$session->clear('shipping_method');
			$session->clear('shipping_methods');
			$session->clear('payment_method');
		}

		return $json;
	}

	/**
	 *
	 * Function to process guest shipping
	 *
	 * @param array $data
	 *
	 * @return array
	 */
	public function processGuestShipping($data)
	{
		$cart    = new EshopCart();
		$user    = JFactory::getUser();
		$session = JFactory::getSession();

		//Process EU Vat Number
		if (EshopHelper::getConfigValue('enable_eu_vat_rules') && EshopHelper::getConfigValue('eu_vat_rules_based_on') == 'shipping')
		{
			$input       = JFactory::getApplication()->input;
			$euVatNumber = $input->get('eu_vat_number');

			if ($euVatNumber != '' && EshopEuvat::validateEUVATNumber($euVatNumber))
			{
				$session->set('eu_vat_number', $euVatNumber);
			}
			else
			{
				$session->clear('eu_vat_number');
			}
		}

		$json = array();

		// If user is already logged in, return to checkout page
		if ($user->get('id'))
		{
			if (EshopHelper::getConfigValue('active_https'))
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'), true, 1);
			}
			else
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'));
			}
		}

		// Validate products in the cart
		if (!$cart->hasProducts())
		{
			$json['return'] = JRoute::_(EshopRoute::getViewRoute('cart'));
		}

		if (!$json)
		{
			$fields = EshopHelper::getFormFields('S');
			$form   = new RADForm($fields);

			if (isset($data['country_id']) && !EshopHelper::hasZone($data['country_id']))
			{
				$form->removeRule('zone_id');
			}

			$valid = $form->validate($data);

			if (!$valid)
			{
				$json['error'] = $form->getErrors();
			}
		}

		if (!$json)
		{
			$guest             = $session->get('guest');
			$guest['shipping'] = array();
			$shippingFields    = EshopHelper::getFormFields('S');

			foreach ($shippingFields as $field)
			{
				$fieldName = $field->name;

				if (isset($data[$fieldName]))
				{
					$guest['shipping'][$fieldName] = $data[$fieldName];
				}
				else
				{
					$guest['shipping'][$fieldName] = null;
				}
			}

			$countryId   = isset($data['country_id']) ? $data['country_id'] : EshopHelper::getConfigValue('country_id');
			$countryInfo = EshopHelper::getCountry($countryId);

			if (is_object($countryInfo))
			{
				$guest['shipping']['country_name'] = $countryInfo->country_name;
				$guest['shipping']['iso_code_2']   = $countryInfo->iso_code_2;
				$guest['shipping']['iso_code_3']   = $countryInfo->iso_code_3;
			}
			else
			{
				$guest['shipping']['country_name'] = '';
				$guest['shipping']['iso_code_2']   = '';
				$guest['shipping']['iso_code_3']   = '';
			}

			$zoneId   = isset($data['zone_id']) ? $data['zone_id'] : EshopHelper::getConfigValue('zone_id');
			$zoneInfo = EshopHelper::getZone($zoneId);

			if (is_object($zoneInfo))
			{
				$guest['shipping']['zone_name'] = $zoneInfo->zone_name;
				$guest['shipping']['zone_code'] = $zoneInfo->zone_code;
			}
			else
			{
				$guest['shipping']['zone_name'] = '';
				$guest['shipping']['zone_code'] = '';
			}

			$session->set('guest', $guest);

			// Default Shipping Address
			$session->set('shipping_country_id', $countryId);
			$session->set('shipping_zone_id', $zoneId);
			$session->set('shipping_postcode', isset($data['postcode']) ? $data['postcode'] : EshopHelper::getConfigValue('postcode'));

			$session->clear('shipping_method');
			$session->clear('shipping_methods');
		}

		return $json;
	}

	/**
	 *
	 * Function to process payment address
	 *
	 * @param array $data
	 *
	 * @return  array
	 */
	public function processPaymentAddress($data)
	{
		$cart    = new EshopCart();
		$user    = JFactory::getUser();
		$session = JFactory::getSession();
		$input   = JFactory::getApplication()->input;
		$json    = array();

		// If user is already logged in, return to checkout page
		if (!$user->get('id'))
		{
			if (EshopHelper::getConfigValue('active_https'))
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'), true, 1);
			}
			else
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'));
			}
		}

		// Validate products in the cart
		if (!$cart->hasProducts())
		{
			$json['return'] = JRoute::_(EshopRoute::getViewRoute('cart'));
		}

		$customerFirstName = '';
		$customerLastName  = '';

		if (!$json)
		{
			// User choose an existing address
			if (isset($data['payment_address']) && $data['payment_address'] == 'existing')
			{
				if (!$data['address_id'])
				{
					$json['error']['warning'] = JText::_('ESHOP_ERROR_ADDRESS');
				}
				else
				{
					$addressInfo       = EshopHelper::getAddress($data['address_id']);
					$customerFirstName = $addressInfo['firstname'];
					$customerLastName  = $addressInfo['lastname'];
					$customerAddressId = $data['address_id'];
					$session->set('payment_address_id', $data['address_id']);

					if (count($addressInfo))
					{
						$session->set('payment_country_id', $addressInfo['country_id']);
						$session->set('payment_zone_id', $addressInfo['zone_id']);
						$session->set('payment_postcode', $addressInfo['postcode']);

						//Process EU Vat Number
						if (EshopHelper::getConfigValue('enable_eu_vat_rules') && EshopHelper::getConfigValue('eu_vat_rules_based_on') == 'payment')
						{
							$euVatNumber = $addressInfo['eu_vat_number'];

							if ($euVatNumber != '' && EshopEuvat::validateEUVATNumber($euVatNumber))
							{
								$session->set('eu_vat_number', $euVatNumber);
							}
							else
							{
								$session->clear('eu_vat_number');
							}
						}
					}
					else
					{
						$session->clear('payment_country_id');
						$session->clear('payment_zone_id');
						$session->clear('payment_postcode');

						if (EshopHelper::getConfigValue('enable_eu_vat_rules') && EshopHelper::getConfigValue('eu_vat_rules_based_on') == 'payment')
						{
							$session->clear('eu_vat_number');
						}
					}

					$session->clear('payment_method');
				}
			}
			else
			{
				$fields = EshopHelper::getFormFields('B');
				$form   = new RADForm($fields);

				if (isset($data['country_id']) && !EshopHelper::hasZone($data['country_id']))
				{
					$form->removeRule('zone_id');
				}

				$valid = $form->validate($data);

				if (!$valid)
				{
					$json['error'] = $form->getErrors();
				}

				if (!$json)
				{
					// Store new address
					$row = JTable::getInstance('Eshop', 'Address');
					$row->bind($data);
					$row->customer_id   = $user->get('id');
					$row->created_date  = JFactory::getDate()->toSql();
					$row->modified_date = JFactory::getDate()->toSql();
					$row->store();
					$addressId         = $row->id;
					$customerFirstName = $data['firstname'];
					$customerLastName  = isset($data['lastname']) ? $data['lastname'] : '';
					$customerAddressId = $addressId;

					$session->set('payment_address_id', $addressId);
					$countryId = isset($data['country_id']) ? $data['country_id'] : EshopHelper::getConfigValue('country_id');
					$session->set('payment_country_id', $countryId);
					$zoneId = isset($data['zone_id']) ? $data['zone_id'] : EshopHelper::getConfigValue('zone_id');
					$session->set('payment_zone_id', $zoneId);
					$session->set('payment_postcode', isset($data['postcode']) ? $data['postcode'] : EshopHelper::getConfigValue('postcode'));
					$session->clear('payment_method');

					//Process EU Vat Number
					if (EshopHelper::getConfigValue('enable_eu_vat_rules') && EshopHelper::getConfigValue('eu_vat_rules_based_on') == 'payment')
					{
						$euVatNumber = isset($data['eu_vat_number']) ? $data['eu_vat_number'] : '';

						if ($euVatNumber != '' && EshopEuvat::validateEUVATNumber($euVatNumber))
						{
							$session->set('eu_vat_number', $euVatNumber);
						}
						else
						{
							$session->clear('eu_vat_number');
						}
					}
					
					$customer = array();
					
					//Start - set payment address session
					$customer['payment'] = array();
					$billingFields    = EshopHelper::getFormFields('B');
					
					foreach ($billingFields as $field)
					{
					    $fieldName = $field->name;
					
					    if (isset($data[$fieldName]))
					    {
					        $customer['payment'][$fieldName] = $data[$fieldName];
					    }
					    else
					    {
					        $customer['payment'][$fieldName] = null;
					    }
					}
					
					$countryId   = isset($data['country_id']) ? $data['country_id'] : EshopHelper::getConfigValue('country_id');
					$countryInfo = EshopHelper::getCountry($countryId);
					
					if (is_object($countryInfo))
					{
					    $customer['payment']['country_name'] = $countryInfo->country_name;
					    $customer['payment']['iso_code_2']   = $countryInfo->iso_code_2;
					    $customer['payment']['iso_code_3']   = $countryInfo->iso_code_3;
					}
					else
					{
					    $customer['payment']['country_name'] = '';
					    $customer['payment']['iso_code_2']   = '';
					    $customer['payment']['iso_code_3']   = '';
					}
					
					$zoneId   = isset($data['zone_id']) ? $data['zone_id'] : EshopHelper::getConfigValue('zone_id');
					$zoneInfo = EshopHelper::getZone($zoneId);
					
					if (is_object($zoneInfo))
					{
					    $customer['payment']['zone_name'] = $zoneInfo->zone_name;
					    $customer['payment']['zone_code'] = $zoneInfo->zone_code;
					}
					else
					{
					    $customer['payment']['zone_name'] = '';
					    $customer['payment']['zone_code'] = '';
					}
					
					// Default Payment Address
					$session->set('payment_country_id', $countryId);
					$session->set('payment_zone_id', $zoneId);
					$session->set('payment_postcode', isset($data['postcode']) ? $data['postcode'] : EshopHelper::getConfigValue('postcode'));
					
					//Start - process for same shipping address
					if (isset($data['shipping_address']))
					{
					    $session->set('shipping_address_id', $addressId);
					    $customer['shipping'] = array();
					    
					    $shippingFields = EshopHelper::getFormFields('S');
					    	
					    foreach ($shippingFields as $field)
					    {
					        $fieldName = $field->name;
					        	
					        if (isset($data[$fieldName]))
					        {
					            $customer['shipping'][$fieldName] = $data[$fieldName];
					        }
					        else
					        {
					            $customer['shipping'][$fieldName] = null;
					        }
					    }
					    	
					    $countryInfo = EshopHelper::getCountry($countryId);
					    	
					    if (is_object($countryInfo))
					    {
					        $customer['shipping']['country_name'] = $countryInfo->country_name;
					        $customer['shipping']['iso_code_2']   = $countryInfo->iso_code_2;
					        $customer['shipping']['iso_code_3']   = $countryInfo->iso_code_3;
					    }
					    else
					    {
					        $customer['shipping']['country_name'] = '';
					        $customer['shipping']['iso_code_2']   = '';
					        $customer['shipping']['iso_code_3']   = '';
					    }
					    	
					    $zoneInfo = EshopHelper::getZone($zoneId);
					    	
					    if (is_object($zoneInfo))
					    {
					        $customer['shipping']['zone_name'] = $zoneInfo->zone_name;
					        $customer['shipping']['zone_code'] = $zoneInfo->zone_code;
					    }
					    else
					    {
					        $customer['shipping']['zone_name'] = '';
					        $customer['shipping']['zone_code'] = '';
					    }
					    	
					    // Default Shipping Address
					    $session->set('shipping_country_id', $countryId);
					    $session->set('shipping_zone_id', $zoneId);
					    $session->set('shipping_postcode', isset($data['postcode']) ? $data['postcode'] : EshopHelper::getConfigValue('postcode'));
					    	
					    //Process EU Vat Number
					    if (EshopHelper::getConfigValue('enable_eu_vat_rules') && EshopHelper::getConfigValue('eu_vat_rules_based_on') == 'shipping')
					    {
					        $euVatNumber = $input->get('eu_vat_number');
					        	
					        if ($euVatNumber != '' && EshopEuvat::validateEUVATNumber($euVatNumber))
					        {
					            $session->set('eu_vat_number', $euVatNumber);
					        }
					        else
					        {
					            $session->clear('eu_vat_number');
					        }
					    }
					}
						
					$session->set('customer', $customer);
					//End - process for same shipping address
				}
			}
		}

		if ($customerFirstName != '')
		{
			$customerId = $user->get('id');
			$db         = JFactory::getDbo();
			$query      = $db->getQuery(true);
			$query->select('id')
				->from('#__eshop_customers')
				->where('customer_id = ' . intval($customerId));
			$db->setQuery($query);

			if (!$db->loadResult())
			{
				$row                   = JTable::getInstance('Eshop', 'Customer');
				$row->id               = '';
				$row->customer_id      = $user->get('id');
				$row->customergroup_id = EshopHelper::getConfigValue('customergroup_id');
				$row->address_id       = $customerAddressId;
				$row->firstname        = $customerFirstName;
				$row->lastname         = $customerLastName;
				$row->email            = $user->get('email');
				$row->telephone        = isset($data['telephone']) ? $data['telephone'] : '';
				$row->fax              = isset($data['fax']) ? $data['fax'] : '';
				$row->published        = 1;
				$row->created_date     = JFactory::getDate()->toSql();
				$row->modified_date    = JFactory::getDate()->toSql();
				$row->store();
			}
		}

		self::getCosts();

		$json['total'] = $this->total;

		return $json;
	}

	/**
	 *
	 * Function to process shipping address
	 *
	 * @param array $data
	 *
	 * @return array
	 */
	public function processShippingAddress($data)
	{
		$cart    = new EshopCart();
		$user    = JFactory::getUser();
		$session = JFactory::getSession();
		$json    = array();

		// If user is already logged in, return to checkout page
		if (!$user->get('id'))
		{
			if (EshopHelper::getConfigValue('active_https'))
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'), true, 1);
			}
			else
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'));
			}
		}

		// Validate products in the cart
		if (!$cart->hasProducts())
		{
			$json['return'] = JRoute::_(EshopRoute::getViewRoute('cart'));
		}

		if (!$json)
		{
			// User choose an existing address
			if ($data['shipping_address'] == 'existing')
			{
				if (!$data['address_id'])
				{
					$json['error']['warning'] = JText::_('ESHOP_ERROR_ADDRESS');
				}
				else
				{
					$addressInfo = EshopHelper::getAddress($data['address_id']);
					$session->set('shipping_address_id', $data['address_id']);

					if (count($addressInfo))
					{
						$session->set('shipping_country_id', $addressInfo['country_id']);
						$session->set('shipping_zone_id', $addressInfo['zone_id']);
						$session->set('shipping_postcode', $addressInfo['postcode']);

						//Process EU Vat Number
						if (EshopHelper::getConfigValue('enable_eu_vat_rules') && EshopHelper::getConfigValue('eu_vat_rules_based_on') == 'shipping')
						{
							$euVatNumber = $addressInfo['eu_vat_number'];

							if ($euVatNumber != '' && EshopEuvat::validateEUVATNumber($euVatNumber))
							{
								$session->set('eu_vat_number', $euVatNumber);
							}
							else
							{
								$session->clear('eu_vat_number');
							}
						}
					}
					else
					{
						$session->clear('shipping_country_id');
						$session->clear('shipping_zone_id');
						$session->clear('shipping_postcode');

						if (EshopHelper::getConfigValue('enable_eu_vat_rules') && EshopHelper::getConfigValue('eu_vat_rules_based_on') == 'shipping')
						{
							$session->clear('eu_vat_number');
						}
					}

					$session->clear('shipping_method');
					$session->clear('shipping_methods');
				}
			}
			else
			{
				$fields = EshopHelper::getFormFields('S');
				$form   = new RADForm($fields);

				if (isset($data['country_id']) && !EshopHelper::hasZone($data['country_id']))
				{
					$form->removeRule('zone_id');
				}

				$valid = $form->validate($data);

				if (!$valid)
				{
					$json['error'] = $form->getErrors();
				}

				if (!$json)
				{
					// Store new address
					$row = JTable::getInstance('Eshop', 'Address');
					$row->bind($data);
					$row->customer_id   = $user->get('id');
					$row->created_date  = JFactory::getDate()->toSql();
					$row->modified_date = JFactory::getDate()->toSql();
					$row->store();
					$addressId = $row->id;

					$session->set('shipping_address_id', $addressId);
					$countryId = isset($data['country_id']) ? $data['country_id'] : EshopHelper::getConfigValue('country_id');
					$session->set('shipping_country_id', $countryId);
					$zoneId = isset($data['zone_id']) ? $data['zone_id'] : EshopHelper::getConfigValue('zone_id');
					$session->set('shipping_zone_id', $zoneId);
					$session->set('shipping_postcode', isset($data['postcode']) ? $data['postcode'] : EshopHelper::getConfigValue('postcode'));
					$session->clear('shipping_method');
					$session->clear('shipping_methods');

					//Process EU Vat Number
					if (EshopHelper::getConfigValue('enable_eu_vat_rules') && EshopHelper::getConfigValue('eu_vat_rules_based_on') == 'shipping')
					{
						$euVatNumber = isset($data['eu_vat_number']) ? $data['eu_vat_number'] : '';

						if ($euVatNumber != '' && EshopEuvat::validateEUVATNumber($euVatNumber))
						{
							$session->set('eu_vat_number', $euVatNumber);
						}
						else
						{
							$session->clear('eu_vat_number');
						}
					}
				}
			}
		}

		return $json;
	}

	/**
	 *
	 * Function to process shipping method
	 *
	 * @return array
	 */
	public function processShippingMethod()
	{
		$cart    = new EshopCart();
		$user    = JFactory::getUser();
		$session = JFactory::getSession();
		$input   = JFactory::getApplication()->input;
		$json    = array();

		// If shipping is not required, the customer shoud not have reached this page
		if (!$cart->hasShipping())
		{
			if (EshopHelper::getConfigValue('active_https'))
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'), true, 1);
			}
			else
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'));
			}
		}

		// Validate if shipping address has been set or not
		if ($user->get('id') && $session->get('shipping_address_id'))
		{
			$shippingAddress = EshopHelper::getAddress($session->get('shipping_address_id'));
		}
		else
		{
			$guest           = $session->get('guest');
			$shippingAddress = isset($guest['shipping']) ? $guest['shipping'] : '';
		}

		if (empty($shippingAddress) && EshopHelper::getConfigValue('require_shipping_address', 1))
		{
			if (EshopHelper::getConfigValue('active_https'))
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'), true, 1);
			}
			else
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'));
			}
		}

		if (EshopHelper::getConfigValue('delivery_date'))
		{
			$deliveryDate = $input->getString('delivery_date');

			if ($deliveryDate == '')
			{
				$json['error']['warning'] = JText::_('ESHOP_DELIVERY_DATE_PROMPT');
			}
			elseif ($deliveryDate < JHtml::_('date', '', 'Y-m-d', null))
			{
				$json['error']['warning'] = JText::_('ESHOP_DELIVERY_DATE_WARNING');
			}
		}

		if (!$json)
		{
			if (!$input->getString('shipping_method'))
			{
				$json['error']['warning'] = JText::_('ESHOP_ERROR_SHIPPING_METHOD');
			}
			else
			{
				if (EshopHelper::getConfigValue('require_shipping_address' , 1))
				{
					if ($user->get('id') && $session->get('shipping_address_id'))
					{
						//User Shipping
						$addressInfo = EshopHelper::getAddress($session->get('shipping_address_id'));
					}
					else
					{
						//Guest Shipping
						$guest       = $session->get('guest');
						$addressInfo = $guest['shipping'];
					}
				}
				else 
				{
					$addressInfo = array();
				}

				$addressData = array(
					'firstname'    => isset($addressInfo['firstname']) ? $addressInfo['firstname'] : '',
					'lastname'     => isset($addressInfo['lastname']) ? $addressInfo['lastname'] : '',
					'company'      => isset($addressInfo['company']) ? $addressInfo['company'] : '',
					'address_1'    => isset($addressInfo['address_1']) ? $addressInfo['address_1'] : '',
					'address_2'    => isset($addressInfo['address_2']) ? $addressInfo['address_2'] : '',
					'postcode'     => isset($addressInfo['postcode']) ? $addressInfo['postcode'] : '',
					'city'         => isset($addressInfo['city']) ? $addressInfo['city'] : '',
					'zone_id'      => isset($addressInfo['zone_id']) ? $addressInfo['zone_id'] : EshopHelper::getConfigValue('zone_id'),
					'zone_name'    => isset($addressInfo['zone_name']) ? $addressInfo['zone_name'] : '',
					'zone_code'    => isset($addressInfo['zone_code']) ? $addressInfo['zone_code'] : '',
					'country_id'   => isset($addressInfo['country_id']) ? $addressInfo['country_id'] : EshopHelper::getConfigValue('country_id'),
					'country_name' => isset($addressInfo['country_name']) ? $addressInfo['country_name'] : '',
					'iso_code_2'   => isset($addressInfo['iso_code_2']) ? $addressInfo['iso_code_2'] : '',
					'iso_code_3'   => isset($addressInfo['iso_code_3']) ? $addressInfo['iso_code_3'] : ''
				);

				$quoteData = array();

				$db    = JFactory::getDbo();
				$query = $db->getQuery(true);
				$query->select('*')
					->from('#__eshop_shippings')
					->where('published = 1')
					->order('ordering');
				$db->setQuery($query);
				$rows = $db->loadObjectList();

				for ($i = 0; $n = count($rows), $i < $n; $i++)
				{
					$shippingName = $rows[$i]->name;
					$params       = new Registry($rows[$i]->params);

					require_once JPATH_COMPONENT . '/plugins/shipping/' . $shippingName . '.php';

					$shippingClass = new $shippingName();
					$quote         = $shippingClass->getQuote($addressData, $params);

					if ($quote)
					{
						$quoteData[$shippingName] = array(
							'title'    => $quote['title'],
							'quote'    => $quote['quote'],
							'ordering' => $quote['ordering'],
							'error'    => $quote['error']
						);
					}
				}

				$shippingMethods = $quoteData;
				$shippingMethod  = explode('.', $input->getString('shipping_method'));

				if (isset($shippingMethods) && isset($shippingMethods[$shippingMethod[0]]))
				{
					$session->set('shipping_method', $shippingMethods[$shippingMethod[0]]['quote'][$shippingMethod[1]]);
					$session->set('delivery_date', $input->getString('delivery_date'));
					$session->set('comment', $input->getString('comment'));

					//Get total
					self::getCosts();

					$json['total'] = $this->total;
				}
				else
				{
					$json['error']['warning'] = JText::_('ESHOP_ERROR_SHIPPING_METHOD');
				}
			}
		}

		return $json;
	}

	/**
	 * Function to process payment method
	 */
	public function processPaymentMethod()
	{
		$input = JFactory::getApplication()->input;
		$cart    = new EshopCart();
		$user    = JFactory::getUser();
		$session = JFactory::getSession();
		$json    = array();

		// Validate if payment address has been set.
		if ($user->get('id') && $session->get('payment_address_id'))
		{
			$paymentAddress = EshopHelper::getAddress($session->get('payment_address_id'));
		}
		else
		{
			$guest          = $session->get('guest');
			$paymentAddress = isset($guest['payment']) ? $guest['payment'] : '';
		}

		if (empty($paymentAddress))
		{
			if (EshopHelper::getConfigValue('active_https'))
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'), true, 1);
			}
			else
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'));
			}
		}

		//Validate if cart has products
		if (!$cart->hasProducts())
		{
			if (EshopHelper::getConfigValue('active_https'))
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'), true, 1);
			}
			else
			{
				$json['return'] = JRoute::_(EshopRoute::getViewRoute('checkout'));
			}
		}

		if (!$json)
		{
			$paymentMethod = $input->getString('payment_method');

			if (!$paymentMethod)
			{
				$json['error']['warning'] = JText::_('ESHOP_ERROR_PAYMENT_METHOD');
			}
			else
			{
				$methods        = os_payments::getPaymentMethods();
				$paymentMethods = array();

				for ($i = 0; $n = count($methods), $i < $n; $i++)
				{
					$paymentMethods[] = $methods[$i]->getName();
				}

				if (isset($paymentMethods) && in_array($paymentMethod, $paymentMethods))
				{
					$session->set('payment_method', $paymentMethod);

					//Check coupon
					$couponCode = $input->getString('coupon_code');

					if ($couponCode != '')
					{
						$coupon     = new EshopCoupon();
						$couponData = $coupon->getCouponData($couponCode);

						if (!count($couponData))
						{
							$couponInfo = $coupon->getCouponInfo($couponCode);

							if (is_object($couponInfo) && $couponInfo->coupon_per_customer && !$user->get('id'))
							{
								$json['error']['warning'] = JText::_('ESHOP_COUPON_IS_ONLY_FOR_REGISTERED_USER');
							}
							else
							{
								$json['error']['warning'] = JText::_('ESHOP_COUPON_APPLY_ERROR');
							}
						}
						else
						{
							$session->set('coupon_code', $couponCode);
							$session->set('success', JText::_('ESHOP_COUPON_APPLY_SUCCESS'));
						}
					}

					//Check voucher
					$voucherCode = $input->getString('voucher_code');

					if ($voucherCode != '')
					{
						$voucher     = new EshopVoucher();
						$voucherData = $voucher->getVoucherData($voucherCode);

						if (!count($voucherData))
						{
							$json['error']['warning'] = JText::_('ESHOP_VOUCHER_APPLY_ERROR');
						}
						else
						{
							$session->set('voucher_code', $voucherCode);
							$session->set('success', JText::_('ESHOP_VOUCHER_APPLY_SUCCESS'));
						}
					}

					$donateAmount = $input->getFloat('donate_amount', 0);
					$otherAmount  = $input->getFloat('other_amount', 0);
					$amount       = 0;

					if ($donateAmount > 0)
					{
						$amount = $donateAmount;
					}
					elseif ($otherAmount > 0)
					{
						$amount = $otherAmount;
					}

					if ($amount > 0)
					{
						$session->set('donate_amount', $amount);
					}
					else
					{
						$session->clear('donate_amount');
					}

					$session->set('comment', $input->getString('comment'));

					$errorWarning = array();
					
					if (EshopHelper::getConfigValue('display_privacy_policy', 'payment_method_step') == 'payment_method_step')
					{
    					if (EshopHelper::getConfigValue('checkout_terms') && !$input->get('checkout_terms_agree'))
    					{
    						$errorWarning[] = JText::_('ESHOP_ERROR_CHECKOUT_TERMS_AGREE');
    					}
    					
    					if (EshopHelper::getConfigValue('show_privacy_policy_checkbox') && !$input->get('privacy_policy_agree'))
    					{
    					    $errorWarning[] = JText::_('ESHOP_AGREE_PRIVACY_POLICY_ERROR');
    					}
    
    					if (count($input->get('newsletter_interest', array(), 'array')) > 0)
    					{
    						$session->set('newsletter_interest', true);
    					}
    					else
    					{
    						$session->set('newsletter_interest', false);
    					}
					}
					
					if (count($errorWarning) > 0)
					{
					    $json['error']['warning'] = implode("<br />", $errorWarning);
					}
				}
				else
				{
					$json['error']['warning'] = JText::_('ESHOP_ERROR_PAYMENT_METHOD');
				}
			}
		}

		return $json;
	}

	/**
	 * Function to process order
	 */
	public function processOrder($data)
	{
		jimport('joomla.user.helper');

		$session  = JFactory::getSession();
		$cart     = new EshopCart();
		$tax      = new EshopTax(EshopHelper::getConfig());
		$currency = new EshopCurrency();
		$db       = $this->getDbo();
		$query    = $db->getQuery(true);

		// Store Order
		$row = JTable::getInstance('Eshop', 'Order');
		$row->bind($data);
		$row->user_ip                 = EshopHelper::getUserIp();
		if ($session->get('newsletter_interest'))
		{
		    $row->newsletter_interest = 1;
		}
		$row->privacy_policy_agree    = 1;            
		$row->created_date            = JFactory::getDate()->toSql();
		$row->modified_date           = JFactory::getDate()->toSql();
		$row->modified_by             = 0;
		$row->checked_out             = 0;
		$row->checked_out_time        = '0000-00-00 00:00:00';
		$row->store();
		$orderRow = $row;
		$orderId  = $row->id;
		$session->set('order_id', $orderId);
		
		$row->load($orderId);
		$orderTotal = $row->total;

		// Store Order Products, Order Options and Order Downloads
		foreach ($cart->getCartData() as $product)
		{
			// Order Products
			$row               = JTable::getInstance('Eshop', 'Orderproducts');
			$row->id           = '';
			$row->order_id     = $orderId;
			$row->product_id   = $product['product_id'];
			$row->product_name = $product['product_name'];
			$row->product_sku  = $product['product_sku'];
			$row->quantity     = $product['quantity'];
			$row->price        = $product['price'];
			$row->total_price  = $product['total_price'];
			$row->tax          = $tax->getTax($product['price'], $product['product_taxclass_id']);
			$row->store();
			$orderProductId = $row->id;

			// Order Options
			foreach ($product['option_data'] as $option)
			{
				$row                          = JTable::getInstance('Eshop', 'Orderoptions');
				$row->id                      = '';
				$row->order_id                = $orderId;
				$row->product_id              = $product['product_id'];
				$row->order_product_id        = $orderProductId;
				$row->product_option_id       = $option['product_option_id'];
				$row->product_option_value_id = $option['product_option_value_id'];
				$row->option_name             = $option['option_name'];
				$row->option_value            = $option['option_value'];
				$row->option_type             = $option['option_type'];
				$row->quantity                = $product['quantity'];
				$row->price                   = $option['price'];
				$row->sku                     = $option['sku'];
				$row->store();
			}

			// Order Downloads
			foreach ($product['download_data'] as $download)
			{
				$row                   = JTable::getInstance('Eshop', 'Orderdownloads');
				$row->id               = '';
				$row->order_id         = $orderId;
				$row->order_product_id = $orderProductId;
				$row->download_id	   = $download['id'];
				$row->download_name    = $download['download_name'];
				$row->filename         = $download['filename'];

				//Generate download code
				$downloadCode = '';
				while (true)
				{
					$downloadCode = JUserHelper::genRandomPassword(10);
					$query->clear()
						->select('COUNT(*)')
						->from('#__eshop_orderdownloads')
						->where('download_code = "' . $downloadCode . '"');
					$db->setQuery($query);

					if (!$db->loadResult())
					{
						break;
					}
				}

				$row->download_code = $downloadCode;
				$row->remaining     = $download['total_downloads_allowed'];
				$row->store();
			}
		}

		// Store Order Totals
		foreach ($data['totals'] as $total)
		{
			$row           = JTable::getInstance('Eshop', 'Ordertotals');
			$row->id       = '';
			$row->order_id = $orderId;
			$row->name     = $total['name'];
			$row->title    = $total['title'];
			$row->text     = $total['text'];
			$row->value    = $total['value'];
			$row->store();
		}

		JPluginHelper::importPlugin('eshop');
		JFactory::getApplication()->triggerEvent('onAfterStoreOrder', array($orderRow));
		$data['order_id'] = $orderId;

		// Prepare products data
		$productData = array();

		foreach ($cart->getCartData() as $product)
		{
			$optionData = array();

			foreach ($product['option_data'] as $option)
			{
				$optionData[] = array(
					'option_name'  => $option['option_name'],
					'option_value' => $option['option_value']
				);
			}

			$productData[] = array(
				'product_name' => $product['product_name'],
				'product_sku'  => $product['product_sku'],
				'option_data'  => $optionData,
				'quantity'     => $product['quantity'],
				'weight'       => $product['weight'],
				'price'        => round($currency->convert($product['price'], EshopHelper::getConfigValue('default_currency_code'), $data['currency_code']), 2)
			);
		}

		//Get total for shipping, taxes
		$otherTotal                   = round($currency->convert($data['total'] - $cart->getSubTotal(), EshopHelper::getConfigValue('default_currency_code'), $data['currency_code']), 2);
		$data['discount_amount_cart'] = 0;

		if ($otherTotal > 0)
		{
			$productData[] = array(
				'product_name' => JText::_('ESHOP_SHIPPING_DISCOUNTS_AND_TAXES'),
				'product_sku'  => '',
				'option_data'  => array(),
				'quantity'     => 1,
				'weight'       => 0,
				'price'        => $otherTotal
			);
		}
		else
		{
			$data['discount_amount_cart'] -= $otherTotal;
		}

		$data['products'] = $productData;

		if ($session->get('newsletter_interest'))
		{
			if (EshopHelper::getConfigValue('acymailing_integration') && JFile::exists(JPATH_ADMINISTRATOR . '/components/com_acymailing/helpers/helper.php'))
			{
				$acyMailingIntegration = true;
			}
			else
			{
				$acyMailingIntegration = false;
			}

			$mailchimpIntegration = EshopHelper::getConfigValue('mailchimp_integration');

			foreach ($cart->getCartData() as $product)
			{
				//Store customer to AcyMailing
				if ($acyMailingIntegration)
				{
					$params  = new JRegistry($product['params']);
					$listIds = $params->get('acymailing_list_ids', '');
					
					if ($listIds == '')
					{
					    $listIds = EshopHelper::getConfigValue('acymailing_list_ids', '');
					}
					
					if ($listIds != '')
					{
						require_once JPATH_ADMINISTRATOR . '/components/com_acymailing/helpers/helper.php';
						$userClass = acymailing_get('class.subscriber');
						$subId     = $userClass->subid($row->email);
						if (!$subId)
						{
							$myUser         = new stdClass();
							$myUser->email  = $data['email'];
							$myUser->name   = $data['firstname'] . ' ' . $data['lastname'];
							$myUser->userid = $data['customer_id'];
							$eventClass     = acymailing_get('class.subscriber');
							$subId          = $eventClass->save($myUser);
						}
						$listIds    = explode(',', $listIds);
						$newProduct = array();
						foreach ($listIds as $listId)
						{
							$newList             = array();
							$newList['status']   = 1;
							$newProduct[$listId] = $newList;
						}
						$userClass->saveSubscription($subId, $newProduct);
					}
				}

				//Store subscriber to MailChimp
				if ($mailchimpIntegration)
				{
					$params  = new Registry($product['params']);
					$listIds = $params->get('mailchimp_list_ids', '');

					if ($listIds != '')
					{
						$listIds = explode(',', $listIds);

						if (count($listIds))
						{
							require_once JPATH_SITE . '/components/com_eshop/helpers/MailChimp.php';

							$mailchimp = new MailChimp(EshopHelper::getConfigValue('api_key_mailchimp'));

							foreach ($listIds as $listId)
							{
								if ($listId)
								{
									$mailchimp->call('lists/subscribe', array(
										'id'                => $listId,
										'email'             => array('email' => $data['email']),
										'merge_vars'        => array('FNAME' => $data['firstname'], 'LNAME' => $data['lastname']),
										'double_optin'      => false,
										'update_existing'   => true,
										'replace_interests' => false,
										'send_welcome'      => false,
									));
								}
							}
						}
					}
				}
			}
		}

		if ($orderTotal > 0)
		{
			// Process Payment here
			$paymentMethod = $data['payment_method'];
			require_once JPATH_COMPONENT . '/plugins/payment/' . $paymentMethod . '.php';

			$db    = JFactory::getDbo();
			$query = $db->getQuery(true);
			$query->select('params, title')
				->from('#__eshop_payments')
				->where('name = ' . $db->quote($paymentMethod));
			$db->setQuery($query);

			$plugin       = $db->loadObject();
			$params       = new Registry($plugin->params);
			$paymentClass = new $paymentMethod($params);
			$paymentClass->setTitle($plugin->title);

			$rf = new ReflectionMethod($paymentClass, 'processPayment');

			if ($rf->getNumberOfParameters() == '1')
			{
				$paymentClass->processPayment($data);
			}
			else
			{
				$paymentClass->processPayment($orderRow, $data);
			}
		}
		else
		{
			// If total = 0, then complete order
			$row = JTable::getInstance('Eshop', 'Order');
			$id  = $data['order_id'];
			$row->load($id);
			$row->order_status_id = EshopHelper::getConfigValue('complete_status_id');
			$row->store();
			EshopHelper::completeOrder($row);
			JPluginHelper::importPlugin('eshop');
			JFactory::getApplication()->triggerEvent('onAfterCompleteOrder', array($row));

			//Send confirmation email here
			if (EshopHelper::getConfigValue('order_alert_mail'))
			{
				EshopHelper::sendEmails($row);
			}

			JFactory::getApplication()->redirect(JRoute::_(EshopRoute::getViewRoute('checkout') . '&layout=complete'));
		}
	}

	/**
	 * Function to verify payment
	 */
	public function verifyPayment()
	{
		$paymentMethod = JFactory::getApplication()->input->getCmd('payment_method');
		require_once JPATH_COMPONENT . '/plugins/payment/' . $paymentMethod . '.php';

		$db    = JFactory::getDbo();
		$query = $db->getQuery(true);
		$query->select('params')
			->from('#__eshop_payments')
			->where('name = ' . $db->quote($paymentMethod));
		$db->setQuery($query);
		$plugin       = $db->loadObject();
		$params       = new Registry($plugin->params);
		$paymentClass = new $paymentMethod($params);

		$paymentClass->verifyPayment();
	}

	/**
	 *
	 * Function to get Cart Data
	 */
	public function getCartData()
	{
		$cart = new EshopCart();

		if (!$this->cartData)
		{
			$this->cartData = $cart->getCartData();
		}

		return $this->cartData;
	}

	/**
	 *
	 * Function to get Costs
	 */
	public function getCosts()
	{
		$totalData = array();
		$total     = 0;
		$taxes     = array();
		$this->getSubTotalCosts($totalData, $total, $taxes);
		$this->getDiscountCosts($totalData, $total, $taxes);
		$this->getShippingCosts($totalData, $total, $taxes);
		$this->getDonateCosts($totalData, $total, $taxes);
		$this->getCouponCosts($totalData, $total, $taxes);
		$this->getPaymentFeeCosts($totalData, $total, $taxes);
		$this->getTaxesCosts($totalData, $total, $taxes);
		$this->getVoucherCosts($totalData, $total, $taxes);
		$this->getTotalCosts($totalData, $total, $taxes);
		$this->totalData = $totalData;
		$this->total     = $total;
		$this->taxes     = $taxes;
	}

	/**
	 *
	 * Function to get Sub Total Costs
	 *
	 * @param  array $totalData
	 * @param  float $total
	 * @param  array $taxes
	 */
	public function getSubTotalCosts(&$totalData, &$total, &$taxes)
	{
		$cart        = new EshopCart();
		$currency    = new EshopCurrency();
		$total       = $cart->getSubTotal();
		$totalData[] = array(
			'name'  => 'sub_total',
			'title' => JText::_('ESHOP_SUB_TOTAL'),
			'text'  => $currency->format(max(0, $total)),
			'value' => max(0, $total)
		);
		$taxes       = $cart->getTaxes();
	}

	/**
	 *
	 * Function to get Discount Costs
	 *
	 * @param  array $totalData
	 * @param  float $total
	 * @param  array $taxes
	 */
	public function getDiscountCosts(&$totalData, &$total, &$taxes)
	{
		$discount = new EshopDiscount();
		$discount->getCosts($totalData, $total, $taxes);
	}

	/**
	 *
	 * Function to get Coupon Costs
	 *
	 * @param  array $totalData
	 * @param  float $total
	 * @param  array $taxes
	 */
	public function getCouponCosts(&$totalData, &$total, &$taxes)
	{
		$coupon = new EshopCoupon();
		$coupon->getCosts($totalData, $total, $taxes);
	}

	/**
	 *
	 * Function to get Voucher Costs
	 *
	 * @param  array $totalData
	 * @param  float $total
	 * @param  array $taxes
	 */
	public function getVoucherCosts(&$totalData, &$total, &$taxes)
	{
		$voucher = new EshopVoucher();
		$voucher->getCosts($totalData, $total, $taxes);
	}

	/**
	 *
	 * Function to get Shipping Costs
	 *
	 * @param  array $totalData
	 * @param  float $total
	 * @param  array $taxes
	 */
	public function getShippingCosts(&$totalData, &$total, &$taxes)
	{
		$shipping = new EshopShipping();
		$shipping->getCosts($totalData, $total, $taxes);
	}

	/**
	 *
	 * Function to get Payment Fee Costs
	 *
	 * @param  array $totalData
	 * @param  float $total
	 * @param  array $taxes
	 */
	public function getPaymentFeeCosts(&$totalData, &$total, &$taxes)
	{
		$payment = new EshopPayment();
		$payment->getCosts($totalData, $total, $taxes);
	}

	/**
	 *
	 * Function to get Donate Costs
	 *
	 * @param  array $totalData
	 * @param  float $total
	 * @param  array $taxes
	 */
	public function getDonateCosts(&$totalData, &$total, &$taxes)
	{
		$donate = new EshopDonate();
		$donate->getCosts($totalData, $total, $taxes);
	}

	/**
	 *
	 * Function to get Taxes Costs
	 *
	 * @param  array $totalData
	 * @param  float $total
	 * @param  array $taxes
	 */
	public function getTaxesCosts(&$totalData, &$total, &$taxes)
	{
		$tax = new EshopTax(EshopHelper::getConfig());
		$tax->getCosts($totalData, $total, $taxes);
	}

	/**
	 *
	 * Function to get Total Costs
	 *
	 * @param  array $totalData
	 * @param  float $total
	 * @param  array $taxes
	 */
	public function getTotalCosts(&$totalData, &$total, &$taxes)
	{
		$currency    = new EshopCurrency();
		$totalData[] = array(
			'name'  => 'total',
			'title' => JText::_('ESHOP_TOTAL'),
			'text'  => $currency->format(max(0, $total)),
			'value' => max(0, $total)
		);
	}

	/**
	 *
	 * Function to get Total Data
	 */
	public function getTotalData()
	{
		return $this->totalData;
	}

	/**
	 *
	 * Function to get Total
	 */
	public function getTotal()
	{
		return $this->total;
	}

	/**
	 *
	 * Function to get Taxes
	 */
	public function getTaxes()
	{
		return $this->taxes;
	}
}