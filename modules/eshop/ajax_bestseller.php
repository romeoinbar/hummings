<?php
include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/images.class.php"; 
include_once "$php5RootPath/includes/call_rating.php"; 
include_once "$php5RootPath/templates/en/eshop/browse/product_review.php";

$popup=1;
$clean=1;
$best_seller = "";
  $current_category = "$id";
  
  $query = "SELECT * FROM #__product_category_link WHERE product_category_id=$id ORDER BY sorting";
  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadAssocList();

  $product_per_row= 5;
  $browse = "";
  $tpl = $php5RootPath. '/templates/en/eshop/browse/best_seller.tpl';
  $count = 1;
  if (count($rows)>0)
  {
	 foreach ($rows as $row)
	 {  
		 $product = new Product();
		 $product->loadData(add_prefix('product'),'product_id',$row['product_id']);
		 $link_product = sefBuild($php5WebPath, "index.php?o=eshop&m=product_detail&t=outsite&task=show&id=" .$row['product_id'] , 1)  ;		 
		// $product->image = display_image_url($product->image);
         $smarty->assign('resized_image', "<a href='$link_product'>".return_resized_image(184, 184, $product->image)."</a>" );	
         $smarty->assign('product_id', $product->product_id );	
        $smarty->assign('name', $product->name );		
		$smarty->assign('sku', $product->sku );	
         $smarty->assign('rating', call_rating($product->product_id) );				 
		 if ($product->get_discount_price())
           $smarty->assign('price', "<span style='font-size:10px; text-decoration: line-through'><stroke>". price_tag($product->price). "</stroke></span> ".  price_tag($product->get_discount_price())  );      		 
		 else
           $smarty->assign('price', price_tag($product->price) );         
 
         $smarty->assign('gst_price', price_tag($product->get_gst_price()) );   
		 	   
	   $best_seller .=  $smarty->fetch($tpl);		   
			   
	   if ( ($count % $product_per_row) == 0 ) 
	   $best_seller .=  "<br/><div style='clear:both'></div>";
	   
	   $count++;
	   
	 }
	 
  }

echo $best_seller;
  $current_category = "";
?>
