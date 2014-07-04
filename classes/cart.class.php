<?php
class Cart
{

	
function unique_item($j, $pid)
{
 global $php5Session;	
 $max = $php5Session->getVar('counter');
  for ($i=1; $i<$max; $i++)
  {
	  if ($pid == $php5Session->getVar('pid'.$i))
	  {
	   if ($i == $j)
	   {

	      return true;
	   }
	   else
	   {
		  return false;  
	   } 
	  }
  }
  return false;
}

function get_qty($pid)
{
 global $php5Session;	
 $max = $php5Session->getVar('counter');
 $qty= 0;
  for ($i=1; $i<$max; $i++)
  {
	  if ($pid == $php5Session->getVar('pid'.$i))
          $qty = $qty +  $php5Session->getVar('qty'.$i);
  }
  return $qty;
}

function remove_btn($pid)
{
 global $php5Session;	
 global $php5WebPath;
 $max = $php5Session->getVar('counter');
 $str = "";
  for ($i=1; $i<$max; $i++)
  {
	  if ($pid == $php5Session->getVar('pid'.$i))
	  {
	    $url_remove = sefBuild($php5WebPath, 'index.php?o=eshop&m=cart&task=remove&id='.$i , 1);
        $str .= "<div style='height:35px; border:0px solid red; margin:0px; clear:both; '><a href='$url_remove'>Delete</a></div>";
	  }
  }
  return $str;
}

function remove_btn_add($pid, $a)
{
 global $php5Session;	
 global $php5WebPath;

	    $url_remove = sefBuild($php5WebPath, 'index.php?o=eshop&m=cart&task=remove_addon&id='. $pid ."_" . $a , 1);
        $str = "<div style='height:35px; border:0px solid red; margin:0px; clear:both; '><a href='$url_remove'>Delete</a></div>";

  return $str;
}

function remove_btn1($pid)
{
 global $php5Session;	
 global $php5WebPath;
 $max = $php5Session->getVar('counter');
 $str = "";
  for ($i=1; $i<$max; $i++)
  {
	  if ($pid == $php5Session->getVar('pid'.$i))
	  {
	    $url_remove = sefBuild($php5WebPath, 'index.php?o=eshop&m=cart&task=remove&id='.$i , 1);
        $str .= "<a href='$url_remove' style='color:#ccc; font-size:11px; font-weight:bold;'>Delete</a>";
	  }
  }
  return $str;
}

function remove_btn_add1($pid, $a)
{
 global $php5Session;	
 global $php5WebPath;

	    $url_remove = sefBuild($php5WebPath, 'index.php?o=eshop&m=cart&task=remove_addon&id='. $pid ."_" . $a , 1);
        $str = "<a href='$url_remove' style='color:#ccc; font-size:11px; font-weight:bold'>Delete</a>";

  return $str;
}

function get_option($pid)
{
 global $php5Session;		   
 $max = $php5Session->getVar('counter');

  for ($i=1; $i<$max; $i++)
  {
	  if ($pid == $php5Session->getVar('pid'.$i))
	  {
		  echo "***" . $php5Session->getVar('option'.$i);
          return $php5Session->getVar('option'.$i);
	  }
  }	
  	
}

function update_qty($qty, $pid)
{
 global $php5Session;	
 
 echo $option = $this->get_option($pid);
 if ($option == 'multiple')			  
 {
	  
    $max = $php5Session->getVar('counter');
    $q = 0;
     for ($i=1; $i<$max; $i++)
     {
	     if ($pid == $php5Session->getVar('pid'.$i))
	     {
            $q++;
					 $php5Session->setVar('qty'.$i , 1);
		    if (($q >= $qty) && ($q > 1))
		    $this->remove_cart($i);
	     }
     }	
     $diff = $qty-$q;
	 $j = $i-1;
     for ($i=1; $i<=($diff); $i++ )
     {
		 $j++;
	     $this->add_to_cart($pid,1);
		 $php5Session->setVar('option'.$j , 'multiple');	
		 
		 echo "j=$j ";
     }
 }
 else
 {

    $max = $php5Session->getVar('counter');
    $first = 1;
     for ($i=1; $i<$max; $i++)
     {
		 
	     if   ($pid == $php5Session->getVar('pid'.$i))
	     {

			 if ($first)
			 {
               $first = 0;

		       $php5Session->setVar('qty'.$i , $qty);				 
			 }
			 else
			 {
			    $this->remove_cart($i);		
				$i = $i-1;
			    echo "remove $i";				
			    echo "max " . $php5Session->getVar('counter');						 
			 }

	     }
     }	

 }
 $this->showVariables();
}

function get_recipient()
{
 global $php5Session;	
 $max = $php5Session->getVar('counter');
 $recipients = "";
 $total = 0;
 for ($i = 1; $i<$max; $i++)
 {
	 $selected_recipient = $php5Session->getVar('selected_recipient'. $i  );
	 
  if (check_inside( $recipients,  $selected_recipient) ){}
  else
  {
    $total += 1;  

   if 	 ($i == 1)
    $recipients .=  $php5Session->getVar('selected_recipient'. $i  );
   else
    $recipients .=  ",".$php5Session->getVar('selected_recipient'. $i  );   	  
  }

 }
 return $recipients;
 
} 	


function show_options($i)
{
 global $php5Session;	
 global $php5WebPath;

 $url_change = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=option_change&id='.$i , 1);
 $pid = $php5Session->getVar('pid'.$i);
		
 $s = "<form action='$url_change' method=post id=option$i > 
 <input type='hidden' name='pid' value=$pid>
 ";
 $option = $php5Session->getVar('option'.$i);
 if ($option != 'multiple')
 {
	 $s .= "<input type=radio style='border:0px;' name=option value='single' checked onChange=document.getElementById('option$i').submit(); ><img src='$php5WebPath/images/single.jpg'> <br/>
	 <input type=radio  style='border:0px;' name=option value='multiple'   onChange=document.getElementById('option$i').submit(); ><img src='$php5WebPath/images/multiple.jpg'>
	 ";
 }
 else
 {
	 $s .= "<input type=radio   style='border:0px;' value='single' name=option onChange=document.getElementById('option$i').submit(); ><img src='$php5WebPath/images/single.jpg'> <br/>
	 <input type=radio   style='border:0px;' value='multiple'  checked  name=option  onChange=document.getElementById('option$i').submit();><img src='$php5WebPath/images/multiple.jpg'>
	 ";	 
 }
 $s .= "</form>";
 return $s;
}


function option_change($pid, $option)
{
 global $php5Session;	
 $max = $php5Session->getVar('counter');
 $first = 1;
  for ($i=1; $i<$max; $i++)
  {

	  if (($pid == $php5Session->getVar('pid'.$i))  )
	  {
              $php5Session->setVar('option'.$i , "$option");
			  echo "$i -> $option"  ;
              
			  if ($first)
			  {
	  		    $qty = $this->get_qty($pid);			   
                $this->update_qty($qty, $pid);
				 $first = 0;
			  }
			 

	  }

  }	
  			  return ;
}


function get_total_recipient()
{
 global $php5Session;	
 
       $total_delivery = 0; 
	   $recipients = $this->get_recipient();	
       $recipient = explode(",", $recipients);
	   if ($recipients!= null)
	   {
		   $total_delivery = count($recipient);
	   }
	   return $total_delivery;
		    
} 	


function get_products_in_delivery($r)
{
 global $php5Session;	
 $max = $php5Session->getVar('counter');
 $products = "";
 $total = 0;
 for ($i = 1; $i<$max; $i++)
 {
	 $cr = $php5Session->getVar('selected_recipient'. $i  );
	 
   if ($cr == $r) 
   {
     $total += 1;  


    if 	 ($total == 1)
      $products .= $i;
    else
      $products .=  ",". $i;   	  
   }

 }

 return $products;
 
} 	
	
		
function change_reipient()
{
	global $php5Session;
	$recipient = $_POST['recipient' . $_POST['i']];
	$target= $_POST['i'];
    $php5Session->setVar('selected_recipient'. $target  , $recipient);		
} 
	
function add_new_reipient()
{
	global $php5Session;
	$name = $_POST['name'];
	$target= $_POST['target'];

	$total_recipient = 	$php5Session->getVar('total_recipient');
	$total_recipient += 1;
	$php5Session->setVar('total_recipient', ($total_recipient) );


	$php5Session->setVar('recipient_' . ($total_recipient), $name );
	
	if ($target)	
    $php5Session->setVar('selected_recipient'. $target  , $total_recipient);		
} 

	
function recipient_session_list($j)
{
	global $php5Session;
    global $php5DB_en;	
	
	$total_recipient = 	$php5Session->getVar('total_recipient');
	
	$o = "";
    $selected_recipient = $php5Session->getVar('selected_recipient' . $j); 
	$used_address_book =  $php5Session->getVar('used_address_book' ); 

	for ($i=1; $i<= $total_recipient; $i++)
	{
//	    echo $php5Session->getVar('recipient_address_book_id' . $i). "<br/>";
		$ad = $php5Session->getVar('recipient_address_book_id' . $i);
		
		$caption = $php5Session->getVar('recipient_' . $i); 
		
		if ($ad)
	    if (!$this->check_session_in_address_book($ad))
		$caption = " - ";
		
		  $selected = ( $selected_recipient == $i) ? "selected" : ""; 
		  $o .= "<option value='$i' $selected >". $caption	 ."</option>";
	}
	
	$user_id = $php5Session->getVar('user_id');
	if (  ($user_id) )
	{
      $php5Session->setVar('used_address_book' ,1); 
      $query = "SELECT * FROM #__address_book WHERE user_id=".$php5Session->getVar('user_id')." ORDER BY 	name";
      $php5DB_en->setQuery( $query );  
      $rows1 = $php5DB_en->loadAssocList();
	  $j = $total_recipient;
  	  foreach ($rows1 as $row)
	  {		  

		if (!$this->check_address_book_in_session($row['address_book_id']))
		{
//		  echo "load new <br/>";	
		  $j += 1; 		
		  $php5Session->setVar('recipient_' . $j,   $row['name'] . " " . $row['surname']  );
		  $php5Session->setVar('recipient_address_book_id' . $j, $row['address_book_id']);		
		  $o .= "<option value='$j'  >". 	  $row['name'] . " " . $row['surname'] ."</option>";		
		}
	  }
	  $php5Session->setVar('total_recipient' , $j);
	}
	 	
	return $o;
}



function check_session_in_address_book($id)
{
	global $php5Session;
    global $php5DB_en;	
	

      $query = "SELECT * FROM #__address_book WHERE user_id=".$php5Session->getVar('user_id')." ORDER BY 	name";
      $php5DB_en->setQuery( $query );  
      $rows1 = $php5DB_en->loadAssocList();
  	  foreach ($rows1 as $row)
	  {		  
        $compareid = $row['address_book_id']; 
		if ($compareid == $id)
		  return true;
	  }

	
	return false;
}


function check_address_book_in_session($address_book_id)
{
  global $php5Session;
  $total_recipient =  $php5Session->getVar('total_recipient');
  for ($i=0; $i<=$total_recipient;$i++)
  {

	  $compareid = $php5Session->getVar('recipient_address_book_id'.$i);
	  if ($compareid == $address_book_id)
	  return true;
	  
  }

  return false;
}

function show_select_recipients($pid)
{
  $str = "";	
  global $php5Session;	
  $max = $php5Session->getVar('counter');
  for ($i=1; $i<$max; $i++)
  {
		  if ($pid == $php5Session->getVar('pid'.$i))
		  {
			  $str .= "<div style='height:35px;'>  ". $this->show_select_recipient($i) . " <div id=alert$i style='display:none; color:red; background:white; position:absolute;'>Please select a Recipient</div> </div>";
		  }
  }
  
  return $str;
}

function show_select_recipient($i)
{
	global $php5Session;
    global $php5WebPath;
	global $env;
	
    $submit_path= sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&t=outsite&task=add_recipient', 1) ;
    $change_path= sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&t=outsite&task=change_recipient', 1) ;		
	if ($php5Session->getVar('user_id'))
	{
		
	}
	
	$s = "
	<form action='$change_path' method=post id='change_form$i' >
	<input type=hidden name=i value='$i'>
	<select name=recipient$i id=recipient$i onChange=recipeint(this,'add_recipient$i','$submit_path',$i) class='recipient' >";
	

    $selected_recipient = $php5Session->getVar('selected_recipient' . $i); 
	$s0 =  (( $selected_recipient != null) && ( $selected_recipient == 0) )  ? " selected " : "";
		
	$s .="<option value=-2>-Select-</option>";	
	$s .="<option value=0 $s0 >Myself</option>";
	$s .="<option value=-1>new recipient</option>";
	$s .= $this->recipient_session_list($i);	
	$s .= "</select></form><div id=add_recipient$i style='border:0px solid red; position:absolute;'></div>";	
	
	return $s;
}


function delete_delivery($r)
{
	global $php5Session;
    global  	$php5WebPath;
	
    $products = $this->get_products_in_delivery($r);
	echo $products;
	$product = explode(',', $products);
	foreach($product as $p)
	{
	  $this->remove_cart($p);

	}


}
function check_exist($pid)
{
 global $php5Session;	
 $max = $php5Session->getVar('counter');
 for ($i = 1; $i<$max; $i++)
 {
	if  ($php5Session->getVar('pid'. $i) == $pid)
	 return true;
 }
 return false;	
}

function get_first_i($pid)
{
 global $php5Session;	
 $max = $php5Session->getVar('counter');
 for ($i = 1; $i<$max; $i++)
 {
	if  ($php5Session->getVar('pid'. $i) == $pid)
	 return $i;
 }
 return 0;	
}

	
function add_to_cart($id,$qty)
{
 global $php5Session;	
 
 /**
 if ($this->check_exist($id))
 {
//   $php5Session->setVar('message', "This item already been added to cart.");
   return;
 }
 else
**/ 
 {  
   
     $counter = $php5Session->getVar('counter');	
     if (empty($counter))
     {
       $php5Session->setVar('counter' , 1);
       $counter = 1;
     }
     else
       $counter = $php5Session->getVar('counter');

     $i = $php5Session->getVar('counter');
     $php5Session->setVar('pid'. $i  , $id);
//     $php5Session->setVar('addon'. $i  , $addon );
     $php5Session->setVar('qty'. $i  , $qty );
     $php5Session->setVar('selected_recipient'. $i  , 0);	 
     $php5Session->setVar('total_addon'. $i  , 0);	    
	 
//	 echo 	$id . " " .  $php5Session->getVar('pid'. $i );

     $b = 0;
	 if (isset( $_POST['total_addon'] ))
	 for ($c=1; $c<= $_POST['total_addon'] ; $c++)
	 {
	   if (isset($_POST['addon'.$c]))
	   {
	     $b++;
         $php5Session->setVar('addon'. $i . "_" . $b , $_POST['addon'.$c]);	 
	   }	
         $php5Session->setVar('total_addon'. $i  , $b );	    
	 }
	 else  if (  $target_i = $this->get_first_i($id) )
     {
   	    for ($c=0; $c<= $php5Session->getVar('total_addon'. ($target_i+1)) ; $c++)
	    {
				$s2 =  $php5Session->getVar('addon'. ($target_i) . "_" . $c);  
	            $php5Session->setVar(  'addon'. $i . "_" . $c ,$s2 );	 
	            $php5Session->setVar(  'total_addon'. $i , $php5Session->getVar( 'total_addon'. ($target_i))   );						    
	    }	 
	 }	 
	 
	 
     $php5Session->setVar('counter' , $counter+1);	 
	 
 }
     return;	
}

function remove_cart($from)
{
 global $php5Session;	
 
 $max = $php5Session->getVar('counter');
 $php5Session->setVar('counter' , $max-1); 
 
 for ($i = $from; $i<$max; $i++)
 {
   $php5Session->setVar('pid'. $i , $php5Session->getVar('pid'. ($i+1)) );
   $php5Session->setVar('addon' . $i , $php5Session->getVar('addon'. ($i+1)) );
   $php5Session->setVar('qty' . $i , $php5Session->getVar('qty'. ($i+1)) );
   $php5Session->setVar('selected_recipient' . $i , $php5Session->getVar('selected_recipient'. ($i+1)) );  
   $php5Session->setVar('option' . $i , $php5Session->getVar('option'. ($i+1)) );     
   
   	 for ($c=0; $c<= $php5Session->getVar('total_addon'. ($i+1)) ; $c++)
	 {
				$s2 =  $php5Session->getVar('addon'. ($i+1) . "_" . $c);  
	            $php5Session->setVar(  'addon'. $i . "_" . $c ,$s2 );	 
	            $php5Session->setVar(  'total_addon'. $i , $php5Session->getVar( 'total_addon'. ($i+1))   );						    
	 }

	 
 }

 
 

}



function remove_cart_add($pid,$from)
{
 global $php5Session;	
 
 $max = $php5Session->getVar('counter');
 for ($i = $from; $i<$max; $i++)
 {
   if ( $php5Session->getVar('pid'.$i)== $pid  ) 
   { 
   	 for ($c=$from; $c<= $php5Session->getVar('total_addon'. ($i)) ; $c++)
	 {
				$s2 =  $php5Session->getVar('addon'. ($i) . "_" . ($c + 1) );  
	            $php5Session->setVar(  'addon'. $i . "_" . $c ,$s2 );	 
					    
	 }
	 $total_addon =$php5Session->getVar( 'total_addon'. $i );
	 $php5Session->setVar(  'total_addon'. $i ,  ($total_addon-1) );	
    } 
  }
}



function showvariables()
{
 global $php5Session;	
 $max = $php5Session->getVar('counter');	
 echo "
 Max : $max <br/>
 product : ";
 for ($i=1; $i<$max; $i++)
 {
	echo "<br/>_____________________________<br/> i : $i <br/>";	 
	echo "product_id : "  .    $php5Session->getVar('pid'.$i);
	echo "<br/>";
	echo "addon_id : " .    $php5Session->getVar('addon'.$i);
	echo "<br/>";
	echo "qty : " .    $php5Session->getVar('qty'.$i);		
	echo "<br/>";

	echo "option : " .    $php5Session->getVar('option'.$i);		
	echo "<br/>";	
	echo "selected_recipient : " .    $php5Session->getVar('selected_recipient'.$i);			
	echo "**" . $php5Session->getVar('total_addon'. $i) ;
   	 for ($c=1; $c<= $php5Session->getVar('total_addon'. $i) ; $c++)
	 {
	    
	           echo "<br/>" . $php5Session->getVar('addon'. $i . "_" . $c );	 	    
	 }
	 
 }
 
	global $php5Session;
	$total_recipient = 	$php5Session->getVar('total_recipient');
	
	$o = "";

    echo "<br/>Recipient<br/>";  
	for ($i=1; $i<= $total_recipient; $i++)
	{
		echo	$i . $php5Session->getVar('recipient_' . $i) .  "recipient_address_book_id : " .    $php5Session->getVar('recipient_address_book_id'.$i)	  . "<br/>";
	}
	 
}


function cart_get_rate($product,$addon_product,$coupon_code, $i)
{
 global  $php5DB_en;	
 global  $php5Session;	  
 	
	$r = $r1 = $r2 = array(
    "addon_rate" => 0,
    "product_rate" => 0,
	"product_n_addon" => 0,
	"coupon" => 'no',
	"discount_type" => 'ZD03',	
	"discount_value" => 0		
    );
	
  
  
  
  
  
  
  if ($product->get_discount_price())
  {
  if ($product->discount_type == 1)
  {
		  $r1['discount_type'] = "ZD02";	  
		  $r1['discount_value'] = $product->discount_value 	;	  		  	  
  }
  else if ($product->discount_type == 2)
  {
		  $r1['discount_type'] = "ZD03";	  	
		  $r1['discount_value'] = $product->discount_value 	;	  			    
  }
  }
  $r1['product_rate']  = ($product->get_discount_price() ) ? $product->get_discount_price() : $product->price;	
  
  
  $r2['product_rate']  =  $product->price;	  
  $query = "SELECT COUNT(*) FROM #__coupon WHERE  coupon_code='".$coupon_code."'  ";
  $php5DB_en->setQuery( $query );
  $result = $php5DB_en->loadResult();
   if ($result)
   {

	 $coupon = new Coupon();
	 $coupon->loadData(add_prefix('coupon'), 'coupon_code', $coupon_code );  
	 
	 if ( $this->coupon_valid_for_product($coupon , $php5Session->getVar('pid'.$i) )  ) 
	 {  	    
	   if ($coupon->discount_type==1)
	   {

		  $discount_rate = (100 - $coupon->value)/100;
		  $r2['product_rate']  = $r2['product_rate']*$discount_rate;	  	
		  $r2['discount_type'] = "ZD02";	      
		  $r2['discount_value'] = $coupon->value;	  			  
	   }
	   else if ($coupon->discount_type==2)
	   {
		  global $discounted;
		  
		  if ($discounted < $coupon->value)
		  {
		    $r2['product_rate']  = $r2['product_rate']  - $coupon->value;

		    $r2['discount_type'] = "ZD03";	  	
		    $r2['discount_value'] = $coupon->value;	  		  	  		
		  }
	   }
	 }
   }
   

  if ($r1['product_rate'] < $r2['product_rate'])
  {

    $r['product_rate']  =  $r1['product_rate'];
    $r['discount_type'] =  $r1['discount_type'];
    $r['discount_value'] = $r1['discount_value']; 	
  }
  else
  {

    $r['product_rate']  =  $r2['product_rate'];
    $r['discount_type'] =  $r2['discount_type'];
    $r['discount_value'] = $r2['discount_value']; 		  
  }


  $r['discounted']  =  $product->price - $r['product_rate'];
//  echo " $product->price - " . $r['product_rate']. " = " . ( $product->price - $r['product_rate']  );

  $max_addon =   $php5Session->getVar( 'total_addon'.$i);
  $p = new Product();
  $r['product_n_addon'] =  $r['product_rate'];
   	 for ($c=1; $c <=  $max_addon  ; $c++)
	 {
				$addon_id =  $php5Session->getVar('addon'. $i ."_" . $c);
                $p->loadData(add_prefix('product') , 'product_id', $addon_id);	
                $r['product_n_addon']+= $p->price ; 		
	            					    
	 }
	   
  return $r;
}



function cart_get_ratex($product,$addon_product,$coupon_code, $i)
{
 global  $php5DB_en;	
 global  $php5Session;	  
 	
	$r = $r1 = $r2 = array(
    "addon_rate" => 0,
    "product_rate" => 0,
	"product_n_addon" => 0,
	"coupon" => 'no',
	"discount_type" => 'ZD03',	
	"discount_value" => 0		
    );
	
  
  
  
  
  
  
  if ($product->get_discount_price())
  if ($product->discount_type == 1)
  {
		  $r1['discount_type'] = "ZD02";	  
		  $r1['discount_value'] = $product->discount_value 	;	  		  	  
  }
  else if ($product->discount_type == 2)
  {
		  $r1['discount_type'] = "ZD03";	  	
		  $r1['discount_value'] = $product->discount_value 	;	  			    
  }
  
  $r1['product_rate']  = ($product->get_discount_price() ) ? $product->get_discount_price() : $product->price;	
  $r1['addon_rate'] = ($addon_product->get_discount_price2($product->discount_value, $product->discount_type) ) ? $addon_product->get_discount_price2($product->discount_value, $product->discount_type) : $addon_product->price; 
  $r1['product_n_addon'] = $r1['product_rate'] + $r1['addon_rate'];
  

  
  $r2['product_rate']  =  $product->price;	
  $r2['addon_rate'] = $addon_product->price; 
  $r2['product_n_addon'] = $r2['product_rate'] + $r2['addon_rate'];   
  
  $query = "SELECT COUNT(*) FROM #__coupon WHERE  coupon_code='".$coupon_code."'  ";
  $php5DB_en->setQuery( $query );
  $result = $php5DB_en->loadResult();
   if ($result)
   {
	 $coupon = new Coupon();
	 $coupon->loadData(add_prefix('coupon'), 'coupon_code', $coupon_code );  
	 
	 if ( $this->coupon_valid_for_product($coupon , $php5Session->getVar('pid'.$i) )  ) 
	 { 
	  	    
	   if ($coupon->discount_type==1)
	   {
		  $discount_rate = (100 - $coupon->value)/100;
		  $r2['addon_rate']  = $r2['addon_rate']*$discount_rate;
		  $r2['product_rate']  = $r2['product_rate']*$discount_rate;
		  $r2['product_n_addon']  = $r2['product_n_addon']*$discount_rate;		  	
		  $r2['discount_type'] = "ZD02";	      
		  $r2['discount_value'] = $coupon->value;	  			  
	   }
	   else if ($coupon->discount_type==2)
	   {
		  $r2['addon_rate']  = $r2['addon_rate']  - $coupon->value;
		  $r2['product_rate']  = $r2['product_rate']  - $coupon->value;
		  $r2['product_n_addon']  = $r2['product_n_addon']  - $coupon->value;	
		  $r2['discount_type'] = "ZD03";	  	
		  $r2['discount_value'] = $coupon->value;	  		  	  			
	   }
	 }
   }
   

  if ($r1['product_n_addon'] < $r2['product_n_addon'])
  {

    $r['product_rate']  =  $r1['product_rate'];
    $r['addon_rate'] =  $r1['addon_rate'];
    $r['product_n_addon'] = $r1['product_n_addon']; 	
    $r['discount_type'] =  $r1['discount_type'];
    $r['discount_value'] = $r1['discount_value']; 	
  }
  else
  {
 
    $r['product_rate']  =  $r2['product_rate'];
    $r['addon_rate'] =  $r2['addon_rate'];
    $r['product_n_addon'] = $r2['product_n_addon']; 	
    $r['discount_type'] =  $r2['discount_type'];
    $r['discount_value'] = $r2['discount_value']; 		  
  }

    $r['discounted']  =  $product->price - $r['product_rate'];

  $max_addon =   $php5Session->getVar( 'total_addon'.$i);
 
 
 
 
 
 
 
 
 
 
  $p = new Product();
  $r['product_n_addon'] =  $r['product_rate'];
   	 for ($c=1; $c <=  $max_addon  ; $c++)
	 {
				$addon_id =  $php5Session->getVar('addon'. $i ."_" . $c);
                $p->loadData(add_prefix('product') , 'product_id', $addon_id);	
                $r['product_n_addon']+= $p->price ; 		
	            					    
	 }
	   
  return $r;
}


function coupon_valid_for_product($coupon, $pid)
{
	global $php5DB_en;
	global $php5Session;
	if (($coupon->use == 1) && ($coupon->redemption_date != '0000-00-00') )
	  return false;
	if ($coupon->min_purchase > $php5Session->getVar('cart_total') )
	  return false;	  

	if ($coupon->apply_to_category == 'all' )
	{
				  return true;		
	}
	else if ($coupon->apply_to_product != '')
	{
		return check_inside($coupon->apply_to_product , $pid );
	}
	else if ($coupon->apply_to_category != '')
	{
      $query = "SELECT * FROM #__product_category_link WHERE  product_id=$pid ";
      $php5DB_en->setQuery( $query );  
      $rows = $php5DB_en->loadAssocList();
  	  foreach ($rows as $row)
	  {

		  if ( check_inside($coupon->apply_to_category , $row['product_category_id']  ) )
		  return true;		  
	  }
	}
	return false;
}


function apply_coupon_code()
{
  global  $php5DB_en;	
  global  $php5Session;	 
  
  $ok=true;
  
  $query = "SELECT COUNT(*) FROM #__coupon WHERE  coupon_code='".$_POST['coupon_code']."'  AND  
             ( expiry_date='0000-00-00'  OR expiry_date > '". date("Y-m-d")."') ";
  $php5DB_en->setQuery( $query );

  $result = $php5DB_en->loadResult();
   if ($result){
	   $coupon = new Coupon();
	   $coupon->loadData(add_prefix('coupon'), 'coupon_code', $_POST['coupon_code'] );   
	   $max = $php5Session->getVar('counter');  	
		if (!$max){
			$ok= false;
			$php5Session->setVar('coupon_code', 0);			
			$php5Session->setVar('msg', 'Please add products to cart.');	
		} else if ($coupon->apply_to_category!="") {
			$product = array();
			$cat = array();
			$f1= false;				
			for ($i=1; $i<$max; $i++){
				$query = "SELECT product_category_id FROM #__product_category_link WHERE product_id =".$php5Session->getVar('pid'.$i);
				$php5DB_en->setQuery( $query );
				if (array_search($php5DB_en->loadResult(), explode(",", $coupon->apply_to_category))!==false){
					$f1= true;		
				}
			}
			if (!$f1){
				$php5Session->setVar('msg', 'The Coupon Code has not been used for the products in your cart.');	 
			    $php5Session->setVar('coupon_code', 0);
				$ok= false;	
			}	
			
		} else if ($coupon->apply_to_product!=""){
			$product = array();
			$f2= false;
			for ($i=1; $i<$max; $i++){
				if (array_search($php5Session->getVar('pid'.$i), explode(",", $coupon->apply_to_product))!==false){
					$f2 = true;
				}
			}
			if (!$f2){
				$php5Session->setVar('msg', 'The Coupon Code has not been used for the products in your cart.');	 
			    $php5Session->setVar('coupon_code', 0);	
				$ok= false;
			}			
		} 
		if(($coupon->use>1)&&($coupon->use = count($list_order))){
			  $list_order = explode(',',$coupon->order_id);
			  $php5Session->setVar('msg', 'The Coupon Code has been used more than permission.');	 
			  $php5Session->setVar('coupon_code', 0);	
			  $ok= false;
		  } else if (($coupon->use == 1) && ($coupon->redemption_date != '0000-00-00')){	 
			  $php5Session->setVar('msg', 'The Coupon Code has been used before.');	  
			  $php5Session->setVar('coupon_code', 0);	
			  $ok= false;
		  } else if ($coupon->min_purchase > $php5Session->getVar('cart_total') ){
			  $php5Session->setVar('msg', "You need to purchase more than S$" . $coupon->min_purchase . " to use this coupon" );
			   $php5Session->setVar('coupon_code', 0);	
			   $ok= false;			 
		  } else {		
		  	 if ($ok){		  	 
			  $php5Session->setVar('coupon_code', $_POST['coupon_code']);
			  $php5Session->setVar('msg', 'Coupon Code applied');
			 }
		  }		
   } else   {
 	  $php5Session->setVar('msg', 'Coupon Code not found.');
   }
 }	
}


function save_delivery_to_session($i)
{
  global  $php5Session;	  
  $php5Session->serVar('name' . $i , $_POST['name'.$i]);	  	
}


function get_order_item_price($uit_price,$discount_type, $discount_value)
{
  switch($discount_type)
  {
	case 'ZD02':
  	          return $unit_price* (100 - $discount_value) / 100;
	          break;
	case 'ZD03':
		      return $unit_price - ($discount_value) ;
	          break;			    
  }
  return $uit_price;

}


function get_i_from_recipient($r)
{
 global $php5Session;	
 $max = $php5Session->getVar('counter');
  for ($i=1; $i<$max; $i++)
  {
     if ( $php5Session->getVar('selected_recipient'.$i) == $r )
	 return $i;
  }
  return 0;
}


?>