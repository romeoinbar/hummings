<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
$id     = php5GetParam($_REQUEST, "id", 0);
$php5DB_en->setQuery("SELECT * FROM #__menu WHERE type='product' AND publish>0 AND parent_id=$id ORDER BY `sorting`, `title` ASC");
$rows = $php5DB_en->loadObjectList();
foreach($rows as $row){
	$row->title = stripslashes($row->title);
	$row->link = sefBuild($php5WebPath, 'index.php?o=product&m=list&task=main&id='.$row->itemid, 1);
}
$smarty->assign('rows', $rows);
$smarty->assign('cat_id', $id);
$smarty->assign('link_category', sefBuild($php5WebPath, 'index.php?o=category&m=main&task=main', 1));
$tpl = sprintf($php5TemplateFile, $language, 'mobile', 'category/list_cat.tpl');
$smarty->assign('main', $smarty->fetch($tpl));
?>