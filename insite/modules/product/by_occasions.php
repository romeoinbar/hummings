<?php
/***************************************************************************
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
 
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
if ($task == 'list_by_category' )
{
 if (!empty($_POST['set_global']))
    $php5Session->setVar('selected_category', $_POST['parent_id']);
 if (!empty($_POST['show_sub_categories']))
    $php5Session->setVar('show_sub_categories', 1 );
 else
     $php5Session->setVar('show_sub_categories', 0 );	
}

$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'product'));
$smarty->assign('base_url', $php5WebPath  );	
$smarty->assign('list_url', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=list', 0));	
$smarty->assign('list_url_occasions', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite', 0));	
$smarty->assign('list_url_event', sefBuild($php5WebPath, 'index.php?o=product&m=by_event&t=insite', 0));	

$smarty->assign('add_url', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite&task=add', 0));	

$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite&task=list_by_category', 0));	
$smarty->assign('select_occasions', gen_occasions_option(0, $php5Session->getVar('selected_category') )  );	
$checked =  $php5Session->getVar('show_sub_categories' )? 'checked' : "";	
$smarty->assign('checked', $checked );	
$tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'toolbar_occasions.tpl');
$smarty->display($tpl);  
			 
$smarty->assign('base_url', $php5WebPath  );	


			 			 
echo "<div class=content>";			 
//////////////////////////////
switch($task)
{
	case 'add':
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite&task=add2', 0));	
             $smarty->assign('select_product_type', gen_select(add_prefix('product_type'), 'sorting', 'product_type', 'id', 'type', 0)	 );			
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'create.tpl');
             $smarty->display($tpl);  
		break;

	case 'add2':
             $product = new Product();
			 $product->bindRequest();			 
			 $product->addDB($php5Config['table_prefix'].'product');		
             
			 $id=mysql_insert_id(); 
  			 if ($_FILES['image']['name'])
			 {            
			   $obj = $_FILES['image']; 
               $destination= rename_product_image($obj, $id) ;				 
               upload($obj, $destination );
			   $product->image = rename_product_image_url($obj, $id) ;
			   $product->product_id = $id ;			 

			   $product->updateDB(add_prefix("product"),"product_id", $id );				 
			 }
			 
			 $product_occasions_link = new Product_occasions_link();
			 $product_occasions_link -> product_id = $id;
			 
			 if ($php5Session->getVar('selected_category') > 0)
			   $product_occasions_link -> product_occasions_id = $php5Session->getVar('selected_category');
			   
			 $product_occasions_link -> sorting = 50;		
			 $product_occasions_link->addDB($php5Config['table_prefix'].'product_occasions_link');
			 $product_occasions_link->showvariables();			 
			 				 	 			 
             $smarty->assign('next_page', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite&task=edit&id=' .  $id , 0));			 				 
             $smarty->assign('message', $product->mysql_error_message() );					 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'after_create.tpl');
             $smarty->display($tpl); 
		break;

	case 'edit':
	           
             $product = new Product();
			 $product->loadData( add_prefix("product"), "product_id", $_REQUEST['id']);	
			    	
             $smarty->assign('select_product_type', gen_select(add_prefix('product_type'), 'sorting', 'product_type', 'id', 'type', $product->product_type)	 );				  	 			 		
             $smarty->assign('obj', $product );	
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite&task=edit2', 0));				 			 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'edit.tpl');
             $smarty->display($tpl);  

		break;

	case 'edit2':
	           
             $product = new Product();
			 $product->loadData( add_prefix("product"), "product_id", $_POST['product_id']);				 
			 $product->bindRequest();	
			 echo $_POST['name'];
			 $product->showvariables();			 		 
			 $product->updateDB(add_prefix("product"),"product_id", $_POST['product_id'] );				 

             if ($_FILES['update_image']['name'])
			 {
               $id = $_POST['product_id'];
			   $obj = $_FILES['update_image']; 
               $destination= rename_product_image($obj, $id) ;				 
               upload($obj, $destination );
			   $product->image = rename_product_image_url($obj, $id) ;
			   $product->product_id = $id ;			 

			   $product->updateDB(add_prefix("product"),"product_id", $id );				 
			 }
             $smarty->assign('message', $product->mysql_error_message() );			 		  			 
             mainpage();

		break;

	case 'delete':
             $product = new Product();
			 $product->loadData( add_prefix("product"), "product_id", $_REQUEST['id']);
//			 $product->showvariables();			  			 
             $smarty->assign('obj', $product );	
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite&task=delete2', 0));				 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'delete.tpl');
             $smarty->display($tpl);  

		break;
	case 'delete2':
	           
             $product = new Product();	
			 $product->loadData( add_prefix("product"), "product_id", $_POST['product_id']);
			  delete_image($product->image);				 	 
			 $product->deleteDB(add_prefix("product"),"product_id", $_POST['product_id'] );	 			 
             $smarty->assign('message', $product->mysql_error_message() );		  			 
             mainpage();

		break;

	case 'sorting_by_category':
             $product_category_link = new Product_link();		         
			 for($i=1; $i<= $_POST['total_record'];$i++)
			 {
			    $product_category_link->loadData( add_prefix("product_category_link"), "product_category_link_id", $_POST['id'.$i]);

 			    $product_category_link->sorting= $_POST['sorting'.$i];			
//				$product_category_link->showvariables();					 
			    $product_category_link->updateDB(add_prefix("product_category_link"),"product_category_link_id", $_POST['id'.$i] );									 
			 }	
			 	  			 
             mainpage();

		break;

	case 'list_by_category':
       $php5Session->setVar('store_page',$php5WebPath . "/admin/product/main/list_by_category/"  );
		  
	     $id = $php5Session->getVar('selected_category');
		 
          $category_names_data = load_category_name_into_array();
		  show_by_category($id);			   				
	      
	    break; 
															
	default:
       $php5Session->setVar('store_page',$php5WebPath . "/admin/product/main/list/"  );
			 	
	        show_havent_assign_category();	

}
echo "</div>";


function mainpage()
{    
       global $php5TemplateAdminFile;
	   global $language;
	   global $smarty;
       global $php5Session;
	   
       $smarty->assign('stored_page',  $php5Session->getVar('store_page') );		   
       $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'after_query.tpl');
       $smarty->display($tpl);  
}



function show_havent_assign_category()
{
  global $php5DB_en;
  global $smarty;
  global $php5TemplateAdminFile;
  global $language;
  global $php5WebPath;

             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite&task=sorting', 0));	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_1.tpl');
             $smarty->display($tpl);  			 
			      	
  $query = "SELECT * FROM #__product";
  $php5DB_en->setQuery( $query );
  $i=0;
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
  	   $i++;
       $smarty->assign('row', $row);
       $product = new Product();
	   $product->load($row);

	    if  ($product->num_of_assigned_category() == 0)
        {	   	   	  
           $smarty->assign('edit_link', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite&task=edit&id='.$row['product_id'], 0));	
           $smarty->assign('delete_link', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite&task=delete&id='.$row['product_id'], 0));	  	 	     
           $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_2.tpl');
           $smarty->display($tpl); 
		}  

	 }
  }
  

             $smarty->assign('total_record', $i);	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_3.tpl');
             $smarty->display($tpl);  
			   

}


function show_by_category($id)
{
  global $php5DB_en;
  global $smarty;
  global $php5TemplateAdminFile;
  global $language;
  global $php5WebPath;
  global $php5Session;
  global $category_names_data ;

             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite&task=sorting_by_category', 0));	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_category_1.tpl');
             $smarty->display($tpl);  			 
			 		      	
  $query = "SELECT * FROM #__product_category_link WHERE product_category_id=$id ";
  $php5DB_en->setQuery( $query );
  $i=0;
  $prefix = "";
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
  	   $i++;
       $smarty->assign('i', $i);	   
       $smarty->assign('sorting_value', $row['sorting']);
       $smarty->assign('id_value', $row['product_category_link_id']);	   
       $product = new Product();
	   $product->loadData(add_prefix('product'), 'product_id', $row['product_id'] );
       $smarty->assign('row', $product  );	 
       $smarty->assign('category', $prefix .  $category_names_data[$row['product_category_id']] );		   
       $smarty->assign('image', display_image_url($product->image)  );	 	    	   	  
       $smarty->assign('edit_link', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite&task=edit&id='.$product->product_id, 0));	
       $smarty->assign('delete_link', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite&task=delete&id='.$product->product_id, 0));	  	 	     
       $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_category_2.tpl');
       $smarty->display($tpl); 
	   


	 }
  } 
  
  	   if ($php5Session->getVar('show_sub_categories' ))
	    $i = show_sub_categories( $id, " - " . $prefix, $i);
		
             $smarty->assign('total_record', $i);	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_category_3.tpl');
             $smarty->display($tpl);  
			   

}



function show_sub_categories( $parent_category_id, $prefix, $i)
{
  global $php5DB_en;
  global $smarty;
  global $php5WebPath;
  global $php5TemplateAdminFile;
  global $language;
  global $category_names_data ;
    		   	
  $query = "SELECT * FROM #__product_category WHERE parent_id=$parent_category_id ";
  $php5DB_en->setQuery( $query );

  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
//	    echo $row['product_category_id'] . "<br/>";
		

        $query = "SELECT * FROM #__product_category_link WHERE product_category_id=" . $row['product_category_id'] ;
        $php5DB_en->setQuery( $query );
        if ($rows = $php5DB_en->loadAssocList())
        { 
	       foreach ($rows as $row)
	       { 
  	         $i++;
             $smarty->assign('i', $i);	   
             $smarty->assign('sorting_value', $row['sorting']);
             $smarty->assign('id_value', $row['product_category_link_id']);	   
             $product = new Product();
	         $product->loadData(add_prefix('product'), 'product_id', $row['product_id'] );
             $smarty->assign('row', $product  );	 
             $smarty->assign('category', $prefix .  $category_names_data[$row['product_category_id']] );				 
             $smarty->assign('image', display_image_url($product->image)  );	 	    	   	  
             $smarty->assign('edit_link', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite&task=edit&id='.$product->product_id, 0));	
             $smarty->assign('delete_link', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite&task=delete&id='.$product->product_id, 0));	  	 	     
             $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_category_2.tpl');
             $smarty->display($tpl); 	   
	        }
         } 	
		 
	    $i = show_sub_categories( $row['product_category_id'] , " - " . $prefix, $i);		 	

	 }
	 return $i;
  } 
  else
  {
	 return $i;  
  }

			   

}


function load_category_name_into_array()
{
  global $php5DB_en;
  $arr =  array(    "0"    => "parent category",);
  $query = "SELECT * FROM #__product_category ORDER BY product_category_id ";
  $php5DB_en->setQuery( $query );

  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 {

		   $key = $row['product_category_id'];
		   $value =   $row['name'] ;		   
		   $arr["$key"] = $value;
	 }
  }
 	 
  
 return $arr;	 
}

