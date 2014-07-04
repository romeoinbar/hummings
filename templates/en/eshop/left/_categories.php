<?php 
$currid = $id;
$php5DB_en->setQuery("SELECT parent_id FROM #__menu WHERE publish=1 AND menu_id=$id ORDER BY sorting");
$parrentID = $php5DB_en->loadResult();
if ($parrentID==0){
	$php5Session->setVar("parentID", $parrentID);
} else {
	$id = $parrentID;
}
if ($php5Session->getVar("parentID")){
	$id = $php5Session->getVar("parentID");
}
$php5DB_en->setQuery("SELECT * FROM #__menu WHERE menu_id=$id AND publish>0 AND type='product' ORDER BY `sorting`");
$rows = $php5DB_en->loadObjectList();
if (count($rows)>0) {
	$categories .= "<ul class=left_list_lvl1>"; 
	foreach ($rows as $row){				
		$link = sefBuild($php5WebPath, "index.php?o=eshop&m=by_category&task=show&id=" . $row->itemid,1);
		$current = ($row->itemid == $currid) ? "current" : "";
		$categories .= "<li class=$current><a href='$link'>".stripslashes($row->title)."</a></li>";
		$php5DB_en->setQuery("SELECT * FROM #__menu WHERE menu_id=$id AND publish>0 AND type='product' ORDER BY `sorting`");
		$rows1 = $php5DB_en->loadObjectList();
		if (count($rows1)>0) {
			$categories .= "<ul class=left_list_lvl2>"; 
			foreach ($rows1 as $row1){
				$link = sefBuild($php5WebPath, "index.php?o=eshop&m=by_category&task=show&id=" . $row1->itemid,1);		 
				$current = ($row->itemid == $currid) ? "current" : "";
				$categories .= "<li class=$current><a href='$link'>".stripslashes($row1->title)."</a></li>";			
			}
			$categories .= "</ul>";
		}
	}
	$categories .= "</ul>";
}
$smarty->assign('categories', $categories );	
?>
