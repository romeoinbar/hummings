<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
include_once "$php5RootPath/classes/images.class.php";
include_once "$php5RootPath/includes/call_rating1.php"; 

$id= php5GetParam($_REQUEST, 'id', 0);
$query = "SELECT p.* 
		FROM #__product as p 
		INNER JOIN #__product_category_link as l ON (l.product_id = p.product_id) 
		WHERE product_category_id=$id AND p.publish=1 
		ORDER BY p.sku ASC ";
$php5DB_en->setQuery( $query ); 
$rows = $php5DB_en->loadObjectList();
foreach ($rows as $row) { 
	 $link_product = sefBuild($php5WebPath, "index.php?o=eshop&m=product_detail&t=outsite&task=show&id=" .$row->product_id , 1)  ;		 
	 //$row->image = "<a href='$link_product'>".return_resized_image(125, 100, $php5WebPath.'/'.$row->image)."</a>";	 
	 $row->image = "<a href='$link_product'>".return_resized_image(125, 100, $row->image)."</a>";
	 $row->name = stripslashes($row->name);
	 $row->rating = call_rating($row->product_id);	
     $row->price = price_tag($row->price);   
}
$smarty->assign('rows', $rows);
$tpl = sprintf($php5TemplateFile, $language, 'mobile', 'product/list.tpl');
$smarty->assign('main', $smarty->fetch($tpl));

?>