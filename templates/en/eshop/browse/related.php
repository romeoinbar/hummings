<?php 
include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/images.class.php"; 
include_once "$php5RootPath/includes/call_rating.php"; 

  $query = "SELECT * FROM #__product_related_link WHERE product_id=$id ";
  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadAssocList();
  
  $count=1;
  $product_per_row= 6;
  $related = "";
  $tpl = $php5RootPath. '/templates/en/eshop/browse/related.tpl';
  
  if (count($rows)>0)
  {
	 foreach ($rows as $row)
	 {  
		 $product = new Product();
		 $product->loadData(add_prefix('product'),'product_id',$row['related_id']);
		 $link_product = sefBuild($php5WebPath, "index.php?o=eshop&m=product_detail&t=outsite&task=show&id=" .$row['related_id'] , 1)  ;		 
		 //$product->image = display_image_url($product->image);
         $smarty->assign('resized_image', "<a href='$link_product'>".return_resized_image(90, 90, $product->image)."</a>" );	
         $smarty->assign('product_id', $product->product_id );	
         $smarty->assign('sku', $product->sku );			 
         $smarty->assign('rating', call_rating($product->product_id) );			 
         $smarty->assign('name', $product->name );			 
		 if ($product->get_discount_price())
           $smarty->assign('price', "<span style='font-size:10px; text-decoration: line-through'><stroke>". price_tag($product->price). "</stroke></span> ".  price_tag($product->get_discount_price())  );      		 
		 else
           $smarty->assign('price', price_tag($product->price) );           
 
         $smarty->assign('gst_price', price_tag($product->get_gst_price()) );   
		 	   
	   $related .=  $smarty->fetch($tpl);		   
			   
	   if ( ($count % $product_per_row) == 0 ) 
	   $related .=  "<br/><div style='clear:both'></div>";
	   
	   $count++;
	   
	 }
$diplay_related = "
<div style=' float:right; width:100%; margin-left:0px;'> 
  <div style='padding-bottom:10px'>
    <h2 style='color:#a90061;'>You may also like</h2><br/>
  </div>
  <div style='padding05px; border:0px solid #ccc; background:#fff;'>	
	 $related
  </div>	 
   <div style='clear:both;'></div>

 <div style='clear:both;'>
   
 </div> 


";	 
  }
  else
  {
	$diplay_related = "";   
  }


$smarty->assign('related', $diplay_related );	
  
?>