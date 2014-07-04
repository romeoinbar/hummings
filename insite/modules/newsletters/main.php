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

	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "newsletter")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	
$php5Session->setVar('sent', 0);	
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
if(!$currPage) {
	$currPage = 1;
}
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'newsletters'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'newsletters', 'main.tpl');
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
			. "\n FROM #__newsletter_mail "
			. "\n WHERE mailid IN (" . implode( ", ", $chk ) . ") AND type = 'news'";
			$php5DB->setQuery( $query );
			if ($php5DB->query()) {
				$msg = 'Delete sucessfully!!!';
			}
			writeHistoryLogs(1, $php5Session->getVar("admin_id"), $query, $php5DB);
			$query = "DELETE "
			. "\n FROM #__newsletter_user_listmail "
			. "\n WHERE mailid IN (" . implode( ", ", $chk ) . ")";
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
	$where[] = " subject like '%" . mysql_escape_string($s_name) . "%' ";
}
$where[] = " type = 'news' ";
$query = "SELECT COUNT(*) "
. "\n FROM #__newsletter_mail "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
;

$php5DB->setQuery( $query );
$recordTotal = $php5DB->loadResult();

$startLimit= ($currPage - 1) * $limit;

//list category
$query = "SELECT * "
. "\n FROM #__newsletter_mail "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY mailid desc LIMIT $startLimit, $limit";
$php5DB->setQuery( $query );//echo $query;
$rows = $php5DB->loadObjectList();
//paging
$pageTotal = ceil($recordTotal / $limit);
$currPage = $currPage > $pageTotal ? $pageTotal : $currPage;
$paging = new php5Paging($pageTotal, $currPage);
$paging->url = sefBuild($php5WebPath, 'index.php?o=newsletters&m=main', 0)."?";
//assign
$categories = '';
$i = 1;
foreach($rows as $key => $row) {
	$categories[$key] = array();
	$categories[$key]['idx'] = $i;
	$categories[$key]['id'] = $row->mailid;
	$categories[$key]['subject'] = $row->subject;
	$categories[$key]['published'] = $row->published;
	$categories[$key]['createddate'] = date('d/m/Y h:i', $row->created);
	$categories[$key]['fromname'] = $row->fromname;
	$categories[$key]['link'] = sefBuild($php5WebPath, 'index.php?o=newsletters&m=edit&task=view&id='. $row->mailid, 0);
	$categories[$key]['preview'] = sefBuild($php5WebPath, 'index.php?o=newsletters&m=preview&task=view&id='. $row->mailid, 0);
	if($i % 2 == 0) $categories[$key]['row'] = 1;
	else $categories[$key]['row'] = 0;

	$i++;
}

$smarty->assign('categories', $categories);
$smarty->assign('s_name', $s_name);
$smarty->assign('msg', $msg);
$smarty->assign('total', count($categories));
$smarty->assign('paging', $paging->showDivPages());
$smarty->assign('link_category', sefBuild($php5WebPath, 'index.php?o=newsletters', 0));
$smarty->assign('link_create', sefBuild($php5WebPath, 'index.php?o=newsletters&m=create', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=newsletters&m=main&task=search', 0));
$smarty->assign('main', $smarty->fetch($tpl));
//$smarty->display($tpl);

return;

