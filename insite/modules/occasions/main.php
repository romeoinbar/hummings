<?php
/***************************************************************************
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
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
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'occasions'));
$smarty->assign('list_url', sefBuild($php5WebPath, 'index.php?o=occasions&m=main&t=insite&task=list', 0));	
$smarty->assign('base_url', $php5WebPath  );	
$smarty->assign('add_url', sefBuild($php5WebPath, 'index.php?o=occasions&m=main&t=insite&task=add', 0));	

	         $tpl = sprintf($php5TemplateAdminFile, $language, 'occasions', 'toolbar.tpl');
             $main_content .=  $smarty->fetch($tpl);   
			 
$main_content .=   "<div class=content>";			 
//////////////////////////////
switch($task)
{
	case 'add':
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=occasions&m=main&t=insite&task=add2', 0));		
             $smarty->assign('select_category', gen_occasions_option(0, 0)  );	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'occasions', 'create.tpl');
             $main_content .=  $smarty->fetch($tpl);   
		break;

	case 'add2':
             $occasions = new Occasions();
			 $occasions->bindRequest();
			 $occasions->sorting=50;			 
			 $occasions->addDB($php5Config['table_prefix'].'occasions');		
             
			 $id=mysql_insert_id(); 
              
			 if ($_FILES['image']['name'])
			 { 
			   $obj = $_FILES['image']; 
               $destination= rename_occasions_image($obj, $id) ;				 
               upload($obj, $destination );
			   $occasions->image = rename_occasions_image_url($obj, $id) ;
			   $occasions->occasions_id = $id ;			 

			   $occasions->updateDB(add_prefix("occasions"),"occasions_id", $id );				 
			 }
			 
             $smarty->assign('message', $occasions->mysql_error_message() );				 
             mainpage($occasions->mysql_error_message());
		break;

	case 'edit':
	           
             $occasions = new Occasions();
			 $occasions->loadData( add_prefix("occasions"), "occasions_id", $_REQUEST['id']);		  			 
             $smarty->assign('obj', $occasions );	
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=occasions&m=main&t=insite&task=edit2&id='.$occasions->occasions_id, 0));					 
             $smarty->assign('select_category', gen_occasions_option($occasions->occasions_id, $occasions->parent_id)  );				 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'occasions', 'edit.tpl');
             $main_content .=  $smarty->fetch($tpl);   

		break;

	case 'edit2':
	           
             $occasions = new Occasions();
			 $occasions->loadData( add_prefix("occasions"), "occasions_id", $_POST['occasions_id']);				 
			 $occasions->bindRequest();			 
			 $occasions->updateDB(add_prefix("occasions"),"occasions_id", $_POST['occasions_id'] );				 

             if ($_FILES['update_image']['name'])
			 {
               $id = $_POST['occasions_id'];
			   $obj = $_FILES['update_image']; 
               $destination= rename_occasions_image($obj, $id) ;				 
               upload($obj, $destination );
			   $occasions->image = rename_occasions_image_url($obj, $id) ;
			   $occasions->occasions_id = $id ;			 

			   $occasions->updateDB(add_prefix("occasions"),"occasions_id", $id );				 
			 }
			 		  			 
             mainpage($occasions->mysql_error_message());

		break;

	case 'delete':
             $occasions = new Occasions();
			 $occasions->loadData( add_prefix("occasions"), "occasions_id", $_REQUEST['id']);
//			 $occasions->showvariables();			  			 
             $smarty->assign('obj', $occasions );	
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=occasions&m=main&t=insite&task=delete2&id='.$occasions->occasions_id, 0));							 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'occasions', 'delete.tpl');
             $main_content .=  $smarty->fetch($tpl);   

		break;
	case 'delete2':
	           
             $occasions = new Occasions();	
			 $occasions->loadData( add_prefix("occasions"), "occasions_id", $id);


             
			  delete_image($occasions->image);				 	 
			 $occasions->deleteDB(add_prefix("occasions"),"occasions_id", $id );	
		 			 
		  			 
             mainpage($occasions->mysql_error_message());

		break;

	case 'sorting':
             $occasions = new Occasions();		         
			 for($i=1; $i<= $_POST['total_record'];$i++)
			 {
			    $occasions->loadData( add_prefix("occasions"), "occasions_id", $_POST['id'.$i]);

 			    $occasions->sorting= $_POST['sorting'.$i];			
//				$occasions->showvariables();					 
			    $occasions->updateDB(add_prefix("occasions"),"occasions_id", $_POST['id'.$i] );									 
			 }		  			 
             mainpage($occasions->mysql_error_message());

		break;
														
	default:
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=occasions&m=main&t=insite&task=sorting', 0));		
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'occasions', 'list_1.tpl');
             $main_content .=  $smarty->fetch($tpl);   
			 	
	         $i = show_product_categories();	
             $smarty->assign('total_record', $i);	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'occasions', 'list_3.tpl');
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

function show_child($occasions_id , $i, $prefix)
{
  global $php5DB_en;
  global $smarty;
  global $php5TemplateAdminFile;
  global $language;
  global $php5WebPath;
  global $main_content;
  
  $query = "SELECT * FROM #__occasions WHERE parent_id=$occasions_id ORDER BY sorting";
  $php5DB_en->setQuery( $query );
 

  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
	   $i++; 
       $smarty->assign('prefix', $prefix);	   
       $smarty->assign('row', $row);
       $smarty->assign('i', $i);
       $smarty->assign('edit_button', sefBuild($php5WebPath, 'index.php?o=occasions&m=main&t=insite&task=edit&id='.$row['occasions_id'], 0));
       $smarty->assign('delete_button', sefBuild($php5WebPath, 'index.php?o=occasions&m=main&t=insite&task=delete&id='.$row['occasions_id'], 0));		   	 	   
       $tpl = sprintf($php5TemplateAdminFile, $language, 'occasions', 'list_2.tpl');
       $main_content .=  $smarty->fetch($tpl);  
	   $i = show_child($row['occasions_id'] , $i , '--' . $prefix) ;
	 }
  return $i; 	 
  }
  else
  return $i;  	
}

function show_product_categories()
{
  global $main_content;	
  global $php5DB_en;
  global $smarty;
  global $php5TemplateAdminFile;
  global $language;
  global $php5WebPath;
    	
  $query = "SELECT * FROM #__occasions WHERE parent_id=0 ORDER BY sorting";
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
	   
       $smarty->assign('edit_button', sefBuild($php5WebPath, 'index.php?o=occasions&m=main&t=insite&task=edit&id='.$row['occasions_id'], 0));
       $smarty->assign('delete_button', sefBuild($php5WebPath, 'index.php?o=occasions&m=main&t=insite&task=delete&id='.$row['occasions_id'], 0));	   		      
       $tpl = sprintf($php5TemplateAdminFile, $language, 'occasions', 'list_2.tpl');
       $main_content .=  $smarty->fetch($tpl);   
	   $i = show_child($row['occasions_id'] , $i, '--') ;	   
	 }
  }
  return $i;
}


$smarty->assign('main',$main_content);	
return;

