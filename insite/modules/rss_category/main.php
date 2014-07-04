<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();
//get
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
if(!$currPage) {
	$currPage = 1;
}
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'rss_category'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'rss_category', 'main.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
$msg = '';
//////////////////////////////
switch($task)
{
	case 'delete':
		$chk 		= php5GetParam($_REQUEST, 'cid', '');
		if (count($chk) > 0) {
			$query = "DELETE "
			. "\n FROM #__category "
			. "\n WHERE id IN (" . implode( ", ", $chk ) . ") AND type = 2";
			$php5DB_en->setQuery( $query );
			if ($php5DB_en->query()) {
				$msg = 'Delete sucessfully!!!';
			}
			writeHistoryLogs(1, $php5Session->getVar("admin_id"), $query, $php5DB);
		}
		break;
}
///////////////////////////
if ($task == 'search') {
	$s_name = php5GetParam( $_REQUEST, 's_name', '' );
	$php5Session->setVar("1_s_name", $s_name);
} else {
	$s_name = $php5Session->getVar("1_s_name");
}

$s_name = $php5Session->getVar("1_s_name");

$limit = 10;
$where = array();
if ($s_name) {
	$where[] = " name like '%" . mysql_escape_string($s_name) . "%' ";
}
$where[] = " type = 2 ";
$query = "SELECT COUNT(*) "
. "\n FROM #__category "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
;

$php5DB_en->setQuery( $query );
$recordTotal = $php5DB_en->loadResult();

$startLimit= ($currPage - 1) * $limit;

//list category
$query = "SELECT * "
. "\n FROM #__category "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY id desc LIMIT $startLimit, $limit";
$php5DB_en->setQuery( $query );//echo $query;
$rows = $row_temp = $php5DB_en->loadObjectList();
//paging
$pageTotal = ceil($recordTotal / $limit);
$currPage = $currPage > $pageTotal ? $pageTotal : $currPage;
$paging = new php5Paging($pageTotal, $currPage);
$paging->url = sefBuild($php5WebPath, 'index.php?o=rss_category&m=main', 0)."?";
//assign
$categories = '';
$i = 1;
foreach($rows as $key => $row) {
	$categories[$key] = array();
	$categories[$key]['idx'] = $i;
	$categories[$key]['id'] = $row->id;
	$categories[$key]['name'] = $row->name;
	$categories[$key]['status'] = $row->status;
	$categories[$key]['link'] = sefBuild($php5WebPath, 'index.php?o=rss_category&m=edit&task=view&id='. $row->id, 0);
	if($i % 2 == 0) $categories[$key]['row'] = 1;
	else $categories[$key]['row'] = 0;

	$i++;
}

$smarty->assign('categories', $categories);
$smarty->assign('s_name', $s_name);
$smarty->assign('msg', $msg);
$smarty->assign('total', count($categories));
$smarty->assign('paging', $paging->showDivPages());
$smarty->assign('link_category', sefBuild($php5WebPath, 'index.php?o=rss_category', 0));
$smarty->assign('link_create', sefBuild($php5WebPath, 'index.php?o=rss_category&m=create', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=rss_category&m=main&task=search', 0));
$smarty->assign('main', $smarty->fetch($tpl));
//$smarty->display($tpl);

return;

