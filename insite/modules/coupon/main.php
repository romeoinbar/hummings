<?php
/***************************************************************************
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "coupon")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	

 $main_content = ""; 
include_once "$php5RootAdminPath/modules/header.php"; 
include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/images.class.php"; 
include_once "$php5RootPath/includes/select_input.php"; 
include_once "$php5RootPath/classes/page.class.php"; 
$page_session_name = "coupon_code";

defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();
//get
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);


if(!$currPage) {
	$currPage = 1;
}

$smarty->assign('list_url', sefBuild($php5WebPath, 'index.php?o=coupon&m=main&t=insite&task=list', 0));	
$smarty->assign('base_url', $php5WebPath  );	
$smarty->assign('add_url', sefBuild($php5WebPath, 'index.php?o=coupon&m=main&t=insite&task=add', 0));	
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'coupon'));
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'coupon', 'toolbar.tpl');
             $main_content .=  $smarty->fetch($tpl);   
			 
$main_content .=   "<div class=content>";			 
//////////////////////////////
switch($task)
{
	case 'add':
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=coupon&m=main&t=insite&task=add2', 0));		
             $smarty->assign('s_discount_type', gen_select(add_prefix('discount_type'), 'title', 'discount_type', 'discount_type_id','title', 1) );		
				 			 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'coupon', 'create.tpl');
             $main_content .=  $smarty->fetch($tpl);   
		break;

	case 'add2':
	include 'includes/random_code.php';	
             $coupon = new coupon();
			 $coupon->bindRequest();
			 $coupon->coupon_code = "";
			 
			 while ($coupon->coupon_code == "")
			 {
			    $coupon->coupon_code = createRandomPassword(10);
				$query = "SELECT COUNT(*) FROM #__coupon WHERE coupon_code='".$coupon->coupon_code."' ";
                $php5DB_en->setQuery( $query );  
                $result = $php5DB_en->loadResult();
				if ($result)
				{
					$coupon->coupon_code = "";
				}
			 
			 }

			 
			 $coupon->issue_date =  date("Y-m-d");			 
 			 $coupon->issued_by =  $php5Session->getVar("admin_id");	            
			 $coupon->addDB($php5Config['table_prefix'].'coupon');					 
			 $coupon->updateID('coupon_id'); 
			 $message = $coupon->mysql_error_message();
             $smarty->assign('message', $message );	
			 $url_edit = sefBuild($php5WebPath, 'index.php?o=coupon&m=main&t=insite&task=edit&id=' . $coupon->coupon_id, 0);
             $message2 =  "<a href='$url_edit'>[ Assign Products ]</a>";   
	         $smarty->assign('message2', $message2 );			 			 
             $tpl = sprintf($php5TemplateAdminFile, $language, 'coupon', 'after_query.tpl');
             $main_content .=  $smarty->fetch($tpl);   
  
		break;

	case 'edit':      
             $coupon = new coupon();
			 $coupon->loadData( add_prefix("coupon"), "coupon_id", $_REQUEST['id']);				
			 $list_order = ($coupon->order_id!='')?explode(',',$coupon->order_id):'';	
			 if (is_array($list_order)){
			 	if (($key = array_search('', $list_order)) !== false) {
					unset($list_order[$key]);
				}			
			 }
			 $coupon->redeemed = (is_array($list_order))?count($list_order):0;		 
             $smarty->assign('obj', $coupon );		
             $smarty->assign('s_discount_type', gen_select(add_prefix('discount_type'), 'title', 'discount_type', 'discount_type_id','title', $coupon->discount_type) );		
             if ($coupon->free_delivery)
			 $smarty->assign('free_delivery_checked',  "checked" );
			 else
			 $smarty->assign('free_delivery_checked',  "" );			 
			 				 		 
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=coupon&m=main&t=insite&task=edit2&id='.$coupon->coupon_id, 0));					
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'coupon', 'edit.tpl');
             $main_content .=  $smarty->fetch($tpl);   

		break;

	case 'edit2':
	           
             $coupon = new coupon();
			 $coupon->loadData( add_prefix("coupon"), "coupon_id", $_POST['coupon_id']);				 
			 $coupon->bindRequest();			 
			 if ( isset($_REQUEST['free_delivery']))
			  $coupon->free_delivery = 1;
			 else
			  $coupon->free_delivery = 0;	
			 if ($_REQUEST['use']==2){
				 $coupon->use = $_REQUEST['use_other'];
			 }
			  
			 $coupon->updateDB(add_prefix("coupon"),"coupon_id", $_POST['coupon_id'] );				 

		 
             mainpage($coupon->mysql_error_message());

		break;

	case 'delete':
             $coupon = new coupon();
			 $coupon->loadData( add_prefix("coupon"), "coupon_id", $_REQUEST['id']);
//			 $coupon->showvariables();			  			 
             $smarty->assign('obj', $coupon );	
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=coupon&m=main&t=insite&task=delete2&id='.$coupon->coupon_id, 0));					 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'coupon', 'delete.tpl');
             $main_content .=  $smarty->fetch($tpl);   

		break;
	case 'delete2':
	           
             $coupon = new coupon();	
			 $coupon->deleteDB( add_prefix("coupon"), "coupon_id", $_POST['coupon_id']);


		  			 
              mainpage($coupon->mysql_error_message());

		break;


														
	default:
			 	
	         $i = show_list();	
  
			 break;
}
$main_content .=   "</div>";


function mainpage($message)
{
  global $smarty;	
  global $php5TemplateAdminFile;
  global $language;
  global $main_content;
    
  $smarty->assign('message', $message );	
  $tpl = sprintf($php5TemplateAdminFile, $language, 'coupon', 'after_query.tpl');
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

  $list_url =  sefBuild($php5WebPath, 'index.php?o=coupon&m=main&t=insite&task=list', 0);
  $page = new Page("SELECT COUNT(*) FROM #__coupon ORDER BY coupon_id DESC ");	
  $page->updatepage(); 
  $smarty->assign('page' ,  $page->showpage($list_url) );

             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=coupon&m=main&t=insite&task=sorting', 0));			
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'coupon', 'list_1.tpl');
             $main_content .=  $smarty->fetch($tpl);   
			 
			         	
  $query = "SELECT * FROM #__coupon ORDER BY coupon_id DESC   ". $page->show_limit()."   ";
  $php5DB_en->setQuery( $query );
 
  $i =0;
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
	   $i++; 
       $smarty->assign('prefix', '');
	   $coupon = new Coupon();
	   $coupon->loadData(add_prefix('coupon'), 'coupon_id', $row['coupon_id']);
       $smarty->assign('obj', $coupon);		 	   	   	   
       $smarty->assign('row', $row);
       $smarty->assign('i', $i);	
	   
	   $orders = explode(",",   $coupon->order_id );
       $smarty->assign('orders', $orders );		   
       $smarty->assign('php5WebPath', $php5WebPath );		
	   	   
       $smarty->assign('edit_button', sefBuild($php5WebPath, 'index.php?o=coupon&m=main&t=insite&task=edit&id='.$row['coupon_id'], 0));		
       $smarty->assign('delete_button', sefBuild($php5WebPath, 'index.php?o=coupon&m=main&t=insite&task=delete&id='.$row['coupon_id'], 0));				 	      
       $tpl = sprintf($php5TemplateAdminFile, $language, 'coupon', 'list_2.tpl');
       $main_content .=  $smarty->fetch($tpl);   
	 }
  }
  return $i;
}

             $smarty->assign('total_record', $i);	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'coupon', 'list_3.tpl');
             $main_content .=  $smarty->fetch($tpl); 
$smarty->assign('main',$main_content);	
return;

