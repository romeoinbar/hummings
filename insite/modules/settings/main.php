<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
 	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "setting")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	
	
defined('PHP5_PHP') or die("Application is stopping!!!");
checkLogin();
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'settings'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'settings', 'main.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}

//$arr_key_name = php5GetParam( $_REQUEST, 'key_name', array() );
//post
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);

$limit = 10;
$msg = '';
$arrText['config_admin_email'] = "Admin email";
$arrText['config_email'] = "Sender email";
$arrText['config_point_to_SGD'] = "Change point to SGD";
$arrText['config_sms'] = "Send SMS?";
$arrText['config_send_mail'] = "Send email?";
$arrText['config_seo'] = "Search Engine Friendly URLs";

$arrText['config_gst'] = "GST";
$arrText['config_delivery_charge'] = "Delivery Charge";

$arrText['config_seo'] = "Search Engine Friendly URLs";

$arrText['config_meta_desc_default'] = "";
$arrText['config_meta_keyword_default'] = "";
$arrText['config_meta_desc_cart'] = "";
$arrText['config_meta_keyword_cart'] = "";
$arrText['config_sitename'] = "";
$arrText['config_contactus'] = "";

if ($task == 'update') {
	foreach($arrText as $key=>$value) {
		$arr_key_name[$key] = php5GetParam( $_REQUEST, $key, '' );
	}
	$arr_key_name['config_contactus'] = trim($_POST['config_contactus']);
	foreach($arr_key_name as $key=>$value) {
		$query = "UPDATE "
		. "\n #__configuration "
		. "\n SET value_name = '$value' "
		. "\n WHERE key_name = '$key'";
		$php5DB->setQuery( $query );
		$php5DB->query();
	}
	$msg = $msgAlert = $lang["_UPDATE_MSG_"];
	///////////////
	@unlink($php5RootPath.'/configs/extension.inc');
	$arrFile[0] = '<?php'."\n";
	$arrFile[1] = '$php5Ext = ".php";'."\n";
	if($arr_key_name['config_seo'] ) {
		$arrFile[2] = '$php5_sef = true;'."\n";
	} else {
		$arrFile[2] = '$php5_sef = false;'."\n";
	}
	if(($fh = fopen($php5RootPath."/configs/extension.inc", "w")) === FALSE) {
		die('Failed to open file for writing!');
	}
	// Set counters
	$currentLine = 0;
	$cntFile = count($arrFile);
	// Write contents, inserting $item as first item
	while( $currentLine <= $cntFile-1 ){
			fwrite($fh, $arrFile[$currentLine]);
			$currentLine++;
	}
	@chmod($php5RootPath."/configs/extension.inc", 0750);
	
	if(!$arr_key_name['config_seo'] ) {
		$old_config_seo = php5GetParam( $_REQUEST, 'old_config_seo', 0 );
		if($old_config_seo == 1) {
			$redirect = $php5WebPath .'/index.php?t=admin&o=settings&m=main';
		}
	} else {
		$old_config_seo = php5GetParam( $_REQUEST, 'old_config_seo', 0 );
		if($old_config_seo == 0) {
			$redirect = $php5WebPath .'/admin/settings/';
		}
	}
}
$where = array();

$where[] = "(key_name = 'config_email' OR key_name = 'config_sms' OR key_name = 'config_send_mail' OR key_name = 'config_point_to_SGD' OR key_name =  'config_admin_email' OR key_name =  'config_seo' OR key_name =  'config_meta_desc_default' OR key_name =  'config_meta_keyword_default' OR key_name =  'config_meta_desc_cart' OR key_name =  'config_meta_keyword_cart'  OR key_name =  'config_sitename' OR key_name =  'config_contactus'  
OR key_name =  'config_gst' 
OR key_name =  'config_delivery_charge' 
)";

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
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=settings&m=main&task=update', 0));
$smarty->assign('main', $smarty->fetch($tpl));

//$smarty->display($tpl);

?>
