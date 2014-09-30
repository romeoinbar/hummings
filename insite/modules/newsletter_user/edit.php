<?php
/***************************************************************************
*                                register.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();
require_once($php5RootPath . "/classes/newsletter_user.class.php");
$row = new NewsletterUser($php5DB_en);

$task 		= php5GetParam($_REQUEST, 'task', '');
$id 		= php5GetParam($_REQUEST, 'id', '');
$row->load($id);
if(!$row->email) {
return;
}
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'news_category'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'newsletter_user', 'edit.tpl');
if(!is_file($tpl )) {
die("can not find template");
}
//check task
$msg = '';
$noerr = 1;
switch($task)
{
case 'update':
$row->bind( $_POST );
$row->subscribe 		= php5GetParam($_REQUEST, 'subscribe', '2');
$row->subscribe_by_phone 		= php5GetParam($_REQUEST, 'subscribe_by_phone', '2');
if($noerr) {
$row->date = php5GMTTime();
$row->phone_date = php5GMTTime();
if (!$row->store()) {
	$msg = $msgAlert = "Error!!! Please try again!!!";
} else {
			$n1 = 0;
			if($row->subscribe == 1) {
				$n1 =  1;
			}
			$n2 = 0;
			if($row->subscribe_by_phone == 1) {
				$n2 =  1;
			}				
			//////////////////////////////////////////
			$query = "SELECT user_id FROM #__user WHERE email='". mysql_real_escape_string($row->email)."'";
			$php5DB->setQuery( $query );
			$idUser = '';
			$idUser = intval($php5DB->loadResult());
			if($idUser > 0) {
				$sql = "UPDATE #__user SET name = '".$row->name."', newsletter_by_phone ='$n2',phone_date='".php5GMTTime()."', notify_update='$n1', email_date='".php5GMTTime()."' WHERE user_id = '$idUser' ";
				$php5DB->setQuery( $sql );
				$php5DB->query( );
			}	
$msg = $msgAlert = $lang['_UPDATE_MSG_'];
$redirect = sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main', 0);
}
}
break;
default:
break;

}
if($msg) {
$smarty->assign('msg', $msg);
}
$user_status = $define->NEWSLETTER_USER_TYPE();
$user_type = $define->NEWSLETTER_TYPE();

//assign
$smarty->assign('id', $row->id);
$smarty->assign('name', $row->name);
$smarty->assign('email', $row->email);
$smarty->assign('date', $row->date);
$smarty->assign('type', @$user_type[$row->type]);
$smarty->assign('ip', $row->ip);
$smarty->assign('status', @$user_status[$row->subscribe]);
$smarty->assign('subscribe', $row->subscribe);
$smarty->assign('subscribe_by_phone', $row->subscribe_by_phone);
if ($row->date) {
$row->date = date('m/d/Y', $row->date);
}
$smarty->assign('date', $row->date);
if ($row->phone_date) {
$row->phone_date = date('m/d/Y', $row->phone_date);
}
$smarty->assign('phone_date', $row->phone_date);
$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=edit&task=update&id='.$id, 0));
$smarty->assign('main', $smarty->fetch($tpl));
//$smarty->display($tpl);

return;
