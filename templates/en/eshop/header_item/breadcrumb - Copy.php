<?php 
include_once "$php5RootPath/classes/tables.class.php"; 
global $php5DB_en;
global $php5Session;

if (($type == 'eshop') && ($module=='main'))
 return ;
else
{
  $breadcrumb =  "<div class=breadcrumb  style='padding-left:30px;'>Home "; 
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
							$p =  $parent->name . " >> " . $p;

							$parent_id = $parent->parent_id;
						   }
						   
						   $breadcrumb .= " >> " . $p .  $product_category->name;
						   $php5Session->setVar('selected_category',$_REQUEST['id'] );
						   
	                       break;

	 case  'product_detail' :
	                       $product = new Product();	   
						   $product->loadData(add_prefix('product'), 'product_id' , $id);
	                       $product_category = new Product_category();
						   $c_name = $product_category->getname( $php5Session->getVar('selected_category'));
						   if 	($product->sef_title)	
						   $smarty->assign('title', $product->sef_title);	
						   if 	($product->sef_description)						   
						   $smarty->assign('description', $product->sef_description);	
						   if 	($product->sef_keyword)						   			
						   $smarty->assign('keywords', $product->sef_keyword);										   						   							   						   
						   $breadcrumb .= ">> " . $c_name . " >> " . $product->name;
	                       break;	
						   
	 case  'register' :
						   $breadcrumb .= " >> Register";
	                       break;	
	 case  'my_account' :
						   $breadcrumb .= " >> My Accout";
						   
						   switch ($task)
						   {
							case 'edit_account' :      $breadcrumb .= " >> Edit Accout";  break;
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
