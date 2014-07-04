<?php
/***************************************************************************
*                                main.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
if(checkLoginAdmin()) {
	php5Redirect(sefBuild($php5WebPath, 'index.php?o=cpanel&m=main', 0));
	return;
}
switch ($task){
	case 'mainpage':
		showMainpage();
		break;
	case 'login':
		loginSystem();
		showLoginForm();
		break;	
	case 'logout':
		logoutSystem();
		break;	
	default:
		showLoginForm();
		break;
}
function showMainpage(){
	global $smarty, $php5RootAdminPath, $module, $php5Session, $php5TemplateAdminFile, $lang;	
	checkLogin();
	
	$smarty->assign('H_WELCOME_ADDMIN', $lang['H_WELCOME_ADDMIN']);	
	$smarty->assign('N_SELECT_MENU', $lang['N_SELECT_MENU']);
	$smarty->assign('admin_name', $php5Session->getVar("admin_name"));	
	
	$smarty->display(sprintf($php5TemplateAdminFile, 'en', $module, 'main.tpl'));
}
function logoutSystem(){
	global $smarty, $php5DB, $php5WebPathAD, $php5Session, $php5WebPath;
	$php5Session->setVar("admin_id", 0);
	$php5Session->setVar("admin_name", "");
	$php5Session->setVar("admin_email", "");
	$php5Session->setVar("admin_type", "");
	
	php5Redirect(sefBuild($php5WebPath, 'index.php?o=main&m=main', 0));
}
function loginSystem(){
	global $smarty, $php5DB, $php5WebPathAD, $php5Session, $php5WebPath;
	global $msgAlert, $redirect;
	if ($php5Session->getVar("admin_id")){
		return;
	}
	$email 		= trim(php5GetParam($_REQUEST, 'email', ''));
	$pwd 		= trim(php5GetParam($_REQUEST, 'pwd', ''));
	//check email exist
	$query = "SELECT id, email, password, type_id, name FROM #__users WHERE email = '" . mysql_escape_string($email) . "' AND (type_id =1 or type_id =2)";	
	$php5DB->setQuery( $query );		
	if($php5DB->loadObject($user)){
		if (md5($pwd) == $user->password) {
			$php5Session->setVar("admin_id", $user->id);
			$php5Session->setVar("admin_name", $user->name);
			$php5Session->setVar("admin_email", $user->email);
			$php5Session->setVar("admin_type", $user->type_id);			
			php5Redirect(sefBuild($php5WebPath, 'index.php?o=cpanel&m=main', 0));
		} else {
			$msgAlert = $msg_login = 'Username and password do not match or you do not have an account yet.';
			$smarty->assign('msgAlert', $msgAlert);
			//$redirect = sefBuild($php5WebPath, 'index.php?o=main', 0);			
		}
	}	else {
			$msgAlert = $msg_login = 'Username and password do not match or you do not have an account yet.';
			$smarty->assign('msgAlert', $msgAlert);
		//$redirect = sefBuild($php5WebPath, 'index.php?o=main', 0);			
	}
}
function showLoginForm(){	
	global $smarty, $php5RootAdminPath, $module, $php5Session, $php5WebPath, $php5TemplateAdminFile, $php5RootAdminTempalteCPath, $language;	
	$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'main_login'));
	$tpl = sprintf($php5TemplateAdminFile, $language, 'main_login', 'main.tpl');
	if(!is_file($tpl )) {
		die("can not find template");
	}
	//error_reporting(E_ALL);
	//ini_set('display_errors','On');
	$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=main_login', 0));
	$smarty->assign('main', $smarty->fetch($tpl));
}


