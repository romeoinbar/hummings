<?php
/***************************************************************************
*                                register.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
require_once($php5RootPath . "/classes/user.class.php");
include($php5RootPath . '/classes/define.class' . $php5Ext);
$row = new php5User($php5DB);
$define = new clsDefine();

$task 		= php5GetParam($_REQUEST, 'task', '');
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'account'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'account', 'create.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//check task
$msg = '';
$noerr = 1;
switch($task)
{
	case 'add':
		$row->bind( $_POST );
		if(!trim($row->name)) {
			$noerr = 0;
			$msg = $msgAlert = sprintf($lang['_BLANK_MSG_'], 'Name');
		}
		if($noerr) {
			$row->id = '';
			//$row->status = intval(php5GetParam($_POST, 'status', 0));
			//$row->create_user = $php5Session->getVar("admin_name");
			//$row->update_user = $php5Session->getVar("admin_name");
			if (!$row->store()) {
				$msg = $msgAlert = "Error!!! Please try again!!!";		
			} else {
				if (php5GetParam($_REQUEST, 'type_id', 0)==3){
					$row1 = new Dealer($php5DB);
					$row1->id = NULL;
					$dealer_id = php5GetParam($_REQUEST, 'dealer_id', '');
					$row1->load($dealer_id);
					$row1->user_id = $row->id;
					if (!$row1->store()) {
						$msgAlert = $lang['_MSS_CANT_SAVE'];		
					} else {
						$msg = $msgAlert = $lang['_UPDATE_MSG_'];
						$redirect = sefBuild($php5WebPath, 'index.php?o=account&m=main', 0);
					}
				}
			}
		}
		break;
	default:
		break;	
		
}
if($msg) {
	$smarty->assign('msg', $msg);
}
	// Email list
	$str_email='';
	$php5DB->setQuery("SELECT email FROM #__users WHERE 1 ORDER BY id");
	$arr_email = $php5DB->loadResultArray();
	for ($i=0; $i<count($arr_email); $i++){
		$str_email .= "'".$arr_email[$i]."',";
	}
	$smarty->assign('email_list',substr($str_email, 0, strlen($str_email)-1));
	
	// Workshops
	$dealer = array();
	$php5DB->setQuery("SELECT id, dealer_code, fullname FROM #__dealers WHERE parent_id=0 AND user_id = 0 ORDER BY dealer_code");
	$ds = $php5DB->loadObjectList();
	foreach ($ds as $d){
		$dealer[$d->id] = $d->dealer_code.' : '.$d->fullname;
		$php5DB->setQuery("SELECT id, dealer_code, fullname FROM #__dealers WHERE parent_id=".$d->id." AND  user_id = 0 ORDER BY dealer_code");
		$sub_ds = $php5DB->loadObjectList();
		foreach ($sub_ds as $sub_d){
			$dealer[$sub_d->id] = '.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- '.$sub_d->dealer_code.' : '.$sub_d->fullname;
		}
	}
	$smarty->assign('dealer', $dealer);
	$smarty->assign('user_type', $define->USER_TYPE());
	$smarty->assign('_USER_TYPE', $lang["_USER_TYPE"]);
	$smarty->assign('_WORKSHOP', $lang["_WORKSHOP"]);
	$smarty->assign('_NAME', $lang["_NAME"]);
	$smarty->assign('_EMAIL', $lang["_EMAIL"]);
	$smarty->assign('_DESIGNATION', $lang["_DESIGNATION"]);
	$smarty->assign('_UNIT', $lang["_UNIT"]);
	$smarty->assign('_CONTACT_NUMBER', $lang["_CONTACT_NUMBER"]);
	$smarty->assign('_VERIFY_PASSWORD', $lang["_VERIFY_PASSWORD"]);
	$smarty->assign('_MOBILE', $lang["_MOBILE"]);
	$smarty->assign('_IMAGE', $lang["_IMAGE"]);
	$smarty->assign('_REMARKS', $lang["_REMARKS"]);
	
	// Message
	$smarty->assign('_MSS_NAME', $lang["_MSS_NAME"]);
	$smarty->assign('_MSS_EMAIL', $lang["_MSS_EMAIL"]);
	$smarty->assign('_MSS_EMAIL1', $lang["_MSS_EMAIL1"]);
	$smarty->assign('_MSS_EMAIL2', $lang["_MSS_EMAIL2"]);
	$smarty->assign('_MSS_PASSWORD', $lang["_MSS_PASSWORD"]);
	$smarty->assign('_MSS_PASSWORD1', $lang["_MSS_PASSWORD1"]);
	
	$smarty->assign('_CREATE', $lang["_CREATE"]);	
	$smarty->assign('_RESET', $lang["_RESET"]);	
	$smarty->assign('_BACK', $lang["_BACK"]);
	
	$smarty->assign('path_upload_file', sefBuild($php5WebPath, 'index.php?o=upload_files&m=upload_file', 0));
	$smarty->assign('link_save_user', sefBuild($php5WebPath, 'index.php?o=account&m=main&task=save', 0));	
//assign
/*$smarty->assign('id', $row->id);
$smarty->assign('name', $row->name);
$smarty->assign('duration', $row->duration);
$smarty->assign('points', $row->points);
$smarty->assign('description', $row->description);
$smarty->assign('participating_products', $row->participating_products);
$smarty->assign('image', $row->image);
$smarty->assign('status', $row->status);
$smarty->assign('create_user', $row->create_user);
$smarty->assign('update_user', $row->update_user);
$smarty->assign('ordering', $row->ordering);
$smarty->assign('post_date', date('m/d/Y', $row->post_date));
$smarty->assign('update_date', date('m/d/Y', $row->update_date));*/

$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=account&m=main', 0));
$smarty->assign('path_upload_file', sefBuild($php5WebPath, 'index.php?o=upload_files&m=upload_file', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=account&m=create&task=add', 0));
$smarty->display($tpl);

return;
