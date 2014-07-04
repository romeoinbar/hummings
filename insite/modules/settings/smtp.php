<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
checkLogin();
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'settings'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'settings', 'smtp.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}

//$arr_key_name = php5GetParam( $_REQUEST, 'key_name', array() );
//post
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);

$limit = 100;
$msg = '';

$arrText['config_smtp_host'] = "";
$arrText['config_smtp_port'] = "";
$arrText['config_smtp_username'] = "";
$arrText['config_smtp_password'] = "";

if ($task == 'update') {
	foreach($arrText as $key=>$value) {
		$arr_key_name[$key] = php5GetParam( $_REQUEST, $key, '' );
	}
	foreach($arr_key_name as $key=>$value) {
		$query = "UPDATE "
		. "\n #__configuration "
		. "\n SET value_name = '$value' "
		. "\n WHERE key_name = '$key'";
		$php5DB->setQuery( $query );
		$php5DB->query();
	}
	$msg = $msgAlert = $lang["_UPDATE_MSG_"];
}
$where = array();

$where[] = "(key_name = 'config_smtp_host' OR key_name = 'config_smtp_port' OR key_name = 'config_smtp_username' OR key_name = 'config_smtp_password')";

$query = "SELECT COUNT(*) "
. "\n FROM #__configuration "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
;

$php5DB->setQuery( $query );
$recordTotal = $php5DB->loadResult();

$startLimit= ($currPage - 1) * $limit;
$lists["p"] = $currPage;
//list category
$query = "SELECT * "
. "\n FROM #__configuration "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n  LIMIT $startLimit, $limit";

$php5DB->setQuery( $query );
$rows = $row_temp = $php5DB->loadObjectList();
//assign
$categories = '';
$i = 1;
foreach($rows as $key => $row) {
	$categories[$key] = array();
	$categories[$key]['label_name'] = $arrText[$row->key_name];
	$categories[$key]['key_name'] = $row->key_name;
	$categories[$key]['value_name'] = $row->value_name;
}
//print_r($rows);
//paging
$pageTotal = ceil($recordTotal / $limit);
$currPage = $currPage > $pageTotal ? $pageTotal : $currPage;
$paging = new php5Paging($pageTotal, $currPage);

$smarty->assign('categories', $categories);
foreach($rows as $key => $row) {
	$smarty->assign($row->key_name , $row->value_name);
}
$smarty->assign('total', count($categories));
$smarty->assign('msg', $msg);
$smarty->assign('paging', $paging->showDivPages());
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=settings&m=smtp&task=update', 0));
$smarty->assign('main', $smarty->fetch($tpl));

//$smarty->display($tpl);

?>
