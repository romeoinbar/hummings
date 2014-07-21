<?php
//error_reporting(E_ALL);
//ini_set('display_errors','On');
defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();

include($php5RootPath . '/classes/newsletter_user.class' . $php5Ext);
$smarty->assign('link_view_user', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main&task=view', 0));
$smarty->assign('link_add_user', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main&task=add', 0));
$smarty->assign('link_list_user', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main&task=list', 0));
$smarty->assign('link_edit_user', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main&task=edit', 0));
$smarty->assign('link_del_user', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main&task=delete', 0));

switch ($task){	
	case 'view':
		viewUsers();
		break;
	case 'save':
		saveUsers();
		break;
	case 'delete':
		deleteUsers();
		break;
	case 'edit':
		editUsers();
		break;
	case 'add':
		addUsers();
		break;
	case 'search':
	default:
		listUsers($task);
		break;
}
function viewUsers(){
	global $smarty, $php5RootAdminPath, $type, $php5Session, $php5WebPath, $php5TemplateAdminFile, $lang, $define, $php5DB, $php5RootPath,$php5Ext ;	
	
	$countries = array();
	$arr_temp = $define->COUNTRY();
	$arr_temp1 = $define->NEWSLETTER_USER_TYPE();
	
	$id = php5GetParam($_REQUEST, 'id', 0);	
	$row = new php5User($php5DB);
	$row->load($id);
	
	if ($row->name=='')
		php5Redirect(sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main', 0));	
			
	$row->type = (!isset($arr_temp1[$row->status]))?'None':$arr_temp1[$row->status];
	$row->country = (!isset($arr_temp[$row->country_id]["name"]))?'None':$arr_temp[$row->country_id]["name"];	
	$row->mss = sprintf($lang["_MSS_DEL_USER"], $row->id, $row->name)	;
	$smarty->assign('row', $row);
	
	// Email list
	$str_email='';
	$php5DB->setQuery("SELECT email FROM #__newsletter_user WHERE email!='".$row->email."' ORDER BY id");
	$arr_email = $php5DB->loadResultArray();
	for ($i=0; $i<count($arr_email); $i++){
		$str_email .= "'".$arr_email[$i]."',";
	}
	
	$smarty->assign('email_list',substr($str_email, 0, strlen($str_email)-1));
	
	$smarty->assign('user_type', $define->NEWSLETTER_USER_TYPE());
	
	$smarty->assign('_ACCOUNT_MANAGER', $lang["_ACCOUNT_MANAGER"]);
	$smarty->assign('_USER_TYPE', "Status");
	$smarty->assign('_WORKSHOP', $lang["_WORKSHOP"]);
	$smarty->assign('_NAME', $lang["_NAME"]);
	$smarty->assign('_EMAIL', $lang["_EMAIL"]);
	$smarty->assign('_DESIGNATION', $lang["_DESIGNATION"]);
	$smarty->assign('_UNIT', $lang["_UNIT"]);
	$smarty->assign('_CONTACT_NUMBER', $lang["_CONTACT_NUMBER"]);	
	$smarty->assign('_NEW_PASSWORD', $lang["_NEW_PASSWORD"]);
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
	
	$smarty->assign('_UPDATE', $lang["_UPDATE"]);	
	$smarty->assign('_RESET', $lang["_RESET"]);	
	$smarty->assign('_BACK', $lang["_BACK"]);	
  $smarty->assign('main', $smarty->fetch(sprintf($php5TemplateAdminFile, 'en', $type , 'view.tpl')));
	//$smarty->display(sprintf($php5TemplateAdminFile, 'en', $type , 'view.tpl'));
}
function deleteUsers(){
	global $smarty, $php5RootAdminPath, $type, $php5Session, $php5WebPath, $php5TemplateAdminFile, $lang, $define, $php5DB, $php5Ext, $php5RootPath, $msgAlert, $redirect;
		
	// User
	$id = php5GetParam($_REQUEST, 'id', 0);	
	$row = new php5User($php5DB);
	$row->load($id);	
	
	if (($row->name=='')||($row->id==$php5Session->getVar("admin_id"))) {
		$msgAlert = sprintf($lang['_MSS_DEL_USER_FAIL'], $row->id);
		$redirect = sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main', 0);		
	}
		
	// Delete user dealer
	if ($row->status==3){
		$php5DB->setQuery("DELETE FROM #__user_dealer WHERE user_id=".$row->id);
		$php5DB->query();
	}
	
	// Delete user
	$row->delete($id);
	listUsers();
	$msgAlert = sprintf($lang['_MSS_DEL_USER_SUCCESS'], $row->id);
	$redirect = sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main', 0);	
}
function saveUsers(){
	global $smarty, $php5RootAdminPath, $type, $php5Session, $php5WebPath, $php5TemplateAdminFile, $lang, $define, $php5DB, $php5Ext, $php5RootPath, $msgAlert, $redirect;	
	
	// Check email
	$user_id = php5GetParam($_REQUEST, 'user_id', 0);
	$email = trim(php5GetParam($_REQUEST, 'email', ''));
	$php5DB->setQuery("SELECT id FROM #__newsletter_user WHERE email='".$email."' AND id!=".$user_id." ORDER BY id");
	$chk = $php5DB->loadResult();
	if ($chk){
		$msgAlert = $lang["_MSS_DUL_USER"];	
		$redirect = ($user_id)?sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main&task=edit&id='.$user_id, 0):sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main&task=add', 0);
	}
	
	$row = new php5User($php5DB);
	$row->bind( $_POST );
	
	if ($user_id)
		$row->id = $user_id;	


	if  ($_REQUEST['pass']!= '' ) 
		$row->password = md5($_REQUEST['pass']);


				
	if (@php5GetParam($_REQUEST, 'delimg', 0)) {		
		unlink($php5ImagePath.'/'.trim(php5GetParam($_REQUEST, 'photo', '')));
		$img = '';
	} else {
		$img = trim(php5GetParam($_REQUEST, 'photo', ''));
	}
	
	$row->image = $img;
	

	
	if (!$row->store()) {
		$msgAlert = $lang['_MSS_CANT_SAVE'];		
	} else {
		if (php5GetParam($_REQUEST, 'status', 0)==3){						
			$row1 = new php5UserDealer($php5DB);
			if (php5GetParam($_REQUEST, 'user_dealer_id', 0))
				$row1->id = php5GetParam($_REQUEST, 'user_dealer_id', 0);		
			$row1->user_id = $row->get('id');			
			$row1->dealer_id = php5GetParam($_REQUEST, 'dealer_id', 0);			
			if (!$row1->store()) {
				$msgAlert = $lang['_MSS_CANT_SAVE'];		
			}
		}
		listUsers();
		$msgAlert = $lang['_MSS_SAVE_SUCCESSFULL'];
		$redirect = sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main', 0);					
	}
}
function editUsers(){	
	global $smarty, $php5RootAdminPath, $type, $php5Session, $php5WebPath, $php5TemplateAdminFile, $lang, $define, $php5DB, $php5RootPath,$php5Ext ;			
	global $msgAlert, $redirect;		
	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "update_users")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	
	
	$id = php5GetParam($_REQUEST, 'id', 0);	
	$row = new php5User($php5DB);
	$row->load($id);
	
	if ($row->name=='')
		php5Redirect(sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main', 0));	
		
	$row->dealer = 0;	
	$row->user_dealer = 0;
	if ($row->status==3) {
		$php5DB->setQuery("SELECT id,dealer_id FROM #__user_dealer WHERE user_id=".$row->id);
		$php5DB->loadObject($d);
		$row->dealer = $d->dealer_id;
		$row->user_dealer = $d->id;
	}	
	
	$smarty->assign('row', $row);
	
	$countries = array();
	$arr_temp = $define->COUNTRY();
	$arr_temp1 = $define->DEFAULT_COUNTRY();
	$countries[0] = "-- Select country --";
	foreach($arr_temp as $key => $arr) {
		if($arr['status'] && (array_search($key,$arr_temp1)!==false)) {
			$countries[$key] = $arr['name'];
		}
	}
	$countries[$row->country_id] = $arr_temp[$row->country_id]["name"];
	$smarty->assign('countries', $countries);
	
	// Email list
	$str_email='';
	$php5DB->setQuery("SELECT email FROM #__newsletter_user WHERE email!='".$row->email."' ORDER BY id");
	$arr_email = $php5DB->loadResultArray();
	for ($i=0; $i<count($arr_email); $i++){
		$str_email .= "'".$arr_email[$i]."',";
	}
	
	$smarty->assign('email_list',substr($str_email, 0, strlen($str_email)-1));
	

	$smarty->assign('user_type', $define->NEWSLETTER_USER_TYPE());
	
	$smarty->assign('_ACCOUNT_MANAGER', $lang["_ACCOUNT_MANAGER"]);
	$smarty->assign('_USER_TYPE', "Status");
	$smarty->assign('_WORKSHOP', $lang["_WORKSHOP"]);
	$smarty->assign('_NAME', $lang["_NAME"]);
	$smarty->assign('_EMAIL', $lang["_EMAIL"]);
	$smarty->assign('_DESIGNATION', $lang["_DESIGNATION"]);
	$smarty->assign('_UNIT', $lang["_UNIT"]);
	$smarty->assign('_CONTACT_NUMBER', $lang["_CONTACT_NUMBER"]);	
	$smarty->assign('_NEW_PASSWORD', $lang["_NEW_PASSWORD"]);
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
	
	$smarty->assign('_UPDATE', $lang["_UPDATE"]);	
	$smarty->assign('_RESET', $lang["_RESET"]);	
	$smarty->assign('_BACK', $lang["_BACK"]);
	
	$smarty->assign('link_save_user', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main&task=save', 0));	
	$smarty->assign('path_upload_file', sefBuild($php5WebPath, 'index.php?o=upload_files&m=upload_file', 0));
	$smarty->assign('main', $smarty->fetch(sprintf($php5TemplateAdminFile, 'en', $type , 'edit.tpl')));
	//$smarty->display(sprintf($php5TemplateAdminFile, 'en', $type , 'edit.tpl'));
}
function addUsers(){	
	global $smarty, $php5RootAdminPath, $type, $php5Session, $php5WebPath, $php5TemplateAdminFile, $lang, $define, $php5DB;		
	
	global $msgAlert, $redirect;		
	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "add_users")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}
	
	$countries = array();
	$arr_temp = $define->COUNTRY();
	$arr_temp1 = $define->DEFAULT_COUNTRY();
	$countries[0] = "-- Select country --";
	foreach($arr_temp as $key => $arr) {
		if($arr['status'] && (array_search($key,$arr_temp1)!==false)) {
			$countries[$key] = $arr['name'];
		}
	}
	$smarty->assign('countries', $countries);
		
	// Email list
	$str_email='';
	$php5DB->setQuery("SELECT email FROM #__newsletter_user WHERE 1 ORDER BY id");
	$arr_email = $php5DB->loadResultArray();
	for ($i=0; $i<count($arr_email); $i++){
		$str_email .= "'".$arr_email[$i]."',";
	}
	$smarty->assign('email_list',substr($str_email, 0, strlen($str_email)-1));

	$smarty->assign('user_type', $define->NEWSLETTER_USER_TYPE());
	$smarty->assign('_USER_TYPE', "Status");
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
	$smarty->assign('link_save_user', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main&task=save', 0));
	$smarty->assign('link_country', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=popup', 0));	
	
	$smarty->assign('main', $smarty->fetch(sprintf($php5TemplateAdminFile, 'en', $type , 'add.tpl')));
}
function listUsers($task = 'search'){	
	global $smarty, $php5RootAdminPath, $type, $php5Session, $php5WebPath, $php5TemplateAdminFile, $lang, $define, $php5DB;		
	
	global $msgAlert, $redirect;		
	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "manage_users")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}
	///////////////////////////
	if ($task == 'search') {
		$s_email = php5GetParam( $_REQUEST, 's_email', '' );
		$php5Session->setVar("100_s_email", $s_email);
		$s_status = php5GetParam( $_REQUEST, 's_status', '' );
		$php5Session->setVar("100_s_status", $s_status);		
	} else {
		$s_email = $php5Session->getVar("100_s_email");
		$s_status = $php5Session->getVar("100_s_status");
	}
	
	$s_email = $php5Session->getVar("100_s_email");	
	$s_status = $php5Session->getVar("100_s_status");	
	
	$sWhere = '';
	if ($s_status)
		$sWhere = " AND status='".$s_status."'";

	if ($s_email) {
		$sWhere .= " AND email like '%" . mysql_real_escape_string($s_email) . "%' ";
	}	
	$user_type = $define->NEWSLETTER_USER_TYPE();	
	
	//paging
	$currPage = php5GetParam($_REQUEST, 'p', 1);
	$limit = _PHP5_MAXRECORD;
	$php5DB->setQuery("SELECT COUNT(*) FROM #__newsletter_user WHERE 1=1 ".$sWhere." ORDER BY date DESC");
	$recordTotal = $php5DB->loadResult();
	$startLimit= ($currPage - 1) * $limit;
	
	$pageTotal = ceil($recordTotal / $limit);
	$currPage = $currPage > $pageTotal ? $pageTotal : $currPage;
	$paging = new php5Paging($pageTotal, $currPage);
	$paging->url = sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main', 0, 1);
	$smarty->assign('paging', $paging->showDivPages());
	
	// User list
	$php5DB->setQuery("SELECT * FROM #__newsletter_user WHERE 1=1 ".$sWhere." ORDER BY date DESC LIMIT $startLimit, $limit");
	$rows= $php5DB->loadObjectList();
	foreach ($rows as $row){
		if(!$row->status) $row->status = 1; 
		$row->user_type = @$user_type[$row->status];	
		if($row->date){
			$row->date = date('m/d/Y', $row->date);
		}
		$row->mss = sprintf($lang["_MSS_DEL_USER"], $row->id, $row->name);	
	}
	$smarty->assign('rows', $rows);	
	
	$smarty->assign('s_email', $s_email);	
	$smarty->assign('s_status', $s_status);	
	$smarty->assign('user_type', $user_type);	
	$smarty->assign('_SELECT_USER_TYPE', $lang["_SELECT_USER_TYPE"]);
	$smarty->assign('_USER_TYPE', "Status");
	$smarty->assign('_ACCOUNT_MANAGER', $lang["_ACCOUNT_MANAGER"]);	
	$smarty->assign('_USER_TYPE', "Status");
	$smarty->assign('_WORKSHOP', $lang["_WORKSHOP"]);
	$smarty->assign('_NAME', $lang["_NAME"]);
	$smarty->assign('_EMAIL', $lang["_EMAIL"]);
	
	$smarty->assign('_CREATE', $lang["_CREATE"]);
	$smarty->assign('_DELETE', $lang["_DELETE"]);
	$smarty->assign('_EDIT', $lang["_EDIT"]);
	$smarty->assign('_ADD_ITEM', $lang["_ADD_ITEM"]);		
	$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main&task=search', 0));
	$smarty->assign('main', $smarty->fetch(sprintf($php5TemplateAdminFile, 'en', $type , 'list.tpl')));
}
function getDealer($user_id){
	global $php5DB;
	$php5DB->setQuery("SELECT d.* 
					FROM #__user_dealer AS ud
					INNER JOIN #__dealers AS d ON ud.dealer_id 	 = d.id
					 WHERE ud.user_id =".$user_id);	
	$php5DB->loadObject($row);	
	return $row;
}