<?php  
global $php5DB_en, $smarty, $php5TemplateFile, $language, $php5WebPath;
$main_menu="";
$php5DB_en->setQuery("SELECT * FROM #__menu WHERE parent_id=0 and publish=1 ORDER BY sorting ASC");
$rows = $php5DB_en->loadObjectList();
foreach ($rows as $row){
    if ($row->type=="product")                  
        $row->url = sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id='.$row->itemid, 1);                    
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
                $sub->url = sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id='.$sub->itemid, 1);                    
            else
                $sub->url = sefBuild($php5WebPath, 'index.php?o=articles&m=main&task=category&id='.$sub->itemid, 1);    
        }
        $row->width = ($row->columns*180)+$row->columns;
        $row->subs = $subs;
    } else {
        if ($row->type=="content"){
            $php5DB_en->setQuery("SELECT * FROM #__content WHERE category_id=".$row->itemid." AND publish>0 ORDER BY sorting ASC, created_date DESC");            
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
$top_tpl = sprintf($php5TemplateFile, $language, 'main', 'top_frontpage.tpl');
$main_menu .=  $smarty->fetch($top_tpl); 
$smarty->assign('main_menu',$main_menu);
