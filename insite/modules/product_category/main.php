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
 	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "product")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	

defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();
//get
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);


if(!$currPage) {
	$currPage = 1;
}
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'product_category'));

$list_url = sefBuild($php5WebPath, 'index.php?o=product_category&m=main&t=insite&task=list', 0);
$smarty->assign('list_url', sefBuild($php5WebPath, 'index.php?o=product_category&m=main&t=insite&task=list', 0));	
$smarty->assign('base_url', $php5WebPath  );	
$smarty->assign('add_url', sefBuild($php5WebPath, 'index.php?o=product_category&m=main&t=insite&task=add', 0));	

$tpl = sprintf($php5TemplateAdminFile, $language, 'product_category', 'toolbar.tpl');
$main_content .=  $smarty->fetch($tpl);   
			 
$smarty->assign('base_url', $php5WebPath  );	


			 			 
$main_content .=   "<div class=content>";			 
//////////////////////////////
switch($task)
{
	case 'add':
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product_category&m=main&t=insite&task=add2', 0));	
             $smarty->assign('select_category', gen_product_categories_option(0, 0)  );	
             $smarty->assign('select_category_type', gen_select( add_prefix('category_type'), 'category_type_id' , 'category_type', 'category_type_id', 'type', 1)  );				 
             $smarty->assign('select_columns', gen_select('tbl_columns', 'columns', 'columns', 'columns', 'columns', 1)  );		
             $smarty->assign('select_publish', gen_select('tbl_yesno', 'sorting', 'publish', 'id', 'caption', 1)  );					 		 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product_category', 'create.tpl');
             $main_content .=  $smarty->fetch($tpl);   
		break;

	case 'add2':
             $product_category = new Product_category();
			 $product_category->bindRequest();
			 $product_category->sorting=50;						 		 
			 $product_category->addDB($php5Config['table_prefix'].'product_category');		
             
			 $id=mysql_insert_id(); 
  			 if ($_FILES['image']['name'])
			 {            
			   $obj = $_FILES['image']; 
               $destination= rename_category_image($obj, $id) ;				 
               upload($obj, $destination );
			   $product_category->image = rename_category_image_url($obj, $id) ;
			   $product_category->product_category_id = $id ;			 

			   $product_category->updateDB(add_prefix("product_category"),"product_category_id", $id );				 
			 }
             $smarty->assign('message', $product_category->mysql_error_message() );				 
             mainpage();
		break;

	case 'edit':
      
             $product_category = new Product_category();	   			
			 $product_category->loadData( add_prefix("product_category"), "product_category_id", $_REQUEST['id']);	
			 $product_category->name = stripslashes($product_category->name);	  	
             $smarty->assign('select_publish', gen_select('tbl_yesno', 'sorting', 'publish', 'id', 'caption', $product_category->publish)  );	
             $smarty->assign('select_category_type', gen_select( add_prefix('category_type'), 'category_type_id' , 'category_type', 'category_type_id', 'type', 
			                      $product_category->category_type )  );  			 
             $smarty->assign('select_columns', gen_select('tbl_columns', 'columns', 'columns', 'columns', 'columns', $product_category->columns)  );				 			 		
             $smarty->assign('obj', $product_category );	
             $smarty->assign('select_category', gen_product_categories_option($product_category->product_category_id, $product_category->parent_id)  );	
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product_category&m=main&t=insite&task=edit2', 0));				 			 

	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product_category', 'edit.tpl');
             $main_content .=  $smarty->fetch($tpl);   


		break;

	case 'edit2':
	           
             $product_category = new Product_category();
			 $product_category->loadData( add_prefix("product_category"), "product_category_id", $_POST['product_category_id']);				 
			 $product_category->bindRequest();			 
			 $product_category->updateDB(add_prefix("product_category"),"product_category_id", $_POST['product_category_id'] );				 

//			 $product_category->showvariables();			 
             if ($_FILES['update_image']['name']) {			 
               $id = $_POST['product_category_id'];
			   $obj = $_FILES['update_image']; 
               $destination= rename_category_image($obj, $id) ;				 
               upload($obj, $destination );
			   $product_category->image = rename_category_image_url($obj, $id) ;
			   $product_category->product_category_id = $id ;			 

			   $product_category->updateDB(add_prefix("product_category"),"product_category_id", $id );				 
			 }
       // header('Location: ' . $list_url);			 		  			 
             mainpage();

		break;

	case 'delete':
	

			
             $product_category = new Product_category();
			 $product_category->loadData( add_prefix("product_category"), "product_category_id", $_REQUEST['id']);
//			 $product_category->showvariables();			  			 
             $smarty->assign('obj', $product_category );	
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product_category&m=main&t=insite&task=delete2', 0));				 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product_category', 'delete.tpl');
             $main_content .=  $smarty->fetch($tpl);   

		break;
	case 'delete2':
        $query = "DELETE FROM #__product_category_link WHERE  product_category_id=".$_REQUEST['id']."  ";

        $php5DB_en->setQuery( $query );
		$php5DB_en->query();	           
             $product_category = new Product_category();	
			 $product_category->loadData( add_prefix("product_category"), "product_category_id", $_POST['product_category_id']);
			 if ($product_category->image)
			  delete_image($product_category->image);				 	 
			 $product_category->deleteDB(add_prefix("product_category"),"product_category_id", $_POST['product_category_id'] );	 			 
		  			 
             mainpage();

		break;

	case 'sorting':
             $product_category = new Product_category();		         
			 for($i=1; $i<= $_POST['total_record'];$i++)
			 {
			    $product_category->loadData( add_prefix("product_category"), "product_category_id", $_POST['id'.$i]);

 			    $product_category->sorting= $_POST['sorting'.$i];	
 			    $product_category->publish= $_POST['publish'.$i];							
//				$product_category->showvariables();					 
			    $product_category->updateDB(add_prefix("product_category"),"product_category_id", $_POST['id'.$i] );									 
			 }		  			 
             mainpage();

		break;

	case 'remove':
	        remove1($id);			
			break;												
	case 'remove2':
	        remove2($id);			
			break;				
	default:

			 	
	        show_product_categories();	

}
$main_content .=   "</div>";



function remove1($id)
{
  global $php5DB_en;
  global $smarty;
  global $php5TemplateAdminFile;
  global $language;
  global $php5WebPath;
  global $main_content;


  $product_category = new Product_category(); 
  $product_category->loadData(add_prefix('product_category'), 'product_category_id', $id); 

  $query = "SELECT COUNT(*) as c FROM #__product_category_link WHERE product_category_id=$id ";
  $php5DB_en->setQuery( $query );
  $c = $php5DB_en->loadResult();

  $remove_url = sefBuild($php5WebPath, 'index.php?o=product_category&m=main&t=insite&task=remove2&id='. $id, 0);
   
  $main_content .= "This is going to remove $c records from " . $product_category->name . "
  <br/>
  You can backup the files from Products>Export Products
  <br/><br/>
  <a href='$remove_url'>[ Continue ]</a>       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;   <a href='javascript:history.back(-1)'>[ Back ]</a >
  ";;
			      	

}


function remove2($id)
{
  global $php5DB_en;
  global $php5WebPath;
  global $main_content;


  $query = "DELETE  FROM #__product_category_link WHERE product_category_id=$id ";
  $php5DB_en->setQuery( $query );
  $php5DB_en->query();
		      	
  mainpage(); 
}

function mainpage()
{    
global $main_content;
       global $php5TemplateAdminFile;
	   global $language;
	   global $smarty;
       $tpl = sprintf($php5TemplateAdminFile, $language, 'product_category', 'after_query.tpl');
       $main_content .=  $smarty->fetch($tpl);   
}

function show_child($product_category_id , $i, $prefix)
{
global $main_content;	
  global $php5DB_en;
  global $smarty;
  global $php5TemplateAdminFile;
  global $language;
  global $php5WebPath;  
  global $main_content;	
  
  $query = "SELECT * FROM #__product_category  WHERE parent_id=$product_category_id ORDER BY sorting";
  $php5DB_en->setQuery( $query );
  

  $product_category = new Product_category(); 
  if ($rows = $php5DB_en->loadAssocList())
  {
  $main_content .=  "<div style='border:0px solid #ccc; width:12px; height:12px; padding:5px; cursor:pointer;  margin-top:-25px; margin-left:34px; ' onClick=showhide('sub$i')  >+</div>";     
  $main_content .=  "<div style='border:0px solid #ccc; display:none;' id=sub$i >";   
	 foreach ($rows as $row)
	 {
	  
	  
	   $i++; 
	   $product_category->load(add_prefix('product_category'), 'product_category_id', $row['product_category_id']);
			 $product_category->name = stripslashes($product_category->name);		
//	   echo $row['product_category_id'] . ",";			    
       $smarty->assign('obj', $product_category);		   
       $smarty->assign('prefix', $prefix);	   
       $smarty->assign('row', $row);
       $smarty->assign('i', $i);
       $smarty->assign('class', 'sub');		   
       $smarty->assign('select_publish', gen_select('tbl_yesno', 'sorting', 'publish'.$i, 'id', 'caption', $row['publish'] )  );			   
$smarty->assign('edit_link', sefBuild($php5WebPath, 'index.php?o=product_category&m=main&t=insite&task=edit&id='.$row['product_category_id'], 0));	
$smarty->assign('delete_link', sefBuild($php5WebPath, 'index.php?o=product_category&m=main&t=insite&task=delete&id='.$row['product_category_id'], 0));		   	 	   
       $tpl = sprintf($php5TemplateAdminFile, $language, 'product_category', 'list_2.tpl');
       $main_content .=  $smarty->fetch($tpl);  
	   $i = show_child($row['product_category_id'] , $i , '--- ' . $prefix) ;
	   
	 }
  $main_content .=  "</div>";   	 
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

             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product_category&m=main&t=insite&task=sorting', 0));	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product_category', 'list_1.tpl');
             $main_content .=  $smarty->fetch($tpl);   
			 
			      	
  $query = "SELECT * FROM #__product_category WHERE parent_id=0 ORDER BY sorting,columns";
  $php5DB_en->setQuery( $query );
 
  $i =0;
  $product_category = new Product_category(); 
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
	   $i++; 
       $smarty->assign('prefix', '');
	   $row['name'] = "<b>".$row['name']."</b>";	

	   $product_category->load(add_prefix('product_category'), 'product_category_id', $row['product_category_id']);
			 $product_category->name = stripslashes($product_category->name);		   
//	   echo $row['product_category_id'] . ",";		  
       $smarty->assign('select_publish', gen_select('tbl_yesno', 'sorting', 'publish'.$i, 'id', 'caption',  $row['publish']  )  );		   
       $smarty->assign('obj', $product_category);	      	   
       $smarty->assign('row', $row);
       $smarty->assign('i', $i);	 
       $smarty->assign('class', 'main');		   
$smarty->assign('edit_link', sefBuild($php5WebPath, 'index.php?o=product_category&m=main&t=insite&task=edit&id='.$row['product_category_id'], 0));	
$smarty->assign('delete_link', sefBuild($php5WebPath, 'index.php?o=product_category&m=main&t=insite&task=delete&id='.$row['product_category_id'], 0));	
$smarty->assign('remove_link', sefBuild($php5WebPath, 'index.php?o=product_category&m=main&t=insite&task=remove&id='.$row['product_category_id'], 0));	  	 	     
       $tpl = sprintf($php5TemplateAdminFile, $language, 'product_category', 'list_2.tpl');
       $main_content .=  $smarty->fetch($tpl);   
	   $i = show_child($row['product_category_id'] , $i, '--- ') ;	   
	 }
  }
  

             $smarty->assign('total_record', $i);	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'product_category', 'list_3.tpl');
             $main_content .=  $smarty->fetch($tpl);   
			   

}



        $smarty->assign('main',$main_content);		
return;

