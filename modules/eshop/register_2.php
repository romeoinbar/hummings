<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");

$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
if(!$currPage) {
	$currPage = 1;
}
//$smarty->set_compile_path(sprintf($php5TempaltePath, $language, 'eshop'));


//////////////////////////////
switch($task)
{
	default:

		break;
}
///////////////////////////

$do = $php5Session->getVar('register');

if ($do)
{
	include 'includes/random_code.php';
	//include 'includes/send_email.php';	
	include 'includes/generate.php';

	
	
$user = new User();
$user->bindRequest();
if(!$user->user_id) {
	$user->user_id = 0;
}
$user->dob = '0000-00-00';
$user->notify_update = 0;
$old_password = $user->password;
$new_password = md5($user->password);


$user->password = $new_password;
$user->addDB(add_prefix('user'));


$user->updateID('user_id');


$php5Session->setVar('user_id', $user->user_id );
$php5Session->setVar('user_name', $user->name );		  
		  
$user->sold_to_party_no =  '0007' .  sprintf("%06s",$user->user_id);
$user->contact_person_code =  '7' . sprintf("%06s",$user->user_id) . "001";
$user->customer_group =  "02";
$user->updateDB( add_prefix('user'), 'user_id', $user->user_id);	
//	generate_customer_file( $user->user_id, 0);
	
$email = $user->email;
$smarty->assign('email_to', $email);	
$smarty->assign('password', $old_password );	
$tpl =  $php5RootPath.'/templates/en/eshop/member_welcome_email.tpl';
$content =  $smarty->fetch($tpl);		

//email_register_user($email,$old_password, $content);
$smarty->assign('error_message', $user->mysql_error_message() );	
$php5Session->setVar('register',0);
}

if ($env=='PC')
	include $php5RootPath.'/templates/en/eshop/left/left_menu.php'  ;

$smarty->assign('link', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=update&t=outsite', 1));	
$smarty->assign('storepage_shopping',$php5Session->getVar('storepage_shopping'));

$continue_cart = "";
if ($php5Session->getVar('begin_checkout'))
$continue_cart = "<a href='".sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=list&t=outsite', 1)."'><img src='$php5WebPath/images/btn_continue_cart.jpg' border=-></a>";
$smarty->assign('continue_cart',$continue_cart );
if ($env=='PC')
	$tpl =  $php5RootPath.'/templates/en/eshop/user/register2.php';
else
	$tpl =  $php5RootPath.'/templates/en/mobile/register2.tpl';
$main =  $smarty->fetch($tpl);		
$smarty->assign('main', $main );	

$smarty->assign('php5WebPath', $php5WebPath );	
if ($env=='PC')
	$tpl = sprintf($php5TemplateFile, $language, 'eshop', 'col2_left_2.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
$smarty->assign('main',$smarty->fetch($tpl));

//$tpl = sprintf($php5TemplateFile, $language, 'eshop', 'create.tpl');
//$smarty->display($tpl);


if ($php5Session->getVar('url_redirect')!=""){
	header('Location: ' . $php5Session->getVar('url_redirect')  );  
}
return;

