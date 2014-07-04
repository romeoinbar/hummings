<?php 
include_once "$php5RootPath/classes/tables.class.php"; 
global $php5DB_en;
global $php5Session;

if (($type == 'eshop'&& $module=='main') || $type == 'main'  || $type == 'articles')
 return ;
else
{
  $breadcrumb =  "<div class=bottom_header  style='padding-left:30px;color:#a90061;font-weight:bold;'><a href='$php5WebPath'>Home</a> ";

  switch($module)  
  {
	 case  'by_category' :
	                       $product_category = new Product_category();
						   
						   $product_category->loadData(add_prefix('product_category') , 'product_category_id', $id);
						   		   
				           $parent = new Product_category();							   					   
						   $parent_id = $product_category->parent_id;
													   
						   $p = "";	   
						   while ($parent_id != 0)
						   {
						    $parent->loadData(add_prefix('product_category') , 'product_category_id', $parent_id);
							//$p =  $parent->name . " >> " . $p;

							$parent_id = $parent->parent_id;
						   }
						   
						   $breadcrumb .= " >> " . $p . "<a href='". sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id='.$product_category->product_category_id , 1)."'>" . $product_category->name . "</a>";
						   $php5Session->setVar('selected_category',$_REQUEST['id'] );
						   
	                       break;


	 case  'by_price' :
	                       $product_category = new Product_category();   
						   $breadcrumb .= " >> " .    "$" . str_replace("_", "-",  $_REQUEST['id']) ;
						   $php5Session->setVar('selected_category',$_REQUEST['id'] );
						   
	                       break;
						   
						   
	 case  'product_detail' :
	                       $product = new Product();	   
						   $product->loadData(add_prefix('product'), 'product_id' , $id);
	                       $product_category = new Product_category();
						   $c_name = $product_category->getname( $_REQUEST['cat']  );
						   
						   if 	($product->sef_title)	
						   $smarty->assign('title', $product->sef_title);	
						   else
						   $smarty->assign('title', $product->name);							   
						   if 	($product->sef_description)						   
						   $smarty->assign('description', $product->sef_description);	
						   if 	($product->sef_keyword)						   			
						   $smarty->assign('keywords', $product->sef_keyword);


     $pos = strpos($php5Session->getVar('selected_category') , "_");

      if ($pos == false) 
		 $by = "by_category";
	  else
	     $by = "by_price";
	  			   
							 if(trim($c_name)) {
							   $breadcrumb .= ">> <a href='".  sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id='. $php5Session->getVar('selected_category'), 1) ."'>" . $c_name . "</a>  >> ". $product->name;
							 } else {
								 $breadcrumb .= ">> " . $product->name;
							 }
	                       break;	
						   
	 case  'register' :
						   $breadcrumb .= " >> Register";
	                       break;	
	 case  'my_account' :
						   $breadcrumb .= " >> <a href='$php5WebPath/cart/eshop/my_account'>My Account</a>";
						   
						   switch ($task)
						   {
							case 'edit_account' :      $breadcrumb .= " >> Edit Account";  break;
							case 'change_password' :      $breadcrumb .= " >> Change Password";  break;							
							case 'address_book_list' : 
							case 'address_book_edit' :
							case 'address_book_delete' : 
							case 'address_book_add' :     
							                           $breadcrumb .= " >> Address Book"; break;	
							case 'order_history' :  													   
													     $breadcrumb .= " >> Order History"; break;						
							default  : break;   
						   }
	                       break;								   						   					   
  }
  $breadcrumb .= "</div>";
}
/**
  $query = "SELECT * FROM #__product_category WHERE columns=1 AND publish=1 AND parent_id=0 ORDER BY sorting";
  $php5DB_en->setQuery( $query );  
  $rows1 = $php5DB_en->loadAssocList();

$count=0;

  if (count($rows1)>0)
  {

  }
**/

$smarty->assign('breadcrumb', $breadcrumb);
?>
