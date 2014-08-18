<?php 
include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/images.class.php"; 
include_once "$php5RootPath/includes/call_rating.php"; 

  $query = "SELECT * FROM #__product_occasions_link WHERE occasions_id=$id  ORDER BY sorting";
  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadAssocList();
  
  $count=1;
  $product_per_row= 4;
  $browse = "";
  $tpl = $php5RootPath. '/templates/en/eshop/browse/browse.tpl';
  
  if (count($rows)>0)
  {
	 foreach ($rows as $row)
	 {  
		 $product = new Product();
		 $product->loadData(add_prefix('product'),'product_id',$row['product_id']);
		 $link_product = sefBuild($php5WebPath, "index.php?o=eshop&m=product_detail&t=outsite&task=show&id=" .$row['product_id'] , 1)  ;		 
		 $product->image = display_image_url($product->image);
         $smarty->assign('resized_image', "<a href='$link_product'>".return_resized_image(150, 150, $product->image)."</a>" );	
         $smarty->assign('product_id', $product->product_id );	
         $smarty->assign('rating', call_rating($product->product_id) );			 
         $smarty->assign('name', $product->name );			 
		 if ($product->get_discount_price())
           $smarty->assign('price', "<span style='font-size:10px; text-decoration: line-through'><stroke>". price_tag($product->price). "</stroke></span> ".  price_tag($product->get_discount_price())  );      		 
		 else
           $smarty->assign('price', price_tag($product->price) );           
 
         $smarty->assign('gst_price', price_tag($product->get_gst_price()) );   
		 	   
	   $browse .=  $smarty->fetch($tpl);		   
			   
	   if ( ($count % $product_per_row) == 0 ) 
	   $browse .=  "<br/><div style='clear:both'></div>";
	   
	   $count++;
	   
	 }
  }
  else
  {
//	$browse = "<div style='padding:15px;'>no record found.</div>";   
  }

$smarty->assign('browse', $browse );	
  
?>
