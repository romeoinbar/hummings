<?php 
include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/images.class.php"; 
include_once "$php5RootPath/classes/page.class.php"; 
include_once "$php5RootPath/includes/call_rating.php"; 
$page_session_name = "browsepage" . $id;


$prices = explode("_", $_REQUEST['id']);
$price1 = $prices[0];
$price2 = $prices[1];

$s= "SELECT COUNT(*) as c FROM #__product as p  WHERE price>$price1  AND price < $price2 AND p.publish=1 AND p.product_type <> 3 ORDER BY price"; 
$page = new Page($s);
$page->updatepage(); 
$per_page = $page->max_per_page = 20;
$cur_page = $php5Session->getVar($page_session_name);
//echo "***" . $php5Session->getVar($page_session_name);
if ( $cur_page == null)
$cur_page = 1;

$from = ( ($cur_page-1) *  $page->max_per_page) ; 

         $sort_by = "sorting";
		 if (isset($_POST['sort_by']))
		 if ($_POST['sort_by'] == 'price')
		 {
           $sort_by = "p.price";
		 }
		 
  $query = "SELECT * FROM #__product as  p  WHERE  price>$price1  AND price < $price2 AND p.publish=1  AND p.product_type <> 3 ORDER BY price ". $page->show_limit();
  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadAssocList();




  
  $count=1;
  $product_per_row= 4;
  $url = sefBuild($php5WebPath, 'index.php?o=eshop&m=by_price&t=outsite&task=show&id='.$_REQUEST['id']);
  
  $c_price = "";
  $sb = (isset($_POST['sort_by']))? $_POST['sort_by'] : 'sorting';
  if ($sb == 'price') $c_price = 'selected';
  
  
  $page->select = " &nbsp &nbsp; &nbsp; Sort by &nbsp;<form style='display:inline;' id='f_select' action='' method=post><select name=sort_by onChange=document.getElementById('f_select').submit()><option value='' >Default Setting</option><option value='price' $c_price>Price</option></select></form>";
  

		   
  $browse =  "<div style='width:790px; border:0px solid red; margin-left:-16px;'>". $page->showpage($url);
  $tpl = $php5RootPath. '/templates/en/eshop/browse/browse.tpl';
  $count = 1;  
  if (count($rows)>0)
  {
	 foreach ($rows as $row)
	 {  
		 $product = new Product();
		 $product->loadData(add_prefix('product'),'product_id',$row['product_id']);
		 $link_product = sefBuild($php5WebPath, "index.php?o=eshop&m=product_detail&t=outsite&task=show&id=" .$row['product_id'] , 1)  ;		 
		// $product->image = display_image_url($product->image);
         $smarty->assign('resized_image', "<a href='$link_product'>".return_resized_image(155, 155, $product->image)."</a>" );	
         $smarty->assign('product_id', $product->product_id );	
         $smarty->assign('rating', call_rating($product->product_id) );			 
         $smarty->assign('name', $product->name );	
         $smarty->assign('sku', $product->sku );			 		 
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

$browse .="</div>";
$smarty->assign('browse', $browse );	
  
?>
