<?php
/***************************************************************************
*                                header.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$tpl = sprintf($php5TemplateFile, $language, 'main', 'smp_main.tpl');
$query = "SELECT * FROM #__banner WHERE  publish=1 ORDER BY sorting";
$php5DB_en->setQuery( $query );  
$rows = $php5DB_en->loadObjectList();
foreach ($rows as $row){
	if ($row->link!="")
		$row->link = str_replace('/cart/','/mobile-cart/',$row->link );
		if (strpos($row->link,'by_category')!==false){
			$str_tmp = explode('/',$row->link);
			$id = explode("_", $str_tmp[count($str_tmp)-2]);
			$row->link = $php5WebPath.'/mobile-cart/product/list/main/'.$id[count($id)-2];
		}
	else
		$row->link =='#';
}
$smarty->assign('banners', $rows);
////////////////////////////////////////////////
//PROMOTION
///////////////////////////////////////////////
$php5DB_en->setQuery("SELECT *
							FROM #__content
							WHERE publish>0 AND category_id = 1
							ORDER BY sorting ASC, created_date DESC");
$pros = $php5DB_en->loadObjectList();
foreach ($pros as $pro){
	$pro->title = php5FormatContent($pro->title);			
	$pro->url = sefBuild($php5WebPath, 'index.php?o=articles&m=main&task=view&id='.$pro->content_id, 1);
}
$smarty->assign('pros', $pros);
	
$smarty->assign('link_category1', sefBuild($php5WebPath, 'index.php?o=category&m=main&task=main&id=178', 1) );
$smarty->assign('link_category2', sefBuild($php5WebPath, 'index.php?o=category&m=main&task=main&id=25', 1) );
$smarty->assign('url_search', sefBuild($php5WebPath, 'index.php?o=eshop&m=search', 1));
$smarty->assign('main', $smarty->fetch($tpl));

