<?php

// no direct access
defined('_JEXEC') or die;

class EshopModelProducts extends RADModelList
{
	/**
	 * Constructor.
	 *
	 * @param array $config
	 */
	public function __construct($config = array())
	{
		$config['table']               = '#__eshop_products';
		$config['translatable']        = true;
		$config['translatable_fields'] = array(
			'b.product_name',
			'b.product_alias',
			'b.product_desc',
			'b.product_short_desc',
			'b.product_page_title',
			'b.product_page_heading',
		    'b.product_alt_image',
			'b.meta_key',
			'b.meta_desc');

		parent::__construct($config);

		$app        = JFactory::getApplication();
		$request    = EshopHelper::getRequestData();
		$name       = $this->getName();
		$listLength = 0;

		if ($name == 'Category' && $request['view'] == 'category')
		{
			$category   = EshopHelper::getCategory((int) $request['id'], false);
			$listLength = (int) $category->products_per_page;
		}

		if (!$listLength)
		{
			$listLength = EshopHelper::getConfigValue('catalog_limit');
		}

		if (!$listLength)
		{
			$listLength = $app->get('list_limit');
		}

		$limit = $app->getUserStateFromRequest('com_eshop.' . $name . '.limit', 'limit', $listLength, 'int');
		$this->state->insert('id', 'int', 0)
			->insert('category_id', 'int', 0)
			->insert('product_type', 'string', '')
			->insert('limit', 'int', $limit)
			->insert('sort_options', 'string', '');

		//Search filters
		if ($this->name == 'Search')
		{
			$this->state->insert('min_price', 'float', 0)
				->insert('max_price', 'float', 0)
				->insert('min_weight', 'float', '')
				->insert('max_weight', 'float', '')
				->insert('same_weight_unit', 'int', '1')
				->insert('min_length', 'float', '')
				->insert('max_length', 'float', '')
				->insert('min_width', 'float', '')
				->insert('max_width', 'float', '')
				->insert('min_height', 'float', '')
				->insert('max_height', 'float', '')
				->insert('same_length_unit', 'int', '1')
				->insert('product_in_stock', 'int', 2)
				->insert('category_ids', 'string', '')
				->insert('manufacturer_ids', 'string', '')
				->insert('attribute_ids', 'string', '')
				->insert('optionvalue_ids', 'string', '')
				->insert('keyword', 'string', '');
		}

		if (!isset($request['sort_options']))
		{
		    if ($name == 'Category' && $request['view'] == 'category')
		    {
		        $request['sort_options'] = EshopHelper::getDefaultSortingCategory((int) $request['id']);
		    }
		    else 
		    {
		        $request['sort_options'] = EshopHelper::getConfigValue('default_sorting');
		    }
		}

		$this->state->setData($request);
		$app->setUserState('limit', $this->state->limit);
	}

	/**
	 * Method to get categories data
	 *
	 * @access public
	 * @return array
	 */
	public function getData()
	{
		$input  = JFactory::getApplication()->input;
		// Lets load the content if it doesn't already exist
		if (empty($this->data))
		{
			$rows              = parent::getData();
			$imageSizeFunction = EshopHelper::getConfigValue('list_image_size_function', 'resizeImage');

			$input = JFactory::getApplication()->input;
			if ($input->getCmd('view') == 'search' && $input->getCmd('layout') == 'ajax')
			{
				$imageListWidth  = $input->get('image_width', 50);
				$imageListHeight = $input->get('image_height', 50);
			}
			else
			{
				$imageListWidth  = EshopHelper::getConfigValue('image_list_width');
				$imageListHeight = EshopHelper::getConfigValue('image_list_height');
			}

			$baseUri = JUri::base(true);

			for ($i = 0; $n = count($rows), $i < $n; $i++)
			{
				$row = $rows[$i];

				// Product main image
				if ($row->product_image && JFile::exists(JPATH_ROOT . '/media/com_eshop/products/' . $row->product_image))
				{
					if (EshopHelper::getConfigValue('product_use_image_watermarks'))
					{
						$watermarkImage = EshopHelper::generateWatermarkImage(JPATH_ROOT . '/media/com_eshop/products/' . $row->product_image);
						$productImage   = $watermarkImage;
					}
					else
					{
						$productImage = $row->product_image;
					}

					$image = call_user_func_array(array('EshopHelper', $imageSizeFunction), array($productImage, JPATH_ROOT . '/media/com_eshop/products/', $imageListWidth, $imageListHeight));
				}
				else
				{
					$image = call_user_func_array(array('EshopHelper', $imageSizeFunction), array('no-image.png', JPATH_ROOT . '/media/com_eshop/products/', $imageListWidth, $imageListHeight));
				}

				if ($imageSizeFunction == 'notResizeImage')
				{
				    $row->image = $baseUri . '/media/com_eshop/products/' . $image;
				}
				else
				{
                    $row->image = $baseUri . '/media/com_eshop/products/resized/' . $image;
				}
				
				//Product additional image
				$productImages = EshopHelper::getProductImages($row->id);
				
				if (count($productImages) > 0)
				{
				    $productImage = $productImages[0]->image;
				    
				    if ($productImage && JFile::exists(JPATH_ROOT . '/media/com_eshop/products/' . $productImage))
				    {
				        if (EshopHelper::getConfigValue('product_use_image_watermarks'))
				        {
				            $watermarkImage = EshopHelper::generateWatermarkImage(JPATH_ROOT . '/media/com_eshop/products/' . $productImage);
				            $productImage   = $watermarkImage;
				        }
				    
				        $additionalProductImage = call_user_func_array(array('EshopHelper', $imageSizeFunction), array($productImage, JPATH_ROOT . '/media/com_eshop/products/', $imageListWidth, $imageListHeight));
				    }
				    else
				    {
				        $additionalProductImage = call_user_func_array(array('EshopHelper', $imageSizeFunction), array('no-image.png', JPATH_ROOT . '/media/com_eshop/products/', $imageListWidth, $imageListHeight));
				    }
				    
    				if ($imageSizeFunction == 'notResizeImage')
    				{
    				    $row->additional_image = $baseUri . '/media/com_eshop/products/' . $additionalProductImage;
    				}
    				else
    				{
                        $row->additional_image = $baseUri . '/media/com_eshop/products/resized/' . $additionalProductImage;
    				}
				}

				$row->labels = EshopHelper::getProductLabels($row->id);
				
				// Product availability
				$productInventory = EshopHelper::getProductInventory($row->id);
				
				if ($row->product_quantity <= 0)
				{
					$availability = EshopHelper::getStockStatusName($productInventory['product_stock_status_id'], JFactory::getLanguage()->getTag());
				}
				elseif ($productInventory['product_stock_display'])
				{
					$availability = $row->product_quantity;
				}
				else
				{
					$availability = JText::_('ESHOP_IN_STOCK');
				}
				
				$row->availability = $availability;
			}

			$this->data = $rows;
		}

		return $this->data;
	}

	/**
	 * Builds LEFT JOINS clauses for the query
	 */
	protected function _buildQueryJoins(JDatabaseQuery $query)
	{
		$query->innerJoin('#__eshop_productdetails AS b ON a.id = b.product_id');

		$sortOptions = $this->state->sort_options;

		if ($sortOptions == 'product_rates-ASC' || $sortOptions == 'product_rates-DESC' || $sortOptions == 'product_reviews-ASC' || $sortOptions == 'product_reviews-DESC')
		{
			$query->leftJoin('#__eshop_reviews AS r ON (a.id = r.product_id AND r.published = 1)');
		}
		else if ($sortOptions == 'product_best_sellers-DESC')
		{
			$query->leftJoin('#__eshop_orderproducts AS op ON (a.id = op.product_id AND op.order_id IN (SELECT id FROM #__eshop_orders WHERE order_status_id = ' . EshopHelper::getConfigValue('complete_status_id') . '))');
		}

		return $this;
	}

	protected function _buildQueryWhere(JDatabaseQuery $query)
	{
		parent::_buildQueryWhere($query);

		if ($this->state->category_id > 0)
		{
			
			$categoryId = $this->state->category_id;
			
			if (EshopHelper::getConfigValue('show_products_in_all_levels'))
			{
				$categoryIds = array_merge(array($categoryId), EshopHelper::getAllChildCategories($categoryId));
			}
			else
			{
				$categoryIds = array($categoryId);
			}
			
			$db       = $this->getDbo();
			$subQuery = $db->getQuery(true);
			$subQuery->select('pc.product_id FROM #__eshop_productcategories AS pc WHERE pc.category_id IN (' . implode(',', $categoryIds) . ')');
			$query->where('a.id IN (' . (string) $subQuery . ')');
		}
		

        $productType = $this->state->product_type;
        
		if ($productType != '')
		{
			if ($productType == 'featured')
			{
			    $query->where('a.product_featured = 1');
			}
			elseif ($productType == 'latest')
			{
			    $query->order('a.id DESC');
			}
			else 
			{
			    $query->order('RAND()');
			}
		}

		//Check viewable of customer groups
		$user = JFactory::getUser();

		if ($user->get('id'))
		{
			$customer        = new EshopCustomer();
			$customerGroupId = $customer->getCustomerGroupId();
		}
		else
		{
			$customerGroupId = EshopHelper::getConfigValue('customergroup_id');
		}

		if (!$customerGroupId)
		{
			$customerGroupId = 0;
		}

		$query->where('((a.product_customergroups = "") OR (a.product_customergroups IS NULL) OR (a.product_customergroups = "' . $customerGroupId . '") OR (a.product_customergroups LIKE "' . $customerGroupId . ',%") OR (a.product_customergroups LIKE "%,' . $customerGroupId . ',%") OR (a.product_customergroups LIKE "%,' . $customerGroupId . '"))');
		
		$currentDate = $this->getDbo()->quote(EshopHelper::getServerTimeFromGMTTime());
		$query->where('(a.product_available_date = "0000-00-00 00:00:00" OR a.product_available_date <= ' . $currentDate . ')');
		$query->where('(a.product_end_date = "0000-00-00 00:00:00" OR a.product_end_date >= ' . $currentDate . ')');
		
		$langCode = JFactory::getLanguage()->getTag();
		$query->where('((a.product_languages = "") OR (a.product_languages IS NULL) OR (a.product_languages = "' . $langCode . '") OR (a.product_languages LIKE "' . $langCode . ',%") OR (a.product_languages LIKE "%,' . $langCode . ',%") OR (a.product_languages LIKE "%,' . $langCode . '"))');

		//Check out of stock
		if (EshopHelper::getConfigValue('hide_out_of_stock_products'))
		{
			$query->where('a.product_quantity > 0');
		}
		
		return $this;
	}

	protected function _buildQueryOrder(JDatabaseQuery $query)
	{
		$allowedSortArr   = array('a.ordering', 'b.product_name', 'a.product_sku', 'a.product_price', 'a.product_length', 'a.product_width', 'a.product_height', 'a.product_weight', 'a.product_quantity', 'b.product_short_desc', 'b.product_desc', 'product_rates', 'product_reviews', 'product_best_sellers', 'RAND()');
		$allowedDirectArr = array('ASC', 'DESC');
		$sortOptions      = $this->state->sort_options;

		if ($sortOptions != '')
		{
			$sortOptions = explode('-', $sortOptions);

			if (isset($sortOptions[0]) && in_array($sortOptions[0], $allowedSortArr))
			{
				$sort = $sortOptions[0];
			}
			else
			{
				$sort = 'a.ordering';
			}

			if (isset($sortOptions[1]) && in_array($sortOptions[1], $allowedDirectArr))
			{
				$direct = $sortOptions[1];
			}
			else
			{
				$direct = 'ASC';
			}
			
			$query->order($sort . ' ' . $direct)
				->order('a.ordering');

			return $this;
		}
		else
		{
			return parent::_buildQueryOrder($query);
		}
	}

	protected function _buildQueryColumns(JDatabaseQuery $query)
	{
		$query->select(array('a.*'));

		if ($this->translatable)
		{
			$query->select($this->translatableFields);
		}

		$sortOptions = $this->state->sort_options;

		if ($sortOptions == 'product_rates-ASC' || $sortOptions == 'product_rates-DESC')
		{
			$query->select('AVG(r.rating) AS product_rates');
		}
		elseif ($sortOptions == 'product_reviews-ASC' || $sortOptions == 'product_reviews-DESC')
		{
			$query->select('COUNT(r.id) AS product_reviews');
		}
		elseif ($sortOptions == 'product_best_sellers-DESC')
		{
			$query->select('SUM(op.quantity) AS product_best_sellers');
		}

		return $this;
	}

	protected function _buildQueryGroup(JDatabaseQuery $query)
	{
		$sortOptions = $this->state->sort_options;

		if ($sortOptions == 'product_rates-ASC' || $sortOptions == 'product_rates-DESC' || $sortOptions == 'product_reviews-ASC' || $sortOptions == 'product_reviews-DESC' || $sortOptions == 'product_best_sellers-DESC')
		{
			$query->group('a.id');
		}

		return $this;
	}
	
	/**
	 * Get total record
	 *
	 * @return integer Number of records
	 *
	 */
	public function getTotal()
	{
	    $request    = EshopHelper::getRequestData();
	    $name = $this->getName();
	    
        if ($name == 'Category' && $request['view'] == 'category')
        {
            if (empty($this->total))
            {
                $db = $this->getDbo();
                $query = $db->getQuery(true);
                $query->select('COUNT(*)');
                $this->_buildQueryFrom($query)
                    ->_buildQueryWhere($query);
                $query->innerJoin('#__eshop_productdetails AS b ON a.id = b.product_id');
                $db->setQuery($query);
                $this->total = (int) $db->loadResult();
            }

            return $this->total;
        }
        else
        {
            return parent::getTotal();
        }
	}
}