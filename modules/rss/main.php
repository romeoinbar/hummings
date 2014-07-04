<?php
defined('PHP5_PHP') or die("Application is stopping!!!");

$currPage = php5GetParam($_REQUEST, 'p', 1);
$limit = 10;
$where = array();
$where[] = " type = 2 ";
$where[] = " status = 1 ";
$query = "SELECT COUNT(*) "
. "\n FROM #__category "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
;

$php5DB->setQuery( $query );
$recordTotal = $php5DB->loadResult();

$startLimit= ($currPage - 1) * $limit;

//list category
$query = "SELECT * "
. "\n FROM #__category "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY id desc LIMIT $startLimit, $limit";
$php5DB->setQuery( $query );//echo $query;
$rows = $row_temp = $php5DB->loadObjectList();
//paging
$pageTotal = ceil($recordTotal / $limit);
$currPage = $currPage > $pageTotal ? $pageTotal : $currPage;
$paging = new php5Paging($pageTotal, $currPage);
$paging->url = sefBuild($php5WebPath, 'index.php?o=rss_category&m=main', 1)."&";
//assign
$categories = '';
$i = 1;
foreach($rows as $key => $row) {
	$categories[$key] = array();
	$categories[$key]['idx'] = $i;
	$categories[$key]['id'] = $row->id;
	$categories[$key]['name'] = $row->name;
	$categories[$key]['status'] = $row->status;
	$categories[$key]['link'] = $php5WebPath. '/rss.php?o=rss&m=detail&task=view&id='. $row->id;
	if($i % 2 == 0) $categories[$key]['row'] = 1;
	else $categories[$key]['row'] = 0;

	$i++;
}
$smarty->assign('categories',$categories);
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=products&m=main&task=search'));
$smarty->assign('addcart', sefBuild($php5WebPath, 'index.php?o=your_cart&m=main&task=add'));
//$smarty->set_compile_path($php5RootPath . '/templates_c/product/');
$tpl = sprintf($php5TemplateFile, $language, 'rss', 'main.tpl');	
$main_content =  $smarty->fetch($tpl); 
$smarty->assign('main',$main_content);	
