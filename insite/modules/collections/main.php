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
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'collections'));
$smarty->assign('list_url', sefBuild($php5WebPath, 'index.php?o=collections&m=main&t=insite&task=list', 0));	
$smarty->assign('base_url', $php5WebPath  );	
$smarty->assign('add_url', sefBuild($php5WebPath, 'index.php?o=collections&m=main&t=insite&task=add', 0));	

	         $tpl = sprintf($php5TemplateAdminFile, $language, 'collections', 'toolbar.tpl');
             $main_content .=  $smarty->fetch($tpl);   
			 
$main_content .=   "<div class=content>";			 
//////////////////////////////
switch($task)
{
	case 'add':
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=collections&m=main&t=insite&task=add2', 0));		
             $smarty->assign('select_category', gen_collections_option(0, 0)  );	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'collections', 'create.tpl');
             $main_content .=  $smarty->fetch($tpl);   
		break;

	case 'add2':
             $collections = new Collections();
			 $collections->bindRequest();
			 $collections->sorting=50;			 
             $collections->showvariables();
             
			 $collections->addDB($php5Config['table_prefix'].'collections');		
             
			 $id=mysql_insert_id(); 

			 if ($_FILES['image']['name'])
			 { 
			   $obj = $_FILES['image']; 
               $destination= rename_collections_image($obj, $id) ;				 
               upload($obj, $destination );
			   $collections->image = rename_collections_image_url($obj, $id) ;
			   $collections->collections_id = $id ;			 

			   $collections->updateDB(add_prefix("collections"),"collections_id", $id );				 
		   
			 }
			 
             $smarty->assign('message', $collections->mysql_error_message() );				 
             mainpage($collections->mysql_error_message());
		break;

	case 'edit':
	           
             $collections = new Collections();
			 $collections->loadData( add_prefix("collections"), "collections_id", $_REQUEST['id']);		  			 
             $smarty->assign('obj', $collections );	
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=collections&m=main&t=insite&task=edit2&id='.$collections->collections_id, 0));					 
             $smarty->assign('select_category', gen_collections_option($collections->collections_id, $collections->parent_id)  );				 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'collections', 'edit.tpl');
             $main_content .=  $smarty->fetch($tpl);   

		break;

	case 'edit2':
	           
             $collections = new Collections();
			 $collections->loadData( add_prefix("collections"), "collections_id", $_POST['collections_id']);				 
			 $collections->bindRequest();			 
			 $collections->updateDB(add_prefix("collections"),"collections_id", $_POST['collections_id'] );				 

             if ($_FILES['update_image']['name'])
			 {
               $id = $_POST['collections_id'];
			   $obj = $_FILES['update_image']; 
               $destination= rename_collections_image($obj, $id) ;				 
               upload($obj, $destination );
			   $collections->image = rename_collections_image_url($obj, $id) ;
			   $collections->collections_id = $id ;			 

			   $collections->updateDB(add_prefix("collections"),"collections_id", $id );				 
			 }
			 		  			 
             mainpage($collections->mysql_error_message());

		break;

	case 'delete':
             $collections = new Collections();
			 $collections->loadData( add_prefix("collections"), "collections_id", $_REQUEST['id']);
//			 $collections->showvariables(); 			 
             $smarty->assign('obj', $collections );	
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=collections&m=main&t=insite&task=delete2&id='.$_REQUEST['id'], 0));							 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'collections', 'delete.tpl');
             $main_content .=  $smarty->fetch($tpl);   

		break;
	case 'delete2':
	           
             $collections = new Collections();	
			 $collections->loadData( add_prefix("collections"), "collections_id", $id );


             
			  delete_image($collections->image);				 	 
			 $collections->deleteDB(add_prefix("collections"),"collections_id", $id );	
		 			 
		  			 
             mainpage($collections->mysql_error_message());

		break;

	case 'sorting':
             $collections = new Collections();		         
			 for($i=1; $i<= $_POST['total_record'];$i++)
			 {
			    $collections->loadData( add_prefix("collections"), "collections_id", $_POST['id'.$i]);

 			    $collections->sorting= $_POST['sorting'.$i];			
//				$collections->showvariables();					 
			    $collections->updateDB(add_prefix("collections"),"collections_id", $_POST['id'.$i] );									 
			 }		  			 
             mainpage($collections->mysql_error_message());

		break;
														
	default:
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=collections&m=main&t=insite&task=sorting', 0));		
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'collections', 'list_1.tpl');
             $main_content .=  $smarty->fetch($tpl);   
			 	
	         $i = show_product_categories();	
             $smarty->assign('total_record', $i);	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'collections', 'list_3.tpl');
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

function show_child($collections_id , $i, $prefix)
{
  global $php5DB_en;
  global $smarty;
  global $php5TemplateAdminFile;
  global $language;
  global $php5WebPath;
  global $main_content;
  
  $query = "SELECT * FROM #__collections WHERE parent_id=$collections_id ORDER BY sorting";
  $php5DB_en->setQuery( $query );
 

  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
	   $i++; 
       $smarty->assign('prefix', $prefix);	   
       $smarty->assign('row', $row);
       $smarty->assign('i', $i);
       $smarty->assign('edit_button', sefBuild($php5WebPath, 'index.php?o=collections&m=main&t=insite&task=edit&id='.$row['collections_id'], 0));
       $smarty->assign('delete_button', sefBuild($php5WebPath, 'index.php?o=collections&m=main&t=insite&task=delete&id='.$row['collections_id'], 0));		   	 	   
       $tpl = sprintf($php5TemplateAdminFile, $language, 'collections', 'list_2.tpl');
       $main_content .=  $smarty->fetch($tpl);  
	   $i = show_child($row['collections_id'] , $i , '--' . $prefix) ;
	 }
  return $i; 	 
  }
  else
  return $i;  	
}

function show_product_categories()
{
  global $php5DB_en;
  global $smarty;
  global $php5TemplateAdminFile;
  global $language;
  global $php5WebPath;
  global $main_content;
    	
  $query = "SELECT * FROM #__collections WHERE parent_id=0 ORDER BY sorting";
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
	   
       $smarty->assign('edit_button', sefBuild($php5WebPath, 'index.php?o=collections&m=main&t=insite&task=edit&id='.$row['collections_id'], 0));
       $smarty->assign('delete_button', sefBuild($php5WebPath, 'index.php?o=collections&m=main&t=insite&task=delete&id='.$row['collections_id'], 0));	   		      
       $tpl = sprintf($php5TemplateAdminFile, $language, 'collections', 'list_2.tpl');
       $main_content .=  $smarty->fetch($tpl);   
	   $i = show_child($row['collections_id'] , $i, '--') ;	   
	 }
  }
  return $i;
}


$smarty->assign('main',$main_content);	
return;

