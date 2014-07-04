<?php
/***************************************************************************
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "banner")) {
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

$smarty->assign('list_url', sefBuild($php5WebPath, 'index.php?o=banner&m=main&t=insite&task=list', 0));	
$smarty->assign('base_url', $php5WebPath  );	
$smarty->assign('add_url', sefBuild($php5WebPath, 'index.php?o=banner&m=main&t=insite&task=add', 0));	
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'banner'));
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'banner', 'toolbar.tpl');
             $main_content .=  $smarty->fetch($tpl);   
			 
$main_content .=   "<div class=content>";			 
//////////////////////////////
switch($task)
{
	case 'add':
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=banner&m=main&t=insite&task=add2', 0));		
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'banner', 'create.tpl');
             $main_content .=  $smarty->fetch($tpl);   
		break;

	case 'add2':
             $banner = new Banner();
			 $banner->bindRequest();
			 $banner->sorting=50;			 
			 $banner->addDB(add_prefix('banner'));		
             
			 $id=mysql_insert_id($dblink); 
              
			 if ($_FILES['image']['name'])
			 { 
			   $obj = $_FILES['image']; 
               $destination= rename_banner_image($obj, $id) ;				 
               upload($obj, $destination );
			   $banner->image = rename_banner_image_url($obj, $id) ;
			   $banner->banner_id = $id ;			 
			   $banner->updateDB(add_prefix("banner"),"banner_id", $id );				 
			 }
			 
			 
             mainpage($banner->mysql_error_message());
		break;

	case 'edit':
	           
             $banner = new Banner();
			 $banner->loadData( add_prefix("banner"), "banner_id", $_REQUEST['id']);		  			 
             $smarty->assign('obj', $banner );				 
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=banner&m=main&t=insite&task=edit2&id='.$banner->banner_id, 0));					
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'banner', 'edit.tpl');
             $main_content .=  $smarty->fetch($tpl);   

		break;

	case 'edit2':
	           
             $banner = new Banner();
			 $banner->loadData( add_prefix("banner"), "banner_id", $_POST['banner_id']);				 
			 $banner->bindRequest();			  
			 $banner->updateDB(add_prefix("banner"),"banner_id", $_POST['banner_id'] );				 

             if ($_FILES['update_image']['name'])
			 {
               $id = $_POST['banner_id'];
			   $obj = $_FILES['update_image']; 
               $destination= rename_banner_image($obj, $id) ;				 
               upload($obj, $destination );
			   $banner->image = rename_banner_image_url($obj, $id) ;
			   $banner->banner_id = $id ;			 

			   $banner->updateDB(add_prefix("banner"),"banner_id", $id );				 
			 }
			 		  			 
             mainpage($banner->mysql_error_message());

		break;

	case 'delete':
             $banner = new Banner();
			 $banner->loadData( add_prefix("banner"), "banner_id", $_REQUEST['id']);
//			 $banner->showvariables();			  			 
             $smarty->assign('obj', $banner );	
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=banner&m=main&t=insite&task=delete2&id='.$banner->banner_id, 0));					 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'banner', 'delete.tpl');
             $main_content .=  $smarty->fetch($tpl);   

		break;
	case 'delete2':
	           
             $banner = new Banner();	
			 $banner->loadData( add_prefix("banner"), "banner_id", $_POST['banner_id']);


             
			  delete_image($banner->image);				 	 
			 $banner->deleteDB(add_prefix("banner"),"banner_id", $_POST['banner_id'] );	
		 			 
		  			 
              mainpage($banner->mysql_error_message());

		break;

	case 'sorting':
             $banner = new Banner();		         
			 for($i=1; $i<= $_POST['total_record'];$i++)
			 {
			    $banner->loadData( add_prefix("banner"), "banner_id", $_POST['id'.$i]);
 			    $banner->sorting= $_POST['sorting'.$i];						 
			    $banner->updateDB(add_prefix("banner"),"banner_id", $_POST['id'.$i] );									 
			 }		  			 
             mainpage($banner->mysql_error_message());

		break;
														
	default:
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=banner&m=main&t=insite&task=sorting', 0));			
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'banner', 'list_1.tpl');
             $main_content .=  $smarty->fetch($tpl);   
			 	
	         $i = show_list();	
             $smarty->assign('total_record', $i);	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'banner', 'list_3.tpl');
             $main_content .=  $smarty->fetch($tpl);   
}
$main_content .=   "</div>";


function mainpage($message)
{
  global $smarty;	
  global $php5TemplateAdminFile;
  global $language;
  global $main_content; 
    
  $smarty->assign('message', $message );	
  $tpl = sprintf($php5TemplateAdminFile, $language, 'banner', 'after_query.tpl');
  $main_content .=  $smarty->fetch($tpl);   
}

function show_list()
{
  global $php5DB_en;
  global $smarty;
  global $php5TemplateAdminFile;
  global $language;
  global $php5WebPath;
  global $main_content;
    	
  $query = "SELECT * FROM #__banner ORDER BY sorting";
  $php5DB_en->setQuery( $query );
 
  $i =0;
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
	   $i++; 
       $smarty->assign('prefix', '');	   	   
       $smarty->assign('row', $row);
       $smarty->assign('i', $i);	
       $smarty->assign('edit_button', sefBuild($php5WebPath, 'index.php?o=banner&m=main&t=insite&task=edit&id='.$row['banner_id'], 0));		
       $smarty->assign('delete_button', sefBuild($php5WebPath, 'index.php?o=banner&m=main&t=insite&task=delete&id='.$row['banner_id'], 0));				 	      
       $tpl = sprintf($php5TemplateAdminFile, $language, 'banner', 'list_2.tpl');
       $main_content .=  $smarty->fetch($tpl);   
	 }
  }
  return $i;
}


$smarty->assign('main',$main_content);	
return;

