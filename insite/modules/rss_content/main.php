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
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'rss_content'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'rss_content', 'main.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//list category
$where = array();
$rows_temp = array();
$where[] = " type = 2 ";
$query = "SELECT * "
. "\n FROM #__category "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY id";
$php5DB_en->setQuery( $query );//echo $query;
$rows_temp = $php5DB_en->loadObjectList();
$categories = array();
$categories[0] = "None";
foreach($rows_temp as $row_temp) {
	$categories[$row_temp->id] = $row_temp->name;
}
//////////////////////////////
switch($task)
{
	case 'delete':
		$chk 		= php5GetParam($_REQUEST, 'cid', '');
		if (count($chk) > 0) {
			$query = "DELETE "
			. "\n FROM #__rss "
			. "\n WHERE id IN (" . implode( ", ", $chk ) . ") ";
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
	$where[] = " title like '%" . mysql_escape_string($s_name) . "%' ";
}
$query = "SELECT COUNT(*) "
. "\n FROM #__rss "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
;

$php5DB_en->setQuery( $query );
$recordTotal = $php5DB_en->loadResult();

$startLimit= ($currPage - 1) * $limit;

//list rss
$query = "SELECT * "
. "\n FROM #__rss "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY id desc LIMIT $startLimit, $limit";
$php5DB_en->setQuery( $query );//echo $query;
$rows = $row_temp = $php5DB_en->loadObjectList();
//paging
$pageTotal = ceil($recordTotal / $limit);
$currPage = $currPage > $pageTotal ? $pageTotal : $currPage;
$paging = new php5Paging($pageTotal, $currPage);
$paging->url = sefBuild($php5WebPath, 'index.php?o=rss_content&m=main', 0)."?";
//assign
$rsses = '';
$i = 1;
foreach($rows as $key => $row) {
	$rsses[$key] = array();
	$rsses[$key]['idx'] = $i;
	$rsses[$key]['id'] = $row->id;
	$rsses[$key]['title'] = $row->title;
	$rsses[$key]['description'] = $row->description;
	$rsses[$key]['category_name'] = @$categories[$row->category_id];
	$rsses[$key]['link'] = $row->link;
	$rsses[$key]['date'] = $row->date;
	$rsses[$key]['s_date'] = $row->s_date;
	$rsses[$key]['status'] = $row->status;
	$rsses[$key]['link_edit'] = sefBuild($php5WebPath, 'index.php?o=rss_content&m=edit&task=view&id='. $row->id, 0);
	if($i % 2 == 0) $rsses[$key]['row'] = 1;
	else $rsses[$key]['row'] = 0;

	$i++;
}

$smarty->assign('rsses', $rsses);
$smarty->assign('s_name', $s_name);
$smarty->assign('total', count($rsses));
$smarty->assign('paging', $paging->showDivPages());
$smarty->assign('link_rss', sefBuild($php5WebPath, 'index.php?o=rss_content', 0));
$smarty->assign('link_create', sefBuild($php5WebPath, 'index.php?o=rss_content&m=create', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=rss_content&m=main&task=search', 0));
$smarty->assign('main', $smarty->fetch($tpl));
//$smarty->display($tpl);

return;

