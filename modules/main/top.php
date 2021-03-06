<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
global $php5DB_en, $smarty, $php5TemplateFile, $language, $php5WebPath;
$php5DB_en->setQuery("SELECT * FROM #__menu WHERE parent_id=0 ORDER BY sorting ASC");
$rows = $php5DB_en->loadObjectList();
foreach ($rows as $row){
	if ($row->type=="product")					
		$row->url = sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id='.$row->menu_id, 1);					
	else
		$row->url = sefBuild($php5WebPath, 'index.php?o=articles&m=main&task=category&id='.$row->itemid, 1);	
	$row->title = php5FormatContent($row->title);
	$php5DB_en->setQuery("SELECT * FROM #__menu WHERE parent_id=".$row->menu_id." ORDER BY sorting");
	$subs = $php5DB_en->loadObjectList();
	$row->is_sub = count($subs);
	if (count($subs)>0){
		foreach ($subs as $sub){
			$sub->title = php5FormatContent($sub->title);	
			if ($sub->type=="product")					
				$sub->url = sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id='.$sub->menu_id, 1);					
			else
				$sub->url = sefBuild($php5WebPath, 'index.php?o=articles&m=main&task=category&id='.$sub->itemid, 1);	
		}
		$row->width = $row->columns*130;
		$row->subs = $subs;
	} else {
		if ($row->type=="content"){
			$php5DB_en->setQuery("SELECT * FROM #__content WHERE category_id=".$row->itemid." ORDER BY sorting ASC, created_date DESC");			
			$contents = $php5DB_en->loadObjectList();
			$row->is_sub = count($contents);
			foreach ($contents as $content){
				$content->title = php5FormatContent($content->title);						
				$content->url = sefBuild($php5WebPath, 'index.php?o=articles&m=main&task=view&id='.$content->content_id, 1);					
			}
			$row->subs = $contents;
		}
	}
}

$smarty->assign("menus", $rows);
$top_tpl = sprintf($php5TemplateFile, $language, 'main', 'top.tpl');
$smarty->display($top_tpl);
?>