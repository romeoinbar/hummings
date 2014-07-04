<?php 
include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/images.class.php"; 
include_once "$php5RootPath/includes/call_rating.php"; 
$smarty->assign('user_email', ($php5Session->getVar('user_email')!='')?$php5Session->getVar('user_email'):'');

$pageURL = sefBuild($php5WebPath, "index.php?o=eshop&m=product_detail&t=outsite&task=show&id=" .$id , 1);
$php5Session->setVar('url_redirect', $pageURL);
$smarty->assign('pageURL', urlencode($pageURL));		

  $query = "SELECT * FROM #__product WHERE product_id=$id ";
  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadAssocList();
  $row = $rows['0'];

   $product_detail = ""; 

		 $product = new Product();
		 $product->loadData(add_prefix('product'),'product_id',$row['product_id']);
		 $link_product = sefBuild($php5WebPath, "index.php?o=eshop&m=product_detail&t=outsite&task=show&id=" .$row['product_id'] , 1)  ;		 
		 //$product->image = display_image_url($product->image);
		 
        /* $smarty->assign('extra_header', '
		 <meta property="fb:app_id" content="242802689075885"/>
		<meta property="og:title" content="'.$product->name.'"/>
		<meta property="og:image" content="'.$product->image.'"/>		 
		 <link rel="image_src"  href="'.$product->image.'" />' );*/
		 $smarty->assign('extra_header', '');
         $smarty->assign('title',$product->name );
		 
		 if (($product->quantity==0) || ($product->availability==2))
		 	$resized_image = "<a href='".$php5WebPath.'/'.$product->image."' rel='lightbox'>".return_resized_image_oos(278, 500,$product->image)."</a>";
		 else
			$resized_image = "<a href='".$php5WebPath.'/'.$product->image."' rel='lightbox'>".return_resized_image(278, 500, $product->image)."</a>"; 
         $smarty->assign('resized_image', $resized_image );
         $smarty->assign('product_id', $product->product_id );	
         $smarty->assign('rating_product', display_rating($product->product_id) );			 
         $smarty->assign('name', $product->name );
		 
		 /*if ($product->availability!=1)
		 	$notify = 1;
		 elseif ()*/
		 
		  $smarty->assign('quantity_of_product', $product->quantity );
				 $smarty->assign('product_image', $product->image );
				 $smarty->assign('link_product', $link_product );			 
		 if ($product->get_discount_price())
           $smarty->assign('price', "<span style='font-size:10px; text-decoration: line-through'><stroke>". price_tag($product->price). "</stroke></span> ".  price_tag($product->get_discount_price())  );      		 
		 else
           $smarty->assign('price', price_tag($product->price) );           
 
         $smarty->assign('product_id', $product->product_id );
         $smarty->assign('sku', $product->sku );		 

		 		 		
         $smarty->assign('gst_price', price_tag($product->get_gst_price()) ); 
		 
         $smarty->assign('description', nl2br( $product->show_description()) ); 		 
		   
         $smarty->assign('lead_time', $product->show_availability() ); 
		 
		 if ($product->available_date > date('Y-m-d'))
         $smarty->assign('lead_time', "<font size=+1><b>From " . date( "d M Y" , strtotime($product->available_date) ) . "</b></font>"  ); 


		 if ($product->lead_time >  0)
         $smarty->assign('show_lead_time', "This item requires " . $product->lead_time. "hours to be prepared. <br/>"  ); 
		 else
         $smarty->assign('show_lead_time', ""  ); 		 
		 
		 
		 $smarty->assign('url_add', sefBuild($php5WebPath , 'index.php?o=eshop&m=cart&task=add', 1 )  );          
         if (($product->show_availability() == 'out of stock')||($product->quantity==0)){		
		 	$smarty->assign('button','');					
		 } else {
			$smarty->assign('button',  "<input type=image src='$php5WebPath/images/order_button1.jpg' style='border:none; height:54px; width:417px;'>");		   
			
		 }
		 if (($product->availability== 2)||($product->quantity==0))
		 	$smarty->assign('is_notify', 1 );	
		 else
			$smarty->assign('is_notify', 0 );
		// $smarty->assign('button',  "<input type=image src='$php5WebPath/images/order_button1.jpg' style='border:none; height:54px; width:417px;'>");	
         $smarty->assign('php5WebPath', $php5WebPath ); 		 


  $addon_image= "";
  $query = "SELECT * FROM #__addon_image WHERE product_id=".$product->product_id." ";

  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadAssocList();  
  if (count($rows)>0)
  {
	 foreach ($rows as $row)
	 {   
		 $addon_image .= "
		 <div style='float:left; padding-top:15px;  border:0px solid #ccc;'>
		   <table callspacing=0 cellpadding=0>
		    <tr>
			  <td width=70 height=70 valign=middle align=center>
		   <a href='". $php5WebPath. "/". $row['image']."' rel='lightbox[d]'>".return_resized_image(70, 70, $row['image'])."</a>
		     </td>
			</tr>  
		   </table>
		   </div>";
	 }
	 
  }
  

         $smarty->assign('addon_image', $addon_image ); 
        include_once "$php5RootPath/templates/en/eshop/browse/addon.php"; 		
  	   include_once "$php5RootPath/templates/en/eshop/browse/product_review.php";	
	   
$php5DB_en->setQuery("SELECT count(rating_review_id) FROM #__cart_rating_reviews WHERE published=1 and product_id=".$id);	   
$count_rating = $php5DB_en->loadResult();
$smarty->assign('count_rating', intval($count_rating) );

$php5DB_en->setQuery("SELECT count(rating_review_id) FROM #__cart_rating_reviews WHERE published=1 and review_rates=1 and product_id=".$id);	   
$count_rating1 = $php5DB_en->loadResult();
$smarty->assign('count_rating1', intval($count_rating1) );

$php5DB_en->setQuery("SELECT count(rating_review_id) FROM #__cart_rating_reviews WHERE published=1 and review_rates=2 and product_id=".$id);	   
$count_rating2 = $php5DB_en->loadResult();
$smarty->assign('count_rating2', intval($count_rating2) );

$php5DB_en->setQuery("SELECT count(rating_review_id) FROM #__cart_rating_reviews WHERE published=1 and review_rates=3 and product_id=".$id);	   
$count_rating3 = $php5DB_en->loadResult();
$smarty->assign('count_rating3', intval($count_rating3) );

$php5DB_en->setQuery("SELECT count(rating_review_id) FROM #__cart_rating_reviews WHERE published=1 and review_rates=4 and product_id=".$id);	   
$count_rating4 = $php5DB_en->loadResult();
$smarty->assign('count_rating4', intval($count_rating4) );

$php5DB_en->setQuery("SELECT count(rating_review_id) FROM #__cart_rating_reviews WHERE published=1 and review_rates=5 and product_id=".$id);	   
$count_rating5 = $php5DB_en->loadResult();
$smarty->assign('count_rating5', intval($count_rating5) );

$smarty->assign('is_logined', ($php5Session->getVar('user_id'))?1:0); 
$chk = 0;
if ($php5Session->getVar('user_id')){
	$php5DB_en->setQuery("SELECT notify_id FROM #__notify_quantity WHERE product_id=".$id." AND user_id=".$php5Session->getVar('user_id'));
	if ($php5DB_en->loadResult())
		$chk =1;
}
$smarty->assign('chk', $chk); 

$tpl = $php5RootPath. '/templates/en/eshop/browse/product_detail.tpl';			 	   
$product_detail .=  $smarty->fetch($tpl);

$smarty->assign('product_detail', $product_detail );	

?>