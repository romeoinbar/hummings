<?php
/***************************************************************************
*                                ratings.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
 	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "articles")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	
defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();
//get
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
if(!$currPage) {
	$currPage = 1;
}
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'ratings'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'ratings', 'main.tpl');
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
			. "\n FROM #__cart_ratings "
			. "\n WHERE rating_id IN (" . implode( ", ", $chk ) . ") ";
			$php5DB->setQuery( $query );
			if ($php5DB->query()) {
				$msg = 'Delete sucessfully!!!';
			}
			writeHistoryLogs(1, $php5Session->getVar("admin_id"), $query, $php5DB);
		}
		break;
}
///////////////////////////
/*if ($task == 'search') {
	$s_name = php5GetParam( $_REQUEST, 's_name', '' );
	$php5Session->setVar("1_s_name", $s_name);
} else {
	$s_name = $php5Session->getVar("1_s_name");
}

$s_name = $php5Session->getVar("1_s_name");*/
$s_name = php5GetParam( $_REQUEST, 's_name', '' );
$limit = 10;
$where = array();
if ($s_name) {
	$where[] = " p.name like '%" . mysql_escape_string($s_name) . "%' ";
}

$where[] = " r.product_id = p.product_id";

$query = "SELECT COUNT(*) "
. "\n FROM #__cart_ratings as r, `#__product` as p  "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
;

$php5DB->setQuery( $query );
$recordTotal = $php5DB->loadResult();
$startLimit= ($currPage - 1) * $limit;
//assign
$ratings = '';

if($recordTotal>0) {
	//list ratings
	$query = " SELECT r.*, p.name FROM `#__cart_ratings` as r, `#__product` as p "
	. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
	. "\n ORDER BY rating_id desc LIMIT $startLimit, $limit";
	$php5DB->setQuery( $query );//echo $query;
	$rows = $row_temp = $php5DB->loadObjectList();
	$i = 1;
	foreach($rows as $key => $row) {
		$ratings[$key] = array();
		$ratings[$key]['idx'] = $i;
		$ratings[$key]['rating_id'] = $row->rating_id;
		$ratings[$key]['product_id'] = $row->product_id;
		$ratings[$key]['product_name'] = $row->name;
		$ratings[$key]['rates'] = $row->rates;
		$ratings[$key]['ratingcount'] = $row->ratingcount;
		$ratings[$key]['rating'] = $row->rating;
		$ratings[$key]['published'] = $row->published;
		$ratings[$key]['created_on'] = $row->created_on;
		$ratings[$key]['created_by'] = $row->created_by;
		$ratings[$key]['modified_on'] = $row->modified_on;
		$ratings[$key]['modified_by'] = $row->modified_by;
		$ratings[$key]['link'] = sefBuild($php5WebPath, 'index.php?o=ratings&m=list&task=view&id='. $row->product_id, 0);
		if($i % 2 == 0) $ratings[$key]['row'] = 0;
		else $ratings[$key]['row'] = 1;
		$i++;
	}
} 
//paging
$pageTotal = ceil($recordTotal / $limit);
$currPage = $currPage > $pageTotal ? $pageTotal : $currPage;
$paging = new php5Paging($pageTotal, $currPage);
$paging->url = sefBuild($php5WebPath, 'index.php?o=ratings&m=main', 0)."?";

$smarty->assign('ratings', $ratings);
$smarty->assign('s_name', $s_name);
$smarty->assign('total', count($ratings));
$smarty->assign('paging', $paging->showDivPages());
$smarty->assign('link_ratings', sefBuild($php5WebPath, 'index.php?o=ratings', 0));
$smarty->assign('link_create', sefBuild($php5WebPath, 'index.php?o=ratings&m=create', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=ratings&m=main&task=search', 0));
$smarty->assign('main', $smarty->fetch($tpl));
//$smarty->display($tpl);

return;

