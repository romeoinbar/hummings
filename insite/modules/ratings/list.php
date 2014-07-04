<?php
/***************************************************************************
*                                ratings.php
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
$product_id 		= php5GetParam($_REQUEST, 'id', '');
if(!$currPage) {
	$currPage = 1;
}
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'ratings'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'ratings', 'list.tpl');
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
			. "\n FROM #__cart_rating_reviews "
			. "\n WHERE rating_review_id IN (" . implode( ", ", $chk ) . ") ";
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
$sort_by = php5GetParam( $_REQUEST, 'sort_by', '' );

$limit = 10;
$where = "1";
if ($product_id) {
	$where .= " AND `rv`.product_id = '" . mysql_escape_string($product_id) . "' ";
}
$orderby = "";
switch ($sort_by){
	case 'date_asc':
		$orderby = "\n ORDER BY pr.created_on ASC ";
		break;
	case 'helpful':
		$orderby ="\n ORDER BY pr.helpful DESC ";
		break;
	case 'report_abuse':
		$orderby ="\n ORDER BY pr.report_abuse DESC ";
		break;
	default:
		$orderby ="\n ORDER BY pr.created_on DESC ";
		break;
}

$query = "SELECT COUNT(*) "
. "\n FROM `#__cart_rating_reviews` AS `pr`
		LEFT JOIN `#__cart_rating_votes` as `rv` on `rv`.`product_id`=`pr`.`product_id`  and `rv`.`created_by`= `pr`.`created_by`  "
. "\n LEFT JOIN `#__user` AS `u`	ON `pr`.`created_by` = `u`.`user_id`"		
.	"\n	LEFT JOIN `#__product` as `p` on `rv`.`product_id`=`p`.`product_id`  "
. "\n WHERE " . $where
.$orderby;

//echo $query;

$php5DB->setQuery( $query );
$recordTotal = $php5DB->loadResult();

$startLimit= ($currPage - 1) * $limit;
//assign
$ratings = '';

if($recordTotal>0) {
	//list ratings
	$query = "SELECT `rv`.*,`pr`.`rating_review_id`, `p`.`name`, `pr`.published, pr.comment, pr.helpful, pr.report_abuse FROM `#__cart_rating_reviews` AS `pr`
		LEFT JOIN `#__cart_rating_votes` as `rv` on `rv`.`product_id`=`pr`.`product_id`  and `rv`.`created_by`= `pr`.`created_by` "
	. "\n LEFT JOIN `#__user` AS `u`	ON `pr`.`created_by` = `u`.`user_id`"	
  .	"\n	LEFT JOIN `#__product` as `p` on `rv`.`product_id`=`p`.`product_id`  "
	. "\n WHERE " . $where
	. $orderby
	. "\n LIMIT $startLimit, $limit";
	$php5DB->setQuery( $query );//echo $query;
	$rows = $row_temp = $php5DB->loadObjectList();
	
	$i = 1;
	foreach($rows as $key => $row) {
		$ratings[$key] = array();
		$ratings[$key]['idx'] = $i;
		$ratings[$key]['comment'] = $row->comment;
		$ratings[$key]['helpful'] = $row->helpful;
		$ratings[$key]['report_abuse'] = $row->report_abuse;
		$ratings[$key]['rating_vote_id'] = $row->rating_vote_id;
		$ratings[$key]['product_id'] = $row->product_id;
		$ratings[$key]['product_name'] = $row->name;
		$ratings[$key]['vote'] = $row->vote;
		$ratings[$key]['created_on'] = date($row->created_on);
		$ratings[$key]['created_by'] = $row->created_by;
		$ratings[$key]['modified_on'] = $row->modified_on;
		$ratings[$key]['modified_by'] = $row->modified_by;
		$ratings[$key]['published'] = ($row->published==1)?'Yes':'No';
		$ratings[$key]['link'] = sefBuild($php5WebPath, 'index.php?o=ratings&m=edit&task=view&id='. $row->rating_review_id, 0);
		$ratings[$key]['url_product'] = sefBuild($php5WebPath, 'index.php?o=ratings&m=list&task=view&id='. $row->product_id, 0);
		if($i % 2 == 0) $ratings[$key]['row'] = 0;
		else $ratings[$key]['row'] = 1;
		$i++;
	}
} 

//paging
$pageTotal = ceil($recordTotal / $limit);
$currPage = $currPage > $pageTotal ? $pageTotal : $currPage;
$paging = new php5Paging($pageTotal, $currPage);
$paging->url = sefBuild($php5WebPath, 'index.php?o=ratings&m=list', 0)."?";

$smarty->assign('ratings', $ratings);
$smarty->assign('s_name', $s_name);
$smarty->assign('sort_by', $sort_by);
$smarty->assign('total', count($ratings));
$smarty->assign('paging', $paging->showDivPages());
$smarty->assign('link_ratings', sefBuild($php5WebPath, 'index.php?o=ratings', 0));
$smarty->assign('link_create', sefBuild($php5WebPath, 'index.php?o=ratings&m=create', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=ratings&m=main&task=search', 0));
$smarty->assign('url_list', sefBuild($php5WebPath, 'index.php?o=ratings&m=list&task=view&id='.$product_id, 0));
$smarty->assign('main', $smarty->fetch($tpl));
//$smarty->display($tpl);

return;

