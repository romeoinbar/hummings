<?php
/***************************************************************************
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
 	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "product")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	
	
include_once "$php5RootAdminPath/modules/header.php"; 
include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/images.class.php"; 
include_once "$php5RootPath/includes/select_input.php"; 
include_once "$php5RootPath/classes/page.class.php"; 

$page_session_name = "product_category";

$main_content = "";
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
 {
  $php5Session->setVar('selected_category', $_POST['parent_id']);
   if ( isset($_POST['show_sub_categories']) )
    $php5Session->setVar('show_sub_categories', 1 );
   else
     $php5Session->setVar('show_sub_categories', 0 );  	
	
 }
}

$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'product'));
$smarty->assign('base_url', $php5WebPath  );	
$smarty->assign('list_url', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=list', 0));	
$smarty->assign('list_url_by_category', sefBuild($php5WebPath, 'index.php?o=product&m=main&task=list_by_category&t=insite', 0));
$smarty->assign('list_url_occasions', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite', 0));	
$smarty->assign('list_url_event', sefBuild($php5WebPath, 'index.php?o=product&m=by_event&t=insite', 0));	

$smarty->assign('add_url', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=add', 0));	



$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=list_by_category', 0));	
$smarty->assign('select_category', gen_product_categories_option(0, $php5Session->getVar('selected_category') )  );	
$checked =  $php5Session->getVar('show_sub_categories' )? 'checked' : "";	
$smarty->assign('checked', $checked );	
$tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'toolbar.tpl');
$main_content .=  $smarty->fetch($tpl);  
			 
$smarty->assign('base_url', $php5WebPath  );	


			 			 
$main_content .= "<div class=content>";			 
//////////////////////////////
switch($task)
{
	case 'add':
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=add2', 0));	
             $smarty->assign('select_product_type', gen_select(add_prefix('product_type'), 'sorting', 'product_type', 'id', 'type', 0)	 );	
             $smarty->assign('select_availability', gen_select(add_prefix('stock'), 'sorting', 'availability', 'id', 'caption', 1)  );
             $smarty->assign('select_publish', gen_select(add_prefix('yesno'), 'sorting', 'publish', 'id', 'caption', 1)  );
             $smarty->assign('select_discount', gen_select(add_prefix('discount_type'), 'discount_type_id', 'discount_type', 'discount_type_id', 'title', 1)  );				 			 	 	
             $smarty->assign('today', date('Y-m-d') );				 				 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'create.tpl');
       $main_content .=  $smarty->fetch($tpl);   
		break;

	case 'add2':
             $product = new Product();
			 $product->bindRequest();		
			 $product->date_added = date('Y-m-d');				 	 
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

			 if ($php5Session->getVar('selected_category') > 0)
			 {
			   $product_category_link = new Product_category_link();
			   $product_category_link -> product_id = $id;
			 
			   if ($php5Session->getVar('selected_category') > 0)
			     $product_category_link -> product_category_id = $php5Session->getVar('selected_category');
			   
			   $product_category_link -> sorting = 50;		
			   $product_category_link->addDB($php5Config['table_prefix'].'product_category_link');
			 }
			 				 	 
			 
             $smarty->assign('next_page', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=edit&id=' .  $id , 0));			 				 
             $smarty->assign('message', $product->mysql_error_message() );					 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'after_create.tpl');
       $main_content .=  $smarty->fetch($tpl);  
		break;

	case 'edit':
	           
             $product = new Product();
			 $product->loadData( add_prefix("product"), "product_id", $_REQUEST['id']);	
			 
			 $php5Session->setVar('quantity', $product->quantity);
			 $php5Session->setVar('availability', $product->availability);
			 
             $smarty->assign('select_availability', gen_select(add_prefix('stock'), 'sorting', 'availability', 'id', 'caption', $product->availability)  );
             $smarty->assign('select_publish', gen_select(add_prefix('yesno'), 'sorting', 'publish', 'id', 'caption', $product->publish)  );					    	
             $smarty->assign('select_product_type', gen_select(add_prefix('product_type'), 'sorting', 'product_type', 'id', 'type', $product->product_type)	 );				  	 			 		
             $smarty->assign('select_discount', gen_select(add_prefix('discount_type'), 'discount_type_id', 'discount_type', 'discount_type_id', 'title', $product->discount_type)  );				 			 	 	


$smarty->assign('url_assign_category', sefBuild($php5WebPath, 'index.php?o=product&m=assign_category&t=insite&task=edit&id=' . $id, 0));	
$smarty->assign('url_assign_addon', sefBuild($php5WebPath, 'index.php?o=product&m=assign_addon&t=insite&task=edit&id=' . $id, 0));	
$smarty->assign('url_assign_image', sefBuild($php5WebPath, 'index.php?o=product&m=assign_image&t=insite&task=list&id=' . $id, 0));	
$smarty->assign('url_related_product', sefBuild($php5WebPath, 'index.php?o=product&m=related_product&t=insite&task=list&id=' . $id, 0));	

$smarty->assign('list_url_by_category', sefBuild($php5WebPath, 'index.php?o=product&m=main&task=list_by_category&t=insite', 0));
$smarty->assign('list_url_occasions', sefBuild($php5WebPath, 'index.php?o=product&m=by_occasions&t=insite', 0));	
$smarty->assign('list_url_event', sefBuild($php5WebPath, 'index.php?o=product&m=by_event&t=insite', 0));	



             $smarty->assign('obj', $product );	
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=edit2', 0));				 			 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'edit.tpl');
       $main_content .=  $smarty->fetch($tpl);   

		break;

	case 'edit2':
	           include_once "$php5RootPath/includes/send_email.php";  
             $product = new Product();
			 $product->loadData( add_prefix("product"), "product_id", $_POST['product_id']);				 
			 $product->bindRequest();		 		 
			 $product->updateDB(add_prefix("product"),"product_id", $_POST['product_id'] );				 
			 if (($php5Session->getVar('quantity')==0)||($php5Session->getVar('availability')==2)){
				 if (($_POST['availability']==1)&&($_POST['quantity']>0)) {
					 $php5DB_en->setQuery("SELECT email FROM #__notify_quantity WHERE product_id=".$_POST['product_id']);
					 $rows = $php5DB_en->loadResultArray();
					 $list_email = implode(', ',$rows);
					 $url = sefBuild($php5WebPath, "index.php?o=eshop&m=product_detail&t=outsite&task=show&id=" .$_POST['product_id'], 1);
					 $subject = 'Your gift choice is back in stock';
					 $message = 'Dear Customer,<br><br>

								Thank you for your patience and interest. We would like to inform you that <strong>'.$_POST['name'].' ('.$_POST['sku'].')</strong> is now available! Please visit:  <a href="'.$url.'">'.$php5WebPath.'/'.$_POST['sku'].'</a> <br><br>
								<img src="'.$php5WebPath.'/images/humming.png">
								';
					 email_available_product($list_email, $subject, $message);
				 }
			 }
//             $main_content .= $product->showvariables();
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
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=delete2', 0));				 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'delete.tpl');
       $main_content .=  $smarty->fetch($tpl);   

		break;
	case 'delete2':
        $id = $_POST['product_id'];
        $query = "DELETE FROM #__product_category_link WHERE  product_id=$id  ";

        $php5DB_en->setQuery( $query );
		$php5DB_en->query();
			           
             $product = new Product();	
			 $product->loadData( add_prefix("product"), "product_id", $_POST['product_id']);
			  if ($product->image)
			    delete_image($product->image);				 	 
			 $product->deleteDB(add_prefix("product"),"product_id", $_POST['product_id'] );	 			 
             $smarty->assign('message', $product->mysql_error_message() );		  			 
//             mainpage();

		break;

	case 'sorting_by_category':
             $product_category_link = new Product_category_link();		         
			 for($i=1; $i< $_POST['total_record'];$i++)
			 {
				$product = new Product();
				$product->loadData(add_prefix('product'), 'product_id', $_POST['pid'.$i]  );
				$product->availability = $_POST['availability'.$i];	
				$product->publish = $_POST['publish'.$i];								
                $product->updateDB(add_prefix('product'), 'product_id', $_POST['pid'.$i]  );

			    $product_category_link->loadData( add_prefix("product_category_link"), "product_category_link_id", $_POST['id'.$i]);

 			    $product_category_link->sorting= $_POST['sorting'.$i];			
					 
			    $product_category_link->updateDB(add_prefix("product_category_link"),"product_category_link_id", $_POST['id'.$i] );									 
			 }	
			 	  			 
             mainpage();

		break;

	case 'list_by_category':
       $php5Session->setVar('store_page',    sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=list_by_category', 0) );
		  
	     $id = $php5Session->getVar('selected_category');
		 
          $category_names_data = load_category_name_into_array();

		  
		  show_by_category($id);			   				
	      
	    break; 
															
	default:
       $php5Session->setVar('store_page', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=list', 0) );

	   $main_content .=  "Please choose a product category.";		 	
	     

}
$main_content .= "</div>";


function mainpage()
{ 
  global $main_content;	   
       global $php5TemplateAdminFile;
	   global $language;
	   global $smarty;
       global $php5Session;
	   
       $smarty->assign('stored_page',  $php5Session->getVar('store_page') );		   
       $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'after_query.tpl');
 $main_content .=  $smarty->fetch($tpl);   
}



function show_havent_assign_category2()
{
  global $main_content;		
  global $php5DB_en;
  global $smarty;
  global $php5TemplateAdminFile;
  global $language;
  global $php5WebPath;

             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=sorting', 0));	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_1.tpl');
       $main_content .=  $smarty->fetch($tpl);   			 
			      	
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
           $smarty->assign('edit_link', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=edit&id='.$row['product_id'], 0));	
           $smarty->assign('delete_link', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=delete&id='.$row['product_id'], 0));	  	 	     
           $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_2.tpl');
     $main_content .=  $smarty->fetch($tpl);  
		}  

	 }
  }
  

             $smarty->assign('total_record', $i);	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_3.tpl');
       $main_content .=  $smarty->fetch($tpl);   
			   

}


function show_all_product()
{
  global $main_content;		
  global $php5DB_en;
  global $smarty;
  global $php5TemplateAdminFile;
  global $language;
  global $php5WebPath;
  global $php5Session;
  global $page_session_name;
  
  $where = "";
  
  if ( isset($_POST['search'] ) )
  {
    $s = $_POST['search'];
    $where = "WHERE sku LIKE '%$s%' OR name LIKE '%$s%' ";
	$php5Session->setVar($page_session_name, 1);
   }
   
  
  $list_url =  sefBuild($php5WebPath, 'index.php?o=product&m=main&task=list_by_category&t=insite', 0);
  $page = new Page("SELECT COUNT(*) as c FROM #__product $where ORDER BY date_added DESC");	
  $page->updatepage(); 
  $smarty->assign('page' ,  $page->showpage($list_url) );
    
   $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_1.tpl');
   $main_content .=  $smarty->fetch($tpl);   		 
    

    	
  $query = "SELECT * FROM #__product  $where ORDER BY product_type  ". $page->show_limit()."  ";

  $php5DB_en->setQuery( $query );
  $i=0;
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 

  
       $smarty->assign('row', $row);
       $product = new Product();
	   $product->load($row);



   


       $product = new Product();
	   $product->loadData(add_prefix('product'), 'product_id', $row['product_id'] );
       $smarty->assign('row', $product  );	 
	   $discount_price =  ( $product->get_discount_price() ) ? "->".$product->get_discount_price() : "";  
       $smarty->assign('discount_price', $discount_price  );	
       $smarty->assign('select_availability', gen_select(add_prefix('stock'), 'sorting', 'availability'.$i, 'id', 'caption', $product->availability)  );
       $smarty->assign('select_publish', gen_select(add_prefix('yesno'), 'sorting', 'publish'.$i, 'id', 'caption', $product->publish)  );	   	   	   
       $smarty->assign('image', return_resized_image(155, 155, display_image_url($product->image) ) );	 	    	   	  
       $smarty->assign('edit_link', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=edit&id='.$product->product_id, 0));	
       $smarty->assign('delete_link', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=delete&id='.$product->product_id, 0));	  	 	     
       $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_2.tpl');
       $main_content .=  $smarty->fetch($tpl);  
 /**		
	       $discount_price =  ( $product->get_discount_price() ) ? "->".$product->get_discount_price() : "";  
           $smarty->assign('discount_price', $discount_price  );	
	   		   	   	  
           $smarty->assign('edit_link', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=edit&id='.$row['product_id'], 0));	
           $smarty->assign('delete_link', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=delete&id='.$row['product_id'], 0));	  	
           $smarty->assign('image', display_image_url($product->image)  );	 			   
           $smarty->assign('category', '' );		    
       $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_category_2.tpl');
 $main_content .=  $smarty->fetch($tpl);  
 **/
 
        $i++;

	 }
  }
        $smarty->assign('total_record', $i  );	
	    $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_3.tpl');
       $main_content .=  $smarty->fetch($tpl);  
			   

}



function show_by_category($id)
{
  global $main_content;		
  global $php5DB_en;
  global $smarty;
  global $php5TemplateAdminFile;
  global $language;
  global $php5WebPath;
  global $php5Session;
  global $category_names_data ;
          if (isset($_POST['search']))
		  {
		    if (($php5Session->getVar('selected_category')==0) OR ( ($_POST['search'] != '')  ) )
		    { 
		     show_all_product();
		     return; 
		    }			  
		  }
		  else
		  {
		    if (($php5Session->getVar('selected_category')==0)  )
		    { 
		     show_all_product();
		     return; 
		    }
		  }
		  
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=sorting_by_category', 0));	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_category_1.tpl');
       $main_content .=  $smarty->fetch($tpl);   			 


		  			 		      	
  $query = "SELECT * FROM #__product_category_link WHERE product_category_id=$id ORDER BY sorting";
  $php5DB_en->setQuery( $query );
  $i=1;
  $prefix = "";
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
  	   
       $smarty->assign('i', $i);	   
       $smarty->assign('sorting_value', $row['sorting']);
       $smarty->assign('id_value', $row['product_category_link_id']);	  
       $smarty->assign('pid_value', $row['product_id']);		    
       $product = new Product();
	   $product->loadData(add_prefix('product'), 'product_id', $row['product_id'] );

       if ($product->product_id > 1)
	   {
        $smarty->assign('row', $product  );	 
	    $discount_price =  ( $product->get_discount_price() ) ? "->".$product->get_discount_price() : "";  
        $smarty->assign('discount_price', $discount_price  );		   
        $smarty->assign('category', $prefix .  $category_names_data[$row['product_category_id']] );		   
        $smarty->assign('image', display_image_url($product->image)  );	 	
        $smarty->assign('select_availability', gen_select(add_prefix('stock'), 'sorting', 'availability'.$i, 'id', 'caption', $product->availability)  );
        $smarty->assign('select_publish', gen_select(add_prefix('yesno'), 'sorting', 'publish'.$i, 'id', 'caption', $product->publish)  );		       	   	  
        $smarty->assign('edit_link', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=edit&id='.$product->product_id, 0));	
        $smarty->assign('delete_link', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=delete&id='.$product->product_id, 0));	  	 	     
        $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_category_2.tpl');
        $main_content .=  $smarty->fetch($tpl);  
	    $i++;
	   }
	   else
	   {
	    $query = "DELETE FROM #__product_category_link WHERE  product_id=".$row['product_id'] ."  ";
        $php5DB_en->setQuery( $query );
		$php5DB_en->query();
	   }


	 }
  } 
  
  	   if ($php5Session->getVar('show_sub_categories' ))
	    $i = show_sub_categories( $id, " - " . $prefix, $i);
		
             $smarty->assign('total_record', $i);	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_category_3.tpl');
       $main_content .=  $smarty->fetch($tpl);   
			   

}



function show_sub_categories( $parent_category_id, $prefix, $i)
{
  global $main_content;	
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
//	    $main_content .= $row['product_category_id'] . "<br/>";
		

        $query = "SELECT * FROM #__product_category_link WHERE product_category_id=" . $row['product_category_id'] . " ORDER BY sorting" ;
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
			 $discount_price =  ( $product->get_discount_price() ) ? "->".$product->get_discount_price() : "";  
             $smarty->assign('discount_price', $discount_price  );				 
             $smarty->assign('category', $prefix .  $category_names_data[$row['product_category_id']] );				 
             $smarty->assign('image', display_image_url($product->image)  );	 	    	   	  
       $smarty->assign('select_availability', gen_select(add_prefix('stock'), 'sorting', 'availability'.$i, 'id', 'caption', $product->availability)  );
       $smarty->assign('select_publish', gen_select(add_prefix('yesno'), 'sorting', 'publish'.$i, 'id', 'caption', $product->publish)  );				 
             $smarty->assign('edit_link', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=edit&id='.$product->product_id, 0));	
             $smarty->assign('delete_link', sefBuild($php5WebPath, 'index.php?o=product&m=main&t=insite&task=delete&id='.$product->product_id, 0));	  	 	     
             $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'list_category_2.tpl');
       $main_content .=  $smarty->fetch($tpl);  	   
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
  global $main_content;		
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

        $smarty->assign('main',$main_content);		