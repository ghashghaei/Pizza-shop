<?php
/**
 * @version		1.3.1
 * @package		Joomla
 * @subpackage	EShop
 * @author  	Giang Dinh Truong
 * @copyright	Copyright (C) 2011 Ossolution Team
 * @license		GNU/GPL, see LICENSE.php
 */
// no direct access
defined('_JEXEC') or die;

class modEshopProductHelper
{

	static public function getItems($params)
	{
		//get config xml
		$numberProducts  	= $params->get('number_products', 6);
		$display            = $params->get('display', 'featured');
		$language = JFactory::getLanguage();
		$tag = $language->getTag();
		
		if (!$tag)
		{
			$tag = 'en-GB';
		}
		
		$language->load('com_eshop', JPATH_ROOT, $tag);
		$categoryIds = $params->get('category_ids');
		$productIds = $params->get('product_ids');
		//check limit product
		$limit = '';
		
		if($numberProducts > 0)
		{
			$limit = ' LIMIT 0, ' . $numberProducts;
		}
		
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		$query->select('a.*, c.product_name, c.product_short_desc')
			->from('#__eshop_products AS a')
			->innerJoin('#__eshop_productcategories AS b ON a.id = b.product_id')
			->innerJoin('#__eshop_productdetails AS c ON a.id = c.product_id')
			->where('a.published = 1')
			->where('c.language = ' . $db->quote($tag))
			->group('b.product_id');
		
		if (!empty($productIds))
		{
			$query->where('a.id IN (' . implode(',', $productIds) . ')');				
		}
		else 
		{
			if (!empty($categoryIds))
			{
				$query->where('b.category_id IN (' . implode(',', $categoryIds) . ')');
			}
		}
		
		if ($display == 'featured')
		{
			$query->where('a.product_featured=1')
				->order('a.created_date DESC' . $limit);
		}
		elseif ($display == 'latest')
		{
			$query->order('a.id DESC' . $limit);
		}
		elseif ($display == 'random')
		{
			$query->order('RAND()' . $limit);
		}
		elseif ($display == 'most_viewed')
		{
			$query->order('a.hits DESC' . $limit);
		}
		elseif ($display == 'recently_viewed')
		{
			$session = JFactory::getSession();
			$viewedProductIds = $session->get('viewed_product_ids');
			
			if (count($viewedProductIds))
			{
				$query->where('a.id IN (' . implode(',', $viewedProductIds) . ')');
				$query->order('FIND_IN_SET (a.id, "' . implode(',', $viewedProductIds) . '")' . $limit);
			}
			else
			{
				$query->where('a.id = 0');
			}
		}
		elseif ($display == 'most_rated')
		{
			$query->clear('select');
			$query->select('a.*, c.product_name, c.product_short_desc, COUNT(*) AS reviews')
				->leftJoin('#__eshop_reviews AS r ON (a.id = r.product_id AND r.published = 1)')
				->order('reviews DESC' . $limit);
		}
		elseif ($display == 'top_rated')
		{
			$query->clear('select');
			$query->select('a.*, c.product_name, c.product_short_desc, AVG(r.rating) AS rates')
				->leftJoin('#__eshop_reviews AS r ON (a.id = r.product_id AND r.published = 1)')
				->order('rates DESC' . $limit);
		}
		elseif ($display == 'top_sellers')
		{
			$query->clear('select');
			$query->select('a.*, c.product_name, c.product_short_desc, COUNT(*) AS sellers')
				->leftJoin('#__eshop_orderproducts AS op ON (a.id = op.product_id)')
				->innerJoin('#__eshop_orders AS o ON (op.order_id = o.id AND o.order_status_id = ' . EshopHelper::getConfigValue('complete_status_id') . ')')
				->order('sellers DESC' . $limit);
		}
		elseif ($display == 'related')
		{
			$productId = JRequest::getInt('id');
			$query->where('a.id IN (SELECT related_product_id FROM #__eshop_productrelations WHERE product_id = ' . intval($productId) . ')')
				->order('a.ordering ASC' . $limit);
		}
		elseif ($display == 'alpha_az')
		{
			$query->order('c.product_name ASC' . $limit);
		}
		elseif ($display == 'alpha_za')
		{
			$query->order('c.product_name DESC' . $limit);
		}
		elseif ($display == 'price_low_high')
		{
			$query->order('a.product_price ASC' . $limit);
		}
		elseif ($display == 'price_high_low')
		{
			$query->order('a.product_price DESC' . $limit);
		}
		elseif ($display == 'ordering_low_high')
		{
			$query->order('a.ordering ASC' . $limit);
		}
		elseif ($display == 'ordering_high_low')
		{
			$query->order('a.ordering DESC' . $limit);
		}
		else 
		{
			$query->order('a.ordering ASC' . $limit);
		}
		
		//Check viewable of customer groups
		$user = JFactory::getUser();
		
		if ($user->get('id'))
		{
			$customer = new EshopCustomer();
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
		
		//Check out of stock
		if ($params->get('hide_out_of_stock_products', 0))
		{
			$query->where('a.product_quantity > 0');
		}
		
		$db->setQuery($query);
		$rows = $db->loadObjectList();
		
		$baseUri = JUri::base(true);
		$imageSizeFunction = $params->get('image_resize_function', 'resizeImage');
		$thumbnailWidth     = $params->get('image_width', 100);
		$thumbnailHeight    = $params->get('image_height', 100);
		
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

				$image = call_user_func_array(array('EshopHelper', $imageSizeFunction), array($productImage, JPATH_ROOT . '/media/com_eshop/products/', $thumbnailWidth, $thumbnailHeight));
			}
			else
			{
				$image = call_user_func_array(array('EshopHelper', $imageSizeFunction), array('no-image.png', JPATH_ROOT . '/media/com_eshop/products/', $thumbnailWidth, $thumbnailHeight));
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
			    
			        $additionalProductImage = call_user_func_array(array('EshopHelper', $imageSizeFunction), array($productImage, JPATH_ROOT . '/media/com_eshop/products/', $thumbnailWidth, $thumbnailHeight));
			    }
			    else
			    {
			        $additionalProductImage = call_user_func_array(array('EshopHelper', $imageSizeFunction), array('no-image.png', JPATH_ROOT . '/media/com_eshop/products/', $thumbnailWidth, $thumbnailHeight));
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
        }
        
        return $rows;
	}
}