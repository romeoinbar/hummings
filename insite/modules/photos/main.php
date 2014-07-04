<?php
/***************************************************************************
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "articles")) {
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

$smarty->assign('list_url', sefBuild($php5WebPath, 'index.php?o=photos&m=main&t=insite&task=list', 0));	
$smarty->assign('base_url', $php5WebPath  );	
$smarty->assign('add_url', sefBuild($php5WebPath, 'index.php?o=photos&m=main&t=insite&task=add', 0));	
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'photos'));
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'photos', 'toolbar.tpl');
             $main_content .=  $smarty->fetch($tpl);   
			 
$main_content .=   "<div class=content>";			 
//////////////////////////////
switch($task)
{
	case 'add':
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=photos&m=main&t=insite&task=add2', 0));		
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'photos', 'create.tpl');
             $main_content .=  $smarty->fetch($tpl);   
		break;

	case 'add2':
             $photos = new Photos();
			 $photos->bindRequest();
			 $photos->date = php5GMTTime();
			 $photos->sorting=50;			 
			 $photos->addDB($php5Config['table_prefix'].'photos');		
             
			 //$id=mysql_insert_id(); 
			$query = "SELECT photos_id "
			. "\n FROM #__photos "
			. "\n ORDER BY photos_id desc LIMIT 1"
			;
			
			$php5DB->setQuery( $query );
			$id = $php5DB->loadResult();			 
              
			 if ($_FILES['image']['name'])
			 { 
			   $obj = $_FILES['image']; 
               $destination= rename_photos_image($obj, $id) ;				 
               upload($obj, $destination );
			   $photos->image = rename_photos_image_url($obj, $id) ;
			   $photos->photos_id = $id ;			 
			   $photos->updateDB(add_prefix("photos"),"photos_id", $id );				 
			 }
			 
			 
             mainpage($photos->mysql_error_message());
		break;

	case 'edit':
	           
             $photos = new Photos();
			 $photos->loadData( add_prefix("photos"), "photos_id", $_REQUEST['id']);
			 				$photos->dates = @date("d/m/Y", $photos->date);
             $smarty->assign('obj', $photos );				 
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=photos&m=main&t=insite&task=edit2&id='.$photos->photos_id, 0));					
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'photos', 'edit.tpl');
             $main_content .=  $smarty->fetch($tpl);   

		break;

	case 'edit2':
	           
             $photos = new Photos();
			 $photos->loadData( add_prefix("photos"), "photos_id", $_POST['photos_id']);				 
			 $photos->bindRequest();			 
			 $photos->date = php5GMTTime(); 
			 $photos->updateDB(add_prefix("photos"),"photos_id", $_POST['photos_id'] );				 

             if ($_FILES['update_image']['name'])
			 {
               $id = $_POST['photos_id'];
			   $obj = $_FILES['update_image']; 
               $destination= rename_photos_image($obj, $id) ;				 
               upload($obj, $destination );
			   $photos->image = rename_photos_image_url($obj, $id) ;
			   $photos->photos_id = $id ;			 

			   $photos->updateDB(add_prefix("photos"),"photos_id", $id );				 
			 }
			 		  			 
             mainpage($photos->mysql_error_message());

		break;

	case 'delete':
             $photos = new Photos();
			 $photos->loadData( add_prefix("photos"), "photos_id", $_REQUEST['id']);
//			 $photos->showvariables();			  			 
             $smarty->assign('obj', $photos );	
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=photos&m=main&t=insite&task=delete2&id='.$photos->photos_id, 0));					 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'photos', 'delete.tpl');
             $main_content .=  $smarty->fetch($tpl);   

		break;
	case 'delete2':
	           
             $photos = new Photos();	
			 $photos->loadData( add_prefix("photos"), "photos_id", $_POST['photos_id']);


             
			  delete_image($photos->image);				 	 
			 $photos->deleteDB(add_prefix("photos"),"photos_id", $_POST['photos_id'] );	
		 			 
		  			 
              mainpage($photos->mysql_error_message());

		break;

	case 'sorting':
             $photos = new Photos();		         
			 for($i=1; $i<= $_POST['total_record'];$i++)
			 {
			    $photos->loadData( add_prefix("photos"), "photos_id", $_POST['id'.$i]);
 			    $photos->sorting= $_POST['sorting'.$i];						 
			    $photos->updateDB(add_prefix("photos"),"photos_id", $_POST['id'.$i] );									 
			 }		  			 
             mainpage($photos->mysql_error_message());

		break;
														
	default:
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=photos&m=main&t=insite&task=sorting', 0));			
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'photos', 'list_1.tpl');
             $main_content .=  $smarty->fetch($tpl);   
			 	
	         $i = show_list();	
             $smarty->assign('total_record', $i);	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'photos', 'list_3.tpl');
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
  $tpl = sprintf($php5TemplateAdminFile, $language, 'photos', 'after_query.tpl');
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
    	
  $query = "SELECT * FROM #__photos ORDER BY sorting";
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
       $smarty->assign('edit_button', sefBuild($php5WebPath, 'index.php?o=photos&m=main&t=insite&task=edit&id='.$row['photos_id'], 0));		
       $smarty->assign('delete_button', sefBuild($php5WebPath, 'index.php?o=photos&m=main&t=insite&task=delete&id='.$row['photos_id'], 0));				 	      
       $tpl = sprintf($php5TemplateAdminFile, $language, 'photos', 'list_2.tpl');
       $main_content .=  $smarty->fetch($tpl);   
	 }
  }
  return $i;
}


$smarty->assign('main',$main_content);	
return;

