<?php
/***************************************************************************
*                                header.php
 *
 *   Begin date             : 
 *   Copyright              : 
 *   Email                  : 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$tpl = sprintf($php5TemplateFile, $language, 'main', 'header.php');
if($id && $module == 'product_detail') {
	 $product = new Product();
	 $product->loadData(add_prefix('product'),'product_id', $id);	 
	 
//$st = '<meta property="og:title" content="title" />
//<meta property="og:description" content="description" />
//<meta property="og:image" content="'.display_image_url($product->image).'" />
//<link rel="image_src" href="'.display_image_url($product->image).'" />';
	 //$smarty->assign('meta_product', $st);		 
}
include $php5RootPath.'/templates/en/eshop/header_item/top_left.php'; 
include $php5RootPath.'/templates/en/eshop/header_item/search.php'; 
include $php5RootPath.'/templates/en/eshop/header_item/earliest_delivery.php';
include $php5RootPath.'/templates/en/eshop/header_item/top_menu.php'; 
include $php5RootPath.'/templates/en/eshop/header_item/main_menu.php';

$smarty->assign('title', php5GetConfig('config_sitename'));
$smarty->assign('description', php5GetConfig('config_meta_desc_default'));
$smarty->assign('keywords', php5GetConfig('config_meta_keyword_default'));
include $php5RootPath.'/templates/en/eshop/header_item/breadcrumb.php'; 
$smarty->assign('header', $smarty->fetch($tpl));
