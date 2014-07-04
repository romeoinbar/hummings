<?php
/***************************************************************************
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/

 	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "add_users")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	
$main_content = ""; 

include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/images.class.php"; 
include_once "$php5RootPath/includes/select_input.php"; 


defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();
//get
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);


if(!$currPage) {
	$currPage = 1;
}

$smarty->assign('list_url', sefBuild($php5WebPath, 'index.php?o=user&m=main&t=insite&task=list', 0));	
$smarty->assign('base_url', $php5WebPath  );	
$smarty->assign('add_url', sefBuild($php5WebPath, 'index.php?o=user&m=main&t=insite&task=add', 0));	
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'user'));
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'user', 'toolbar.tpl');
            $main_content .=  $smarty->fetch($tpl);  
			 
$main_content .= "<div class=content>";			 
//////////////////////////////
switch($task)
{
	case 'add':
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=user&m=main&t=insite&task=add2', 0));	
             $smarty->assign('gender', gen_select(add_prefix('gender'), '', 'gender', 'id', 'gender', '') );	
             $smarty->assign('country', gen_select(add_prefix('country'), 'country', 'country', 'country_code', 'country', 'SG') );			 			 	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'user', 'create.tpl');
            $main_content .=  $smarty->fetch($tpl);  
		break;

	case 'add2':
             $user = new User();
			 $user->bindRequest();	
			 $user->password = md5($user->password);	 
			 $user->addDB($php5Config['table_prefix'].'user');		
             mainpage($user->mysql_error_message());
		break;

	case 'edit':
	           
             $user = new User();
			 $user->loadData( add_prefix("user"), "user_id", $_REQUEST['id']);		  			 
             $smarty->assign('obj', $user );	
             $smarty->assign('gender', gen_select(add_prefix('gender'), '', 'gender', 'id', 'gender', $user->gender) );	
             $smarty->assign('country', gen_select(add_prefix('country'), 'country', 'country', 'country_code', 'country', $user->country) );					 			 
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=user&m=main&t=insite&task=edit2&id='.$user->user_id, 0));					
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'user', 'edit.tpl');
            $main_content .=  $smarty->fetch($tpl);  

		break;

	case 'edit2':
	           
             $user = new User();
			 $user->loadData( add_prefix("user"), "user_id", $_POST['user_id']);				 
			 $user->bindRequest();		
			 if (($_POST['password2']) && ($_POST['password2']!= '') )
			 $user->password = md5($_POST['password2']);	  
			 $user->updateDB(add_prefix("user"),"user_id", $_POST['user_id'] );				 	 
             mainpage($user->mysql_error_message());

		break;

	case 'delete':
             $user = new User();
			 $user->loadData( add_prefix("user"), "user_id", $_REQUEST['id']);
//			 $user->showvariables();			  			 
             $smarty->assign('obj', $user );	
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=user&m=main&t=insite&task=delete2&id='.$user->user_id, 0));					 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'user', 'delete.tpl');
            $main_content .=  $smarty->fetch($tpl);  

		break;
	case 'delete2':
             $user = new User();	
			 $user->loadData( add_prefix("user"), "user_id", $_POST['user_id']);
			 	 
			 $user->deleteDB(add_prefix("user"),"user_id", $_POST['user_id'] );	
              mainpage($user->mysql_error_message());

		break;

	case 'sorting':
             $user = new User();		         
			 for($i=1; $i<= $_POST['total_record'];$i++)
			 {
			    $user->loadData( add_prefix("user"), "user_id", $_POST['id'.$i]);
 			    $user->sorting= $_POST['sorting'.$i];						 
			    $user->updateDB(add_prefix("user"),"user_id", $_POST['id'.$i] );									 
			 }		  			 
             mainpage($user->mysql_error_message());

		break;
														
	default:
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=user&m=main&t=insite&task=sorting', 0));			
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'user', 'list_1.tpl');
            $main_content .=  $smarty->fetch($tpl);  
 	
	         $i = show_list();	
             $smarty->assign('total_record', $i);	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'user', 'list_3.tpl');
            $main_content .=  $smarty->fetch($tpl);  
}
$main_content .= "</div>";


function mainpage($message)
{
  global $main_content;	
  global $smarty;	
  global $php5TemplateAdminFile;
  global $language;
 
    
  $smarty->assign('message', $message );	
  $tpl = sprintf($php5TemplateAdminFile, $language, 'user', 'after_query.tpl');
 $main_content .=  $smarty->fetch($tpl);  
}

function show_list()
{
  global $main_content;
  global $php5DB_en;
  global $smarty;
  global $php5TemplateAdminFile;
  global $language;
  global $php5WebPath;

    	
  $query = "SELECT * FROM #__user ";
  $php5DB_en->setQuery( $query );
 
 $user = new User();
  $i =0;
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
	   $i++; 

/**	   
	   $user->loadData(add_prefix('user'),'user_id' ,$row['user_id']);	   
	   $user->sold_to_party_no =  '0007' .  sprintf("%06s",$user->user_id);
	   $user->updateDB(add_prefix('user'),'user_id' ,$row['user_id']);	 
**/	   	   
       $smarty->assign('prefix', '');	   	   
       $smarty->assign('row', $row);
       $smarty->assign('i', $i);	
       $smarty->assign('edit_button', sefBuild($php5WebPath, 'index.php?o=user&m=main&t=insite&task=edit&id='.$row['user_id'], 0));		
       $smarty->assign('delete_button', sefBuild($php5WebPath, 'index.php?o=user&m=main&t=insite&task=delete&id='.$row['user_id'], 0));				 	      
       $tpl = sprintf($php5TemplateAdminFile, $language, 'user', 'list_2.tpl');
      $main_content .=  $smarty->fetch($tpl);  
	 }
  }
  return $i;
}
 

        $smarty->assign('main',$main_content);		
return;

