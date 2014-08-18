<?php 
include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/images.class.php"; 
include_once "$php5RootPath/includes/call_rating.php"; 

  $query = "SELECT * FROM #__product_addon_link WHERE product_id=$id  ORDER BY sorting";
  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadAssocList();

  $addon = '';  
  $count=1;
  $product_per_row= 5;
  $browse = "";
//  $tpl = $php5RootPath. '/templates/en/eshop/browse/browse.tpl';
  
  if (count($rows)>0)
  {
	   $addon = "
      <div style=' margin-top:15px; padding:15px; border:0px solid #ddd; text-align:left;'>
        <h2>Add ons </h2> 
         <div style='clear:both;'></div>   
	   ";  
	 $c = 0;  
	 foreach ($rows as $row)
	 {  
	   $c++; 
	   $addon_id = $row['addon_id']; 
	   $product = new Product();
	   $product->loadData(add_prefix('product'),'product_id',$row['addon_id']);
		
	   $name = $product->name;
	   $price = price_tag($product->price);
	    	   
       $image = display_image_url( $product->image );
	   $image = return_resized_image(80, 80, $image);
       $addon .= "<div style='padding:5px; text-align:center; float:left;'>
	                  <div style='width:100px; height:100px; text-align:center;'><table cellpadding=0 cellspacing=0  height=100 ><tr><td valign=midle>$image</td></tr></table></div>
					  <table>
					    <tr>
						  <td> <input type='checkbox' name=addon$c value='$addon_id'></td>
						  <td> </td>
						  <td><b>$name</b> <br/> $price </td>
						</tr>
					  </table>
					  
					  
	              </div>";

		if ( ($count % $product_per_row) == 0 ) 
	   $addon .=  "<br/><div style='clear:both'></div>";


	    
	 }
	 $addon .= "
	 
				  <input type=hidden name=total_addon value=$c >
	         <div style='clear:both;'></div>
      </div>";
 
       $smarty->assign('addon', $addon );   	 	 
  }
  else
  {
	     $addon= "<input type=hidden name=addon value=0>";
         $smarty->assign('addon', $addon );   	  
  }

?>
