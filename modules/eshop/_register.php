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

//$smarty->set_compile_path(sprintf($php5TempaltePath, $language, 'eshop'));
$user_id = $php5Session->getVar('user_id');
if ($user_id)
 header('Location: ' .  sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account' , 1)	 );	   
   include_once 'classes/tables.class.php';	
//////////////////////////////
switch($task)
{
    case 'reset_password':
	include 'includes/random_code.php';
	include 'includes/send_email.php';	
 
	
    $email = $_REQUEST['email'];
	

	  
    $query = "SELECT * FROM #__user WHERE email='$email'  ";
    $php5DB_en->setQuery( $query );  
    $rows = $php5DB_en->loadAssocList();
    if (count($rows)>0)
    {
	  	 $row= $rows['0'];	 
		 $new_password = createRandomPassword(6);
		 $user = new User();
		 $user->loadData(add_prefix('user'), 'email', $email );
		 $user_id = $user->user_id;
		 $user->password = md5($new_password);
		 $user->updateDB(add_prefix('user'), 'user_id', $user_id );		 
         email_reset_password($email, $new_password);
		 
         $smarty->assign('message', "<div class='message'>Password has been reset. Please check your email.</div><br/>" );  	
		 
    }
	else
	{
         $smarty->assign('message', "<div class='message'>Invalid Email or Date of Birth.</div><br/>" );  	
	}

	default:

		break;
}

$php5Session->setVar('register', 1);
///////////////////////////

	if ($task == "wrong")
         $smarty->assign('message', "<div class='message'>Invalid Email or Password.</div><br/>" );  	
  
include 'includes/select_input.php';

$smarty->assign('php5WebPath', $php5WebPath );	

include $php5RootPath.'/templates/en/eshop/left/left_menu.php';


$smarty->assign('country', gen_select(add_prefix('country'), 'country', 'country', 'country_code', 'country', 'SG') );	
$smarty->assign('gender', gen_select(add_prefix('gender'), 'gender', 'gender', 'gender', 'gender', 0) );	
$smarty->assign('title', gen_select(add_prefix('title'), 'title', 'title', 'title', 'title', ' ') );	
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=eshop&m=register_2&t=outsite', 1));	
$smarty->assign('url_login', sefBuild($php5WebPath, 'index.php?o=eshop&m=login&t=outsite', 1));	
$smarty->assign('url_reset_password', sefBuild($php5WebPath, 'index.php?o=eshop&m=register&task=reset_password&t=outsite', 1));	


          $smarty->assign('day', gen_select(add_prefix('day'), 'day', 'day', 'day', 'day', '' ) );
          $smarty->assign('month', gen_select(add_prefix('month'), 'month', 'month', 'month', 'en', '' ) );	
		  
		  
$tpl =  $php5RootPath.'/templates/en/eshop/user/register.php';
$main =  $smarty->fetch($tpl);		
$smarty->assign('main', $main );	
		 
$tpl = sprintf($php5TemplateFile, $language, 'eshop', 'full_page.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}

$smarty->assign('main',$smarty->fetch($tpl));

//$tpl = sprintf($php5TemplateFile, $language, 'eshop', 'create.tpl');
//$smarty->display($tpl);

return;

