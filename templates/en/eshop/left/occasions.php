<?php 
include_once "$php5RootPath/classes/tables.class.php"; 

$categories = "";

$occasions = new Occasions();
$occasions->loadData(add_prefix('occasions'), 'occasions_id', $id);
$categories .= "<div class='left_head'>OCCASIONS</div>";



  $query = "SELECT * FROM #__occasions WHERE publish=1 AND parent_id=0  ORDER BY sorting";
  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadAssocList();
  
  if (count($rows)>0)
  {
	 $categories .= "<ul class=left_list_lvl1>"; 
	 foreach ($rows as $row)
	 {  
		 $occasions = new Occasions();
		 $occasions->loadData(add_prefix('occasions'),'occasions_id',$row['occasions_id']);
         $name = $occasions->name;
		 
		 $link = sefBuild($php5WebPath, "index.php?o=eshop&m=by_occasions&task=show&id=" . $occasions->occasions_id,1);
		 
		 $current = ($occasions->occasions_id == $id) ? "current" : "";
		  	   
         $categories .= "<li class=$current><a href='$link'>$name</a></li>";
	     sub_occasions( $occasions->occasions_id, $id);
	 }
	 $categories .= "</ul>"; 	 
  }
  else
  {

  }




$smarty->assign('occasions', $occasions );	
 
function sub_occasions($parent_id,$current_id)
{
  global $php5DB_en;
  global $occasions;
  global $php5WebPath;
  
  $query = "SELECT * FROM #__occasions WHERE publish=1 AND parent_id=$parent_id  ORDER BY sorting";
  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadAssocList();
  
  if (count($rows)>0)
  {
	 $categories .= "<ul class=left_list_lvl2>"; 
	 foreach ($rows as $row)
	 {  
		 $occasions = new Occasions();
		 $occasions->loadData(add_prefix('occasions'),'occasions_id',$row['occasions_id']);
         $name = $occasions->name;
		 
		 $link = sefBuild($php5WebPath, "index.php?o=eshop&m=by_category&task=show&id=" . $occasions->occasions_id,1);
		 
		 $current = ($occasions->occasions_id == $current_id) ? "current" : "";
		  	   
         $categories .= "<li class=$current><a href='$link'>$name</a></li>";
	   
	 }
	 $categories .= "</ul>"; 	 
  }
  else
  {

  }

	
}

$smarty->assign('categories', $categories);
?>
