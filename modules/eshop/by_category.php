<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
  $current_category = "$id";

if($env!='PC') {
	
	include_once 'classes/tables.class.php';	
	include_once 'classes/product_category.class.php';	
	require_once($php5RootPath . "/classes/ratings.class.php");
	$tpl = sprintf($php5TemplateFile, $language, 'eshop', 'smp_category_product.tpl');
	if($id < 1) {
		return;
	}
	$product_category = new ProductCategory($php5DB);
	$product_category->load($id);
	
  $query = "SELECT * FROM #__product_category_link as l LEFT JOIN #__product as p ON (l.product_id = p.product_id) WHERE product_category_id=$id AND p.publish=1 LIMIT 0, 4";
  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadObjectList();
	$products = array();
	foreach ($rows as $key => $row){
		$ratings = new Ratings($php5DB);
		$ratings->load($row->product_id);
		$products[$key]['name'] = stripslashes($row->name);
		if(is_file($php5RootPath . "/".$row->image)) {
			$products[$key]['image'] = $php5WebPath.'/'.$row->image;
		} else {
			$products[$key]['image'] = $php5WebPath.'/images/no_image.gif';
		}
		$products[$key]['url'] =  sefBuild($php5WebPath, "index.php?o=eshop&m=product_detail&t=outsite&task=show&id=" .$row->product_id, 1);
		$products[$key]['price'] = price_tag($row->price);
		$products[$key]['ratings'] = $ratings->rating*14;
		
	}
	$smarty->assign('products', $products);
	$smarty->assign('category_name', $product_category->name);
	$smarty->assign('main', $smarty->fetch($tpl));	
} else {
$php5Session->setVar('storepage',  sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&t=outsite&task=show&id=' . $id, 1)  );
$php5Session->setVar('storepage_shopping',  sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&t=outsite&task=show&id=' . $id, 1)  );

$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
if(!$currPage) {
	$currPage = 1;
}

include $php5RootPath.'/templates/en/eshop/left/categories.php';

include $php5RootPath.'/templates/en/eshop/browse/browse_head.php';
include $php5RootPath.'/templates/en/eshop/browse/browse.php';

$tpl = sprintf($php5TemplateFile, $language, 'eshop', 'col2_left.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
$smarty->assign('main', $smarty->fetch($tpl));
}
  $current_category = "";
return;

