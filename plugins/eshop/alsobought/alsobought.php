<?php
/**
 * @package            Joomla
 * @subpackage         EShop
 * @author             Giang Dinh Truong
 * @copyright          Copyright (C) 2010 - 2019 Ossolution Team
 * @license            GNU/GPL, see LICENSE.php
 */

// no direct access
defined('_JEXEC') or die;

use Joomla\Registry\Registry;

class plgEshopAlsobought extends JPlugin
{
	/**
	 * Application object.
	 *
	 * @var    JApplicationCms
	 */
	protected $app;

	/**
	 * Database object.
	 *
	 * @var    JDatabaseDriver
	 */
	protected $db;

	/**
	 * Constructor.
	 *
	 * @param object   $subject
	 * @param Registry $config
	 */
	public function __construct(& $subject, $config)
	{
		parent::__construct($subject, $config);
	}

	/**
	 * 
	 *
	 * @param EshopTableProduct $row
	 *
	 * @return array|void
	 */
	public function onProductDisplay($row)
	{
	    $alsoBoughtProducts = EshopHelper::getAlsoBoughtProducts($row->id);
	    
	    $relatedImageSizeFunction    = EshopHelper::getConfigValue('related_image_size_function', 'resizeImage');
	    
	    if (count($alsoBoughtProducts))
	    {
	        // Related products images resize
	        for ($i = 0; $n = count($alsoBoughtProducts), $i < $n; $i++)
	        {
	            $alsoBoughtProduct = $alsoBoughtProducts[$i];
	             
	            if ($alsoBoughtProduct->product_image && JFile::exists(JPATH_ROOT . '/media/com_eshop/products/' . $alsoBoughtProduct->product_image))
	            {
	                if (EshopHelper::getConfigValue('product_use_image_watermarks'))
	                {
	                    $watermarkImage = EshopHelper::generateWatermarkImage(JPATH_ROOT . '/media/com_eshop/products/' . $alsoBoughtProduct->product_image);
	                    $productImage   = $watermarkImage;
	                }
	                else
	                {
	                    $productImage = $alsoBoughtProduct->product_image;
	                }
	                	
	                $thumbImage = call_user_func_array(array('EshopHelper', $relatedImageSizeFunction), array($productImage, JPATH_ROOT . '/media/com_eshop/products/', EshopHelper::getConfigValue('image_related_width'), EshopHelper::getConfigValue('image_related_height')));
	            }
	            else
	            {
	                $thumbImage = call_user_func_array(array('EshopHelper', $relatedImageSizeFunction), array('no-image.png', JPATH_ROOT . '/media/com_eshop/products/', EshopHelper::getConfigValue('image_related_width'), EshopHelper::getConfigValue('image_related_height')));
	            }
	            	
	            if ($relatedImageSizeFunction == 'notResizeImage')
	            {
	                $alsoBoughtProduct->thumb_image = JUri::base(true) . '/media/com_eshop/products/' . $thumbImage;
	            }
	            else
	            {
	                $alsoBoughtProduct->thumb_image = JUri::base(true) . '/media/com_eshop/products/resized/' . $thumbImage;
	            }
	        }   
	    }

	    $bootstrapHelper   = new EshopHelperBootstrap(EshopHelper::getConfigValue('twitter_bootstrap_version'));
	    $currency          = new EshopCurrency();
	    $tax               = new EshopTax();
	    
		return array('name'     => 'also-bought-products',
		             'title'    => JText::_('ESHOP_ALSO_BOUGHT'),
		             'form'     => EshopHtmlHelper::loadCommonLayout('plugins/products.php', array('products' => $alsoBoughtProducts, 'bootstrapHelper' => $bootstrapHelper, 'currency' => $currency, 'tax' => $tax))
		);
	}
}
