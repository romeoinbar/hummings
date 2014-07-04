<?php 
include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/images.class.php"; 

$product_category = new Product_category();
$id = $_REQUEST['id'];

$product_category->loadData(add_prefix('product_category'), 'product_category_id', $id);

$smarty->assign('image', $php5WebPath . "/" .$product_category->image );	
$smarty->assign('name', $product_category->name );	
$smarty->assign('resized_image', "".return_resized_image(278, 500, $product_category->image)."" );	
$smarty->assign('description', $product_category->description );	

//if ($product_category->image)
{
$tpl = $php5RootPath. '/templates/en/eshop/browse/browse_head.tpl';
$smarty->assign('browse_head', $smarty->fetch($tpl)  );	
}
//else
//$smarty->assign('browse_head', "<h2>$product_category->name</h2><br/><br/>" );	

?>
