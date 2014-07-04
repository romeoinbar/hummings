<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
// Header
$header_tpl = sprintf($php5TemplateFile, $language, 'main', 'header.tpl');
$header_content =  $smarty->fetch($header_tpl);  
$smarty->assign('header',$header_content);	
$currPage = php5GetParam($_REQUEST, 'p', 1);
$id = php5GetParam($_REQUEST, 'id', '');

$limit = 100;
$where = array();
$where[] = " status = 1 ";
$where[] = " category_id = '$id' ";
$query = "SELECT COUNT(*) "
. "\n FROM #__rss "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
;

$php5DB->setQuery( $query );
$recordTotal = $php5DB->loadResult();

$startLimit= ($currPage - 1) * $limit;

//list category
$query = "SELECT * "
. "\n FROM #__rss "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY id desc LIMIT $startLimit, $limit";
$php5DB->setQuery( $query );//echo $query;
$rows = $row_temp = $php5DB->loadObjectList();
//paging
$pageTotal = ceil($recordTotal / $limit);
$currPage = $currPage > $pageTotal ? $pageTotal : $currPage;
$paging = new php5Paging($pageTotal, $currPage);
$paging->url = sefBuild($php5WebPath, 'index.php?o=rss_category&m=main', 1)."?";
//assign
$categories = '';
$i = 1;
foreach($rows as $key => $row) {
	$categories[$key] = array();
	$categories[$key]['idx'] = $i;
	$categories[$key]['id'] = $row->id;
	$categories[$key]['title'] = $row->title;
	$categories[$key]['description'] = $row->description;
	$categories[$key]['link'] = $row->link;
	$categories[$key]['date'] = $row->date;
	if($i % 2 == 0) $categories[$key]['row'] = 1;
	else $categories[$key]['row'] = 0;

	$i++;
}
$smarty->assign('categories',$categories);
$smarty->assign('date', date('d/m/Y', php5GMTTime()));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=products&m=main&task=search'));
$smarty->assign('addcart', sefBuild($php5WebPath, 'index.php?o=your_cart&m=main&task=add'));
//$smarty->set_compile_path($php5RootPath . '/templates_c/product/');
$tpl = sprintf($php5TemplateFile, $language, 'rss', 'detail.tpl');	
$main_content =  $smarty->fetch($tpl); 
$tpl = sprintf($php5TemplateFile, $language, '', 'rss.tpl');
$smarty->assign('main',$main_content);
$rss_content = $smarty->fetch($tpl);
//echo $rss_content;
$dir = $php5RootPath."/rss/";
$file = $dir."news_$id.rss";
if(!is_dir($dir)) {
	if(@mkdir($dir, 0755)){};
} else {
	if(@chmod($dir, 0755)){};
}
if(is_file($file)) {
	if(chmod($file, 0777)){};
}
$fh = @fopen($file, 'w');
if(@fwrite($fh, $rss_content)) {}
fclose($fh);	
if(@chmod($file, 0644)){};
if(@chmod($dir, 0755)){};
echo "<script>window.location='$php5WebPath/rss/news_$id.rss'; </script>";
die;


