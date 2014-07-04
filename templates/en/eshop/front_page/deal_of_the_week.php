<?php
include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/images.class.php"; 
include_once "$php5RootPath/includes/call_rating.php"; 


  
   $current_category = "217"; 
$deal_of_the_week = "";

  $query = "SELECT * FROM #__product_category_link WHERE product_category_id=217 ORDER BY sorting LIMIT 0,1";
  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadAssocList();
  
  if (count($rows)>0)
  {
	 foreach ($rows as $row)
	 {  
		 $product = new Product();
		 

		 $product->loadData(add_prefix('product'),'product_id',$row['product_id']);
		 $link_product = sefBuild($php5WebPath, "index.php?o=eshop&m=product_detail&t=outsite&task=show&id=" .$row['product_id'] , 1)  ;		 
		 // $product->image = display_image_url($product->image);
         $smarty->assign('resized_image', "<a href='$link_product'>".return_resized_image(180, 180, $product->image)."</a>" );	
         $smarty->assign('product_id', $product->product_id );	
         $smarty->assign('name', $product->name );	
        $smarty->assign('sku', $product->sku );			
        $smarty->assign('description', $product->show_short_description() );				
         $smarty->assign('rating', call_rating($product->product_id) );	
		 
         $smarty->assign('link_more', "<a href='". $link_product .
		  "'  style='font-size:11px;color:#666;'><strong>More Details &raquo;</strong></a>" );			 


         $smarty->assign('link_category', "<a href='". 
		  sefBuild($php5WebPath, "index.php?o=eshop&m=by_category&t=outsite&task=show&id=217" , 1) .
		  "' style='font-size:11px;color:#666;'><strong>See all Deal of the Week &raquo;</strong></a>" );	
		  		  		 			 
		 if ($product->get_discount_price())
           $smarty->assign('price', "<span style='font-size:10px; text-decoration: line-through'><stroke>". price_tag($product->price). "</stroke></span> ".  price_tag($product->get_discount_price())  );      		 
		 else
           $smarty->assign('price', price_tag($product->price) );       
 
         $smarty->assign('gst_price', price_tag($product->get_gst_price()) );  
		  
       $tpl = $php5RootPath. '/templates/en/eshop/front_page/deal_of_the_week.tpl';		 	   
	   $deal_of_the_week .=  $smarty->fetch($tpl);				   
	   
	 }
	 
  }

$smarty->assign('deal_of_the_week', $deal_of_the_week );	
  $current_category = "";
?>
