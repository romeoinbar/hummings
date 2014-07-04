<?php 
include_once "$php5RootPath/classes/tables.class.php"; 
global $php5DB_en;

   $rows1='';
 
  $query = "SELECT * FROM #__product_category WHERE columns=1 AND publish=1 AND parent_id=$category_id ORDER BY sorting";
  $php5DB_en->setQuery( $query );  
  $rows1 = $php5DB_en->loadAssocList();

  $query = "SELECT * FROM #__product_category WHERE columns=2 AND publish=1 AND parent_id=$category_id ORDER BY sorting";
  $php5DB_en->setQuery( $query );  
  $rows2 = $php5DB_en->loadAssocList();

  $query = "SELECT * FROM #__product_category WHERE columns=3 AND publish=1 AND parent_id=$category_id ORDER BY sorting";
  $php5DB_en->setQuery( $query );  
  $rows3 = $php5DB_en->loadAssocList();
  
$count=0;
$main_menu .= "<table class=submenutb><tr>";
  if (count($rows1)>0)
  {
	 $main_menu .= "<td valign=top style='text-align:left; padding-right:15px;'><div  text-align:left; padding:5px;'>"; 
	 foreach ($rows1 as $row)
		 $main_menu .= "<a href='". 
		     sefBuild($php5WebPath, "index.php?o=eshop&m=by_category&t=outsite&task=show&id=" .$row['product_category_id'] , 1) . 
			 "'>" . $row['name'] . "</a><br/>";
	 $main_menu .= "</div></td>";
	 $count++;
  }

  if (count($rows2)>0)
  {
	 $td_class = ($count>0)? "left_line" : ""; 
	 $main_menu .= "<td valign=top align=left style='text-align:left;' class=$td_class><div  text-align:left; padding:5px;' >"; 
	 foreach ($rows2 as $row)
		 $main_menu .= "<a href='". 
		     sefBuild($php5WebPath, "index.php?o=eshop&m=by_category&t=outsite&task=show&id=" .$row['product_category_id'] , 1) . 
			 "'>" . $row['name'] . "</a><br/>";
	 $main_menu .= "</div></td>";
	 $count++;
  }

  if (count($rows3)>0)
  {
	 $td_class = ($count>0)? "left_line" : ""; 
	 $main_menu .= "<td valign=top align=left style='text-align:left;' class=$td_class><div  text-align:left; padding:5px;' >"; 
	 foreach ($rows3 as $row)
		 $main_menu .= "<a href='". 
		     sefBuild($php5WebPath, "index.php?o=eshop&m=by_category&t=outsite&task=show&id=" .$row['product_category_id'] , 1) . 
			 "'>" . $row['name'] . "</a><br/>";
	 $main_menu .= "</div></td>";
	 $count++;
  }
        
$main_menu .= "</tr></table>";  
?>
