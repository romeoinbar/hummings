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
$msg = '';
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'user_group'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'user_group', 'main.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//////////////////////////////
switch($task)
{
	case 'delete':
		$chk 		= php5GetParam($_REQUEST, 'cid', '');
		if (count($chk) > 0) {
			$query = "DELETE "
			. "\n FROM #__newsletter_user_group "
			. "\n WHERE id IN (" . implode( ", ", $chk ) . ")";
			$php5DB->setQuery( $query );
			if ($php5DB->query()) {
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
$query = "SELECT COUNT(*) "
. "\n FROM #__newsletter_user_group "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
;

$php5DB->setQuery( $query );
$recordTotal = $php5DB->loadResult();

$startLimit= ($currPage - 1) * $limit;

//list category
$query = "SELECT * "
. "\n FROM #__newsletter_user_group "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY id LIMIT $startLimit, $limit";
$php5DB->setQuery( $query );//echo $query;
$rows = $row_temp = $php5DB->loadObjectList();
//paging
$pageTotal = ceil($recordTotal / $limit);
$currPage = $currPage > $pageTotal ? $pageTotal : $currPage;
$paging = new php5Paging($pageTotal, $currPage);
$paging->url = sefBuild($php5WebPath, 'index.php?o=user_group&m=main', 0)."?";
//assign
$categories = '';
$i = 1;
foreach($rows as $key => $row) {
	$categories[$key] = array();
	$categories[$key]['idx'] = $i;
	$categories[$key]['id'] = $row->id;
	$categories[$key]['name'] = $row->name;
	if($row->list_id) {
		$arr = explode(';', $row->list_id);
		$total = count($arr);
	} else {
		$total = 0;
	}
	$categories[$key]['total'] = $total;
	$categories[$key]['status'] = $row->status;
	$categories[$key]['link'] = sefBuild($php5WebPath, 'index.php?o=user_group&m=edit&task=view&id='. $row->id, 0);
	$i++;
}

$smarty->assign('categories', $categories);
$smarty->assign('s_name', $s_name);
$smarty->assign('msg', $msg);
$smarty->assign('total', count($categories));
$smarty->assign('paging', $paging->showDivPages());
$smarty->assign('link_category', sefBuild($php5WebPath, 'index.php?o=user_group', 0));
$smarty->assign('link_create', sefBuild($php5WebPath, 'index.php?o=user_group&m=create', 0));
$smarty->assign('link_import', sefBuild($php5WebPath, 'index.php?o=import_newsletter_users', 0));
$smarty->assign('link_export', sefBuild($php5WebPath, 'index.php?o=export_newsletter_users', 0));
$smarty->assign('link1', sefBuild($php5WebPath, 'index.php?o=user_group&m=registered_bought', 0));
$smarty->assign('link2', sefBuild($php5WebPath, 'index.php?o=user_group&m=registered', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=user_group&m=main&task=search', 0));
$smarty->assign('main', $smarty->fetch($tpl));
//$smarty->display($tpl);

return;

