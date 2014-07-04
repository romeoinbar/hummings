<?php 
$left ="";
    $query = "SELECT * FROM #__product_category WHERE  parent_id = 0 AND publish=1 ";
    $php5DB_en->setQuery( $query );
    $cats = $php5DB_en->loadAssocList();  
    foreach ( $cats as $cat)
    {
	  $link = sefBuild($php5WebPath, "index.php?o=eshop&m=by_category&task=show&id=" . $cat['product_category_id'],1);
      $left .="<a href='$link' class=lmenu_3col>".$cat['name']."</a>";			  
    }
$smarty->assign('left',  $left);	
?>
