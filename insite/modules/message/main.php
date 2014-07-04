<?php
/***************************************************************************
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "message")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	
$main_content = ""; 
include_once "$php5RootAdminPath/modules/header.php"; 
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
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'message'));

$smarty->assign('list_url', sefBuild($php5WebPath, 'index.php?o=message&m=main&t=insite&task=list', 0));	
$smarty->assign('base_url', $php5WebPath  );	
$smarty->assign('add_url', sefBuild($php5WebPath, 'index.php?o=message&m=main&t=insite&task=add', 0));	
$tpl = sprintf($php5TemplateAdminFile, $language, 'message', 'toolbar.tpl');
$main_content .=  $smarty->fetch($tpl);   
			 
$smarty->assign('base_url', $php5WebPath  );	


			 			 
$main_content .=   "<div class=content>";			 
//////////////////////////////
switch($task)
{
	case 'add':
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=message&m=main&t=insite&task=add2', 0));	
             $smarty->assign('select_message', gen_select_message('')  );	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'message', 'create.tpl');
             $main_content .=  $smarty->fetch($tpl);   
		break;

	case 'add2':
             $message = new Message();
			 $message->bindRequest();
			 $message->sorting=50;				 
			 $message->addDB($php5Config['table_prefix'].'message');		
             
             $smarty->assign('message', $message->mysql_error_message() );				 
             mainpage();
		break;

	case 'edit':
      
             $message = new Message();

             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=message&m=main&t=insite&task=edit2', 0));	 			
			 $message->loadData( add_prefix("message"), "message_id", $_REQUEST['id']);		  	
             $smarty->assign('select_message', gen_select_message($message->parent_id)  );				 		
             $smarty->assign('obj', $message );				 			 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'message', 'edit.tpl');
             $main_content .=  $smarty->fetch($tpl);   

		break;

	case 'edit2':
             $message = new Message();
			 $message->loadData( add_prefix("message"), "message_id", $_POST['message_id']);				 
			 $message->bindRequest();			 
			 $message->updateDB(add_prefix("message"),"message_id", $_POST['message_id'] );				 


			 		  			 
             mainpage();

		break;

	case 'delete':
             $message = new Message();
			 $message->loadData( add_prefix("message"), "message_id", $_REQUEST['id']);
//			 $message->showvariables();			  			 
             $smarty->assign('obj', $message );	
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=message&m=main&t=insite&task=delete2', 0));				 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'message', 'delete.tpl');
             $main_content .=  $smarty->fetch($tpl);   

		break;
	case 'delete2':
	           
             $message = new Message();	
			 $message->loadData( add_prefix("message"), "message_id", $_POST['message_id']);						 	 
			 $message->deleteDB(add_prefix("message"),"message_id", $_POST['message_id'] );	 			 
		  			 
             mainpage();

		break;

	case 'sorting':
             $message = new Message();		         
			 for($i=1; $i<= $_POST['total_record'];$i++)
			 {
			    $message->loadData( add_prefix("message"), "message_id", $_POST['id'.$i]);

 			    $message->sorting= $_POST['sorting'.$i];			
//				$message->showvariables();					 
			    $message->updateDB(add_prefix("message"),"message_id", $_POST['id'.$i] );									 
			 }		  			 
             mainpage();

		break;
														
	default:

			 	
	        show_message();	

}
$main_content .=   "</div>";


function mainpage()
{    
global $main_content;
       global $php5TemplateAdminFile;
	   global $language;
	   global $smarty;
       $tpl = sprintf($php5TemplateAdminFile, $language, 'message', 'after_query.tpl');
       $main_content .=  $smarty->fetch($tpl);   
}


function show_message()
{
  global $php5DB_en;
  global $smarty;
  global $php5TemplateAdminFile;
  global $language;
  global $php5WebPath;
  global $main_content;

             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=message&m=main&t=insite&task=sorting', 0));	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'message', 'list_1.tpl');
             $main_content .=  $smarty->fetch($tpl);   
			 
			      	
  $query = "SELECT * FROM #__message WHERE parent_id=0 ORDER BY sorting";
  $php5DB_en->setQuery( $query );
 
  $i =0;
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
	   $i++; 

   	   
       $smarty->assign('row', $row);
       $smarty->assign('i', $i);	 
       $smarty->assign('edit_link', sefBuild($php5WebPath, 'index.php?o=message&m=main&t=insite&task=edit&id='.$row['message_id'], 0));	
       $smarty->assign('delete_link', sefBuild($php5WebPath, 'index.php?o=message&m=main&t=insite&task=delete&id='.$row['message_id'], 0));	     
       $tpl = sprintf($php5TemplateAdminFile, $language, 'message', 'list_2.tpl');
       $main_content .=  $smarty->fetch($tpl);  
	   

         $query = "SELECT * FROM #__message WHERE parent_id=".$row['message_id']." ORDER BY sorting";
         $php5DB_en->setQuery( $query );
         if ($rows2 = $php5DB_en->loadAssocList())
         {
	        foreach ($rows2 as $row2)
	        { 
	          $i++;    	   
			  $row2['message'] = "<div style='padding-left:25px;'>" . $row2['message'] . "</div>";
              $smarty->assign('row', $row2);
              $smarty->assign('i', $i);	 
              $smarty->assign('edit_link', sefBuild($php5WebPath, 'index.php?o=message&m=main&t=insite&task=edit&id='.$row2['message_id'], 0));	
              $smarty->assign('delete_link', sefBuild($php5WebPath, 'index.php?o=message&m=main&t=insite&task=delete&id='.$row2['message_id'], 0));	     
              $tpl = sprintf($php5TemplateAdminFile, $language, 'message', 'list_2.tpl');
              $main_content .=  $smarty->fetch($tpl);  
	    
	    
	        }
         }
  	    
	 }
  }
  

             $smarty->assign('total_record', $i);	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'message', 'list_3.tpl');
             $main_content .=  $smarty->fetch($tpl);   
			   

}



        $smarty->assign('main',$main_content);		
return;

