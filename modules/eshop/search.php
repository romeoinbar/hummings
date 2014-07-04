<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$task 		= php5GetParam($_REQUEST, 'task', '');

if ($env=='PC')
	$main = "<div style='padding:15px;'>";
else
	$main = "<div style='margin-top:10px;'>";	
//////////////////////////////
switch($task)
{
    default :
    include_once 'classes/tables.class.php';	
	
    $search =  php5GetParam($_REQUEST, 'search', '');	
	
    $main .= "Search for '" . $search . "'<br/><br/> " ;
	if ($env=='PC')
		$main .="<div style='float:left'><h3>Category</h3>"; 	
	else
		$main .="<div><h3>Category</h3>"; 	
	
	if (strlen($search) == 1)	   
      $query = "SELECT * FROM #__product_category WHERE name LIKE '$search%' AND publish='1' ";
	else	
      $query = "SELECT * FROM #__product_category WHERE name LIKE '%$search%' AND publish='1' ";
    $php5DB_en->setQuery( $query );  
    $rows = $php5DB_en->loadAssocList();
    foreach ($rows as $row)
    {
		 if ($env=='PC')
		 	$url = sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id='. $row['product_category_id'] , 1) ;	
		else
			$url = sefBuild($php5WebPath, 'index.php?o=product&m=list&task=main&id='. $row['product_category_id'] , 1) ;
         $main .= "<div style='margin-bottom:5px;'><a href='$url' style='text-decoration:none; color:#bf0874;'>" . $row['name']. "</a></div>" ; 	
		 
    }
	$main .= "</div>";
	
	if ($env=='PC')
		$main .="<div style='float:left; padding-left:45px;'><h3>Product</h3>"; 	
	else
		$main .="<div><h3>Product</h3>"; 

	if (strlen($search) <= 1)	  
    $query = "SELECT * FROM #__product WHERE (name LIKE '$search%') ";	
	else		   
    $query = "SELECT * FROM #__product WHERE   publish='1'   AND  (  (name LIKE '%$search%') OR (	description LIKE '%$search%' )  OR ( sku LIKE '%$search%' )  ) ";
    $php5DB_en->setQuery( $query );  
    $rows = $php5DB_en->loadAssocList();
    foreach ($rows as $row)
    {
         $query = "SELECT publish as c FROM #__product_category_link as pcl LEFT JOIN  #__product_category as pc ON pcl.product_category_id = pc.product_category_id  WHERE product_id=".$row['product_id']." ";

         $php5DB_en->setQuery( $query );
         $c = $php5DB_en->loadResult();
         
		 if ($c == 1)
		 {
		  $url = sefBuild($php5WebPath, 'index.php?o=eshop&m=product_detail&task=show&id='. $row['product_id'] , 1) ;	
          $main .= "<div style='margin-bottom:5px;'><a href='$url' style='text-decoration:none; color:#bf0874;'>" . $row['name']. "</a> ($c) </div>" ; 	
		 }
    }
	$main .= "</div>";
	


		break;
}
///////////////////////////



	
$main .= "</div>";
/**
$tpl =  $php5RootPath.'/templates/en/eshop/user/register.php';
$main =  $smarty->fetch($tpl);		
**/
$smarty->assign('main',$main);
$tpl = sprintf($php5TemplateFile, $language, 'eshop', 'full_page.tpl');
$smarty->assign('main',     $smarty->fetch($tpl));

return;

