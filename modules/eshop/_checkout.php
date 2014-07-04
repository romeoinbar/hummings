<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);

include 'includes/select_input.php';
include_once 'classes/cart.class.php';
include_once 'classes/tables.class.php';
include_once 'classes/images.class.php';
//$smarty->set_compile_path(sprintf($php5TempaltePath, $language, 'eshop'));
include 'templates/en/eshop/left/left_menu.php';
$php5Session->setVar('begin_checkout' , 1);
//echo "*************" . $php5Session->getVar('begin_checkout' );

$sid = session_id();
$smarty->assign('sid',  $sid  );	

//////////////////////////////
$smarty->assign('url_back',  sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account', 1) );	
$url_register =   sefBuild($php5WebPath, 'index.php?o=eshop&m=register&task=register', 1) ;			
$url_review =   sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=review', 1) . "?sid=$sid" ;		
$smarty->assign('url_review',  $url_review  );		
$url_cart = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=show' , 1);
$url_cart_qty_change = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=cart_qty' , 1);	  	  
$url_billing = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=billing_address' , 1);	
$url_shipping = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=shipping_address' , 1);	
$url_shipping2 = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=shipping_address2' , 1);	
$url_shipping_book = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=shipping_address_book' , 1);	
$url_shipping_book_use = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=shipping_address_book_use' , 1);	
$url_delivery_date = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=delivery_date' , 1);	
$url_delivery_date2 = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=delivery_date2' , 1);	
$url_message = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=message' , 1);	
$url_message2 = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=message2' , 1);	
$url_confirm = sefBuild($php5WebPathS, 'index.php?o=eshop&m=checkout&task=confirm' , 1);	
$url_success = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=success' , 1);	
$url_receipt = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=receipt' , 1);	
$url_confirm2 = sefBuild($php5WebPathS, 'index.php?o=eshop&m=checkout&task=confirm2' , 1);
$url_history= sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=order_history' , 1);
$smarty->assign('url_history',  $url_history );	
$smarty->assign('url_checkout_option',  sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=checkout1' , 1) );	
$smarty->assign('url_billing_address',  sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=billing_address' , 1) );	
$smarty->assign('url_billing_address2',  sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=billing_address2' , 1) );	    
$smarty->assign('url_login', sefBuild($php5WebPath, 'index.php?o=eshop&m=login&t=outsite', 1));	
$smarty->assign('url_reset_password', sefBuild($php5WebPath, 'index.php?o=eshop&m=register&task=show&t=outsite', 1));		
$smarty->assign('url_shipping_address',  $url_shipping  );	
$smarty->assign('url_shipping_address2',  $url_shipping2  );	
$smarty->assign('url_shipping_address_book',  $url_shipping_book  );	
$smarty->assign('url_shipping_address_book_use',  $url_shipping_book_use  );	
$smarty->assign('url_delivery_date',  $url_delivery_date  );	
$smarty->assign('url_delivery_date2',  $url_delivery_date2  );
$smarty->assign('url_message',  $url_message  );	
$smarty->assign('url_message2',  $url_message2  );
$smarty->assign('url_confirm',  $url_confirm  );	
$smarty->assign('url_confirm2',  $url_confirm2  );
$smarty->assign('shipping_address_load_user', sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=shipping_address_load_user&t=outsite', 1));	
// include 'templates/en/eshop/cart/show_sessions.php';	 


  
switch($task)
{
	
  	case 'notify' :

       include 'templates/en/eshop/cart/notify.php';	    
       $main = $smarty->fetch($tpl);	
	   	   	
	   	
	   break;	
	   	
  	case 'checkout1' :
       $php5Session->setVar('storepage',  sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&t=outsite&task=checkout1', 1)  );	
	   $login = $php5Session->getVar('user_id');
	   if ($login)
	   header( "Location: $url_billing");
       $main = "";	
       $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/checkout1.php');	
       $main .= $smarty->fetch($tpl);
	   break;
  	case 'billing_address' :
   	   validate_checkout();
	   if ( isset($_POST['checkout_type']))  $php5Session->setVar('checkout_type',$_POST['checkout_type'] ) ;
	   $user_id = $php5Session->getVar('user_id');
	   if ($user_id)  $php5Session->setVar('checkout_type', '') ;
       $php5Session->setVar('storepage',  sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&t=outsite&task=billing_address', 1)  );	


	   
	   	   
	   $smarty->assign('step',2);
	   $smarty->assign('done_step2',$php5Session->getVar('done_step2'));	   
	   $smarty->assign('done_step1',$php5Session->getVar('done_step1'));	   	   
       $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/steps.php');	
       $main = $smarty->fetch($tpl);	
		 $main.='
<style type="text/css">
.hiddenCountry  { display: none; }	
</style>
';	   
       $msg='';
	   if ($php5Session->getVar('message') != '')
	   $msg = "<div class='message'>".$php5Session->getVar('message')."</div>";   
	   $php5Session->setVar('message' , '');
	   $smarty->assign('msg',$msg );		   	   	
			
       include 'templates/en/eshop/cart/load_billing_address.php';	    
       $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/billing_address.php');	
       $main .= $smarty->fetch($tpl);		   	
	   break;		      				

  	case 'billing_address2' :
       $php5Session->setVar('done_step2',1);
       include 'templates/en/eshop/cart/push_billing_address.php';
	   
	   $message = $php5Session->getVar('message' );
	   if ($message != '' )
	   header( "Location: $url_billing");	
	   else	   	    
	   header( "Location: $url_review");	   	
	   break;		 

  	case 'delete_delivery' :
		   $cart = new Cart();
           $cart->delete_delivery($id); 
	   header( "Location: $url_shipping");			   
	   break;
		        				
  	case 'shipping_address' :
 	   $php5Session->setVar('item_earliest_date', '0000-00-00');	
	  $php5Session->setVar('item_lead_time',0);	 	   	
   	   validate_checkout();	
	   $main = "";	
	   $smarty->assign('step',1);
	   $smarty->assign('done_step2',$php5Session->getVar('done_step2'));	   
	   $smarty->assign('done_step1',$php5Session->getVar('done_step1'));	   	   
       $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/steps.php');	
       $main .= $smarty->fetch($tpl);	

       //$main .= "* Welcome to checkout process. Here you will key in shipping address for each recipients. If you want to manage your cart, click <a href='$url_cart'>here</a> to go back to previous step.<br/>";	
	   	   	
       $php5Session->setVar('storepage',  $url_shipping );	
	   
	   $cart = new Cart();
	   $product = new Product();
	   $addon_product = new Product();	   
//	   $cart->showvariables();
	   $recipients = $cart->get_recipient();	
       $recipient = explode(",", $recipients);
	   $d = 0;
	           $discounted = 0;
	   if ($id == '')  $id= 1;
	   
		 $main.='<script type="text/javascript">
// only for demo purposes
/*$.validator.setDefaults({
	submitHandler: function() {
		alert("submitted!");
	}
});*/
	
$.metadata.setType("attr", "validate");

$(document).ready(function() {
	$("#vForm").validate();
});
</script>
<style type="text/css">
.block { display: block; }
form.cmxform label.error { display: none; }	
.hiddenCountry  { display: none; }	
</style>
';		 
	   $main .= "<form action='$url_shipping2$id' method=post id='vForm' class='cmxform' >";
	   if ($recipients!= null)
	   {
		   $total_delivery = count($recipient);
           $smarty->assign('total_delivery', $total_delivery );		 		   
	   foreach ($recipient as $r )
	   { 
	   $d++;
	   if ($d==$id)
	   {
		  $chead = "cart_head2";
		  $cstyle= "";   
	   }
	   else
	   {
		  $chead = "cart_head";
		  $cstyle= " display:none; ";   		   
	   }
	   
		   
	   $to_target =  $php5Session->getVar('recipient_' . $r);
	   if ($r == 0)    $to_target = "Myself";  
			 $smarty->assign('to_target', $to_target);	   
	   
	   $url_delete = sefBuild($php5WebPath, "index.php?o=eshop&m=checkout&task=delete_delivery&id=$r" , 1); 
	   
	   if ($php5Session->getVar('message') != '')
	   $main .= "<div class='message'>".$php5Session->getVar('message')."</div>";
	   
	   $php5Session->setVar('message' , '');
	   
       $main .= "<div class='$chead' onClicks=showhide('cart_content$d') >
	   
	   <table width=990>
	      <tr>
		     <td>   Gift Purchase $d-$total_delivery &nbsp; <b>( $to_target  )</b></td>
			 <td align=right>
			 	   <div style=''>
	             <a href='$url_shipping$d'>Edit</a>&nbsp;&nbsp; &nbsp;     
				 <a href='$url_delete'>Delete</a>&nbsp;    
	                </div>
			 </td>
		  </tr>
	   </table>
	 

	   
	   </div><div  class='cart_content' id='cart_content$d'  style='$cstyle'>";	
 
 
       $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/product1.php');	
      	  if ($d==$id)
       $main .= $smarty->fetch($tpl);				 
       $max = $php5Session->getVar('counter');	


    
	   

        for ($j=1; $j<$max; $j++)
        {
 
		
		  $selected_recipient =  $php5Session->getVar('selected_recipient'.$j);	
	      if ($selected_recipient == $r)
	      {
//             $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/shipping_address.php');	
             $product->loadData(add_prefix('product'), 'product_id', $php5Session->getVar('pid' . $j) );

		    if ($d==$id)
			{					  
			  $plt = $php5Session->getVar('item_lead_time');	  
			   if ($product->lead_time > $plt) 	
			      $php5Session->setVar('item_lead_time', $product->lead_time);	 
				  
			   if ( 	  $product->available_date >  $php5Session->getVar('item_earliest_date')	   )     
			    $php5Session->setVar('item_earliest_date' , $product->available_date );
				
			}
				
             $addon_product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('addon'.$j));					 
			 $smarty->assign('obj', $product);
			 $smarty->assign('qty', $php5Session->getVar('qty'.$j));
			$qty = $php5Session->getVar('qty'.$j); 			 


	             $rp =  $cart->cart_get_rate($product,$addon_product, $php5Session->getVar('coupon_code'), $j );
				 $discounted += $rp['discounted'];				 
	             $rate = $rp['product_n_addon'];
	             $product_rate =  $rp['product_rate'];


	             $product_total = $product_rate * $qty;
                 $total_rate = $qty * $rate;	 	
		         $smarty->assign('rate', price_tag($product_rate));
		         $smarty->assign('total_rate', price_tag($product_total) );				  
		         $smarty->assign('url_detail', sefBuild($php5WebPath,'index.php?o=eshop&m=product_detail&task=show&id='. $product->product_id )  );
		         $smarty->assign( 'pimage',  $product->image(70,70,$product->image)  );				  				 

	             $addon_name="";


     $addon_tb  = "";
    for ($a=1; $a<= $php5Session->getVar('total_addon'.$j); $a++)
	{

		
      $addon_product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('addon'.$j . "_" . $a));			  
	  $addon_image = $addon_product->image(200,200,$addon_product->image);
	  $addon_thumb = "<a href='' rel=tooltip title='$addon_image' >" . $addon_product->image(70,70,$addon_product->image). "</a>";
	  $addon_name = "<b>Add on : ".$addon_product->name . "</b>";
	  $addon_price = price_tag(  $addon_product->price );
	  $addon_total = price_tag( $addon_product->price * $qty) ;
	  $addon_tb .="
	               <tr>
	                 <td width=100 height=100 align=center valign=middle><a href='' rel=tooltip title='$addon_image' >$addon_thumb  </a></td>	
	                 <td><b>Add on: " . $addon_product->name . "</b></td>
	                 <td></td>
	                 <td>$qty</td>
	                 <td align=right width=90>$addon_price</td>
	                 <td width=40></td>
	                 <td  width=70 align=right>$addon_total</td>
	                 <td></td>
	              </tr>		  
	  
	  ";
	}

				 			
		           $smarty->assign('addon_name', $addon_tb);
		
		    if ($d==$id)
			{		   				 			 			 
             $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/product.php');	
             $main .= $smarty->fetch($tpl);	
			}
	      }
	  
        }
 
 
 
 
 	  if ($d==$id)
	  {
       $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/product3.php');	
       $main .= $smarty->fetch($tpl);			   
	   prepare_input($d);
       include 'templates/en/eshop/cart/load_delivery_date.php';	    	   
	   include 'templates/en/eshop/cart/load_shipping_address.php';	
       include 'templates/en/eshop/cart/load_message.php';	    	     
       include 'templates/en/eshop/cart/address_book.php';	  	   
	   $smarty->assign('i', $d);     	   
       $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/shipping_address.php');	
       $main .= $smarty->fetch($tpl);	
	   
	  }

	   
	   
	   
       $main .= "</div>";		  	   	   
 
	   }
	   $main .= "<div style='clear:both;'></div></form>
	   
	   ";	 
	   }

			  

				  
	   break;
  	case 'shipping_address2' :
			    $php5Session->setVar('item_lead_time', 0);	 
			    $php5Session->setVar('item_earliest_date' , '0000-00-00');
					   
       include 'templates/en/eshop/cart/push_shipping_address.php';	    
	   
	   if ($gonext=='')
	   {
		          $php5Session->setVar('done_step1',1);
 	              header( "Location: $url_billing");	   
	   
	   }
	   else	   		   
	   header( "Location: $gonext");	  	
			
	   break;   
  	case 'shipping_address_load_user' :
       include 'templates/en/eshop/cart/load_shipping_address_user.php';    
	   header( "Location: $url_shipping");	    	
	   break;	   		


  	case 'review' :
   	   validate_checkout();	
	   $check_ship = 	$php5Session->getVar('shipping_address11' );
	   if ($check_ship == '')
	   {
		 $php5Session->setVar('message','Please fill in the shipping address');  
	     header( "Location: $url_shipping");	  	   	   
	   }
	   
	   $main = "";	
	   $smarty->assign('step',3);
	   $smarty->assign('done_step2',$php5Session->getVar('done_step2'));	   
	   $smarty->assign('done_step1',$php5Session->getVar('done_step1'));	  	   
       $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/steps.php');	
       $main .= $smarty->fetch($tpl);	
	   if ( isset($id) )
	   if ($id == 'fail')
	   {
       $main .= "<div class='message'>Payment failed. No funds has been deducted from your card. Please try again.</div>";			    
	   }
		
       $php5Session->setVar('storepage',  $url_shipping );	
	   
	   $cart = new Cart();
	   $product = new Product();
	   $addon_product = new Product();	   
//	   $cart->showvariables();
	   $recipients = $cart->get_recipient();	
       $recipient = explode(",", $recipients);
	   $d = 0;

       $item_price = 0;
	   $delivery_fee = 0;
	   if ($recipients!= null)
	   {
		   $total_delivery = count($recipient);

       $main .= "
	   <div style='padding:10px; background:#b84c86; color:white; margin: 0px 5px -5px 5px; font-weight:bold;' >01 Delivery Details</div>";	  
	   
	   $discounted = 0;   		   
	   foreach ($recipient as $r )
	   { 
	   $d++;
	   $to_target =  $php5Session->getVar('recipient_' . $r);
	   if ($r == 0)    $to_target = "Myself";  

	   $url_delete = sefBuild($php5WebPath, "index.php?o=eshop&m=checkout&task=delete_delivery&id=$r" , 1); 
	    
       $main .= "
	   <div class='cart_head' onClick2=showhide('cart_content$d') >
	   <table width=990>
	      <tr>
		    <td>Gift Purchase $d-$total_delivery &nbsp; <b>( $to_target  )</b></td>
			<td align=right><a href='$url_shipping$d'>Edit</a>  |  <a href='$url_delete'>Delete</a></td>
		  </tr>
	   
	   </table>
	   
	   
	   
	   
	              
	             </div><div  class='cart_content' id='cart_content$d' >";	

      $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/product1.php');	
       $main .= $smarty->fetch($tpl);	
        $max = $php5Session->getVar('counter');	
        for ($j=1; $j<$max; $j++)
        {
 
		
		  $selected_recipient =  $php5Session->getVar('selected_recipient'.$j);	
	      if ($selected_recipient == $r)
	      {
//             $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/shipping_address.php');	
             $product->loadData(add_prefix('product'), 'product_id', $php5Session->getVar('pid' . $j) );
			  
			  $plt = $php5Session->getVar('item_lead_time');	  
			   if ($product->lead_time > $plt) 	
			      $php5Session->setVar('item_lead_time', $product->lead_time);	 
			     
				
				
             $addon_product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('addon'.$j));					 
			 $smarty->assign('obj', $product);
			 $smarty->assign('qty', $php5Session->getVar('qty'.$j));
			$qty = $php5Session->getVar('qty'.$j); 			 

	             $rp =  $cart->cart_get_rate($product,$addon_product, $php5Session->getVar('coupon_code'), $j );
				 	   $discounted = $rp['discounted']; 
	             $rate = $rp['product_n_addon'];
	             $product_rate =  $rp['product_rate'];
	             $product_total = $product_rate * $qty;
                 $total_rate = $qty * $rate;	 	
		         $smarty->assign('rate', price_tag($product_rate));
		         $smarty->assign('total_rate', price_tag($product_total) );				  
		         $smarty->assign('url_detail', sefBuild($php5WebPath,'index.php?o=eshop&m=product_detail&task=show&id='. $product->product_id )  );
		         $smarty->assign( 'pimage',  $product->image(70,70,$product->image)  );				  				 

	             $addon_name="";

			     $item_price  += $total_rate;

     $addon_tb  = "";
    for ($a=1; $a<= $php5Session->getVar('total_addon'.$j); $a++)
	{

		
      $addon_product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('addon'.$j . "_" . $a));			  
	  $addon_image = $addon_product->image(200,200,$addon_product->image);
	  $addon_thumb = "<a href='' rel=tooltip title='$addon_image' >" . $addon_product->image(70,70,$addon_product->image). "</a>";
	  $addon_name = "<b>Add on : ".$addon_product->name . "</b>";
	  $addon_price = price_tag(  $addon_product->price );
	  $addon_total = price_tag( $addon_product->price * $qty) ;

			     $item_price  += $addon_total;	  
	  $addon_tb .="
	               <tr>
	                 <td width=100 height=100 align=center valign=middle><a href='' rel=tooltip title='$addon_image' >$addon_thumb  </a></td>	
	                 <td><b>Add on: " . $addon_product->name . "</b></td>
	                 <td></td>
	                 <td>$qty</td>
	                 <td align=right width=90>$addon_price</td>
	                 <td width=40></td>
	                 <td  width=70 align=right>$addon_total</td>
	                 <td></td>
	              </tr>		  
	  
	  ";
	}

				 			
		           $smarty->assign('addon_name', $addon_tb);
				   				 			 			 
             $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/product.php');	
             $main .= $smarty->fetch($tpl);	
		
	      }
	  
        }
 
 

       include 'templates/en/eshop/cart/load_delivery_date.php';	 

	   $main.="
	   	<tr>
	  <td colspan=6 align=right>Delivery Charge</td>	


	  <td  width=70 align=right>".price_tag($delivery_surcharge)."</td>
	  <td></td>

	</tr>
	</table><br />
<br />

	   ";	



/**

	   $main.="<div style='float:left; width:350px; border:0px solid red;'>";			 
        $max = $php5Session->getVar('counter');	
        for ($j=1; $j<$max; $j++)
        {
		
		  $selected_recipient =  $php5Session->getVar('selected_recipient'.$j);	
	      if ($selected_recipient == $r)
	      {
//             $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/shipping_address.php');	
             $product->loadData(add_prefix('product'), 'product_id', $php5Session->getVar('pid' . $j) );
             $addon_product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('addon'.$j));					 
			 $smarty->assign('obj', $product);
			 $smarty->assign('qty', $php5Session->getVar('qty'.$j));

	
	         $addon_image="";
			 
    for ($a=1; $a<= $php5Session->getVar('total_addon'.$j); $a++)
	{
		
      $addon_product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('addon'.$j . "_" . $a));			  
	  $addon_image .= $addon_product->image(50,50,$addon_product->image) . "<br/><br/>";

	}
			 
		         $smarty->assign('addon_image', $addon_image);			  
			  
				 $qty = $php5Session->getVar('qty'.$j); 
	             $rp =  $cart->cart_get_rate($product,$addon_product, $php5Session->getVar('coupon_code'), $j );
	             $rate = $rp['product_n_addon'];
	             $product_rate =  $rp['product_rate'];
	             $product_total = $product_rate * $qty;
                 $total_rate = $qty * $rate;
				 	
			     $item_price  += $total_rate;
			 				 		


		         $smarty->assign('rate', price_tag($rate));
		         $smarty->assign('total_rate', price_tag($total_rate));				  
			 			 
             $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/product2.php');	
             $main .= $smarty->fetch($tpl);	
		
	      }
       $main .= "</div>";			  
        }
**/	   





	   prepare_input($d);
//       include 'templates/en/eshop/cart/load_delivery_date.php';	 
	   $delivery_fee += $delivery_surcharge;	
  	   
	   include 'templates/en/eshop/cart/load_shipping_address.php';	
       include 'templates/en/eshop/cart/load_message.php';	    	     
       include 'templates/en/eshop/cart/address_book.php';	  
	   
$c1 = $php5Session->getVar('call_before_delivery'.$d);
$c2 = $php5Session->getVar('avoid_lunch'.$d);
$call_before_delivery = ($c1 == '1') ? "Call before delivery":"";
$avoid_lunch = ($c2 == '1') ? "Avoid lunch":"";

 
if ($c1 == 1)
$avoid_lunch = ", " . $avoid_lunch;

$smarty->assign('call_before_delivery', $call_before_delivery); 
$smarty->assign('avoid_lunch', $avoid_lunch); 
$delivery_time = new Delivery_time();
$delivery_time->loadData( add_prefix('delivery_time'), 'delivery_time_id',$php5Session->getVar('delivery_time'.$d  ) );
$dtime = $delivery_time->caption;

$smarty->assign('dtime', $dtime); 
		 	   	   
	   $smarty->assign('i', $d);     	   
       $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/review.php');	
       $main .= $smarty->fetch($tpl);	
	   
	   }

	   $ip = getRealIpAddr();	
	   $smarty->assign('ip', $ip);	   			 	   
	   $gst = $product->gst($item_price+ $delivery_fee);
	   $total = $item_price + $gst + $delivery_fee;
	   $smarty->assign('delivery_fee', price_tag($delivery_fee));
	   $smarty->assign('item_price', price_tag($item_price));	
	   $smarty->assign('gst', price_tag($gst));		   
	   $smarty->assign('total', price_tag($total));
	   $smarty->assign('total2', $total);
	   	      
       include 'templates/en/eshop/cart/load_billing_address.php';	    



	   $main .="<div style='padding:10px; background:#b84c86; color:white; margin: 25px 5px 0px 5px; font-weight:bold;' >02 Billing Details</div>
	   <div style='border:1px solid #ccc; padding:15px; margin:5px; margin-top:0px;'>
	   ";
	   	   
       $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/billing_address_review.php');	
       $main .= $smarty->fetch($tpl);	
	   
       $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/total.php');	
       $main .= $smarty->fetch($tpl);			   	   
	   $main .= "<div style='clear:both;'></div></div>
	   
	   ";	 
	   $main .="<div style='padding:10px; background:#b84c86; color:white; margin: 25px 5px 0px 5px; font-weight:bold;' >Payment Method</div>";
       $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/cc.php');	
       $main .= $smarty->fetch($tpl);			   
	   $main.="</div>";	   
	   }
	   break;
  	case 'success' :

       include 'templates/en/eshop/cart/success_do.php';	  	 
	   header('Location: ' .  $url_receipt );	  
	   break;  	   
  	case 'enets_success' :

       include 'templates/en/eshop/cart/success_do_enets.php';	  	 
	   header('Location: ' .  $url_receipt );	  
	   break;  	   	   
  	case 'receipt' :
	   $smarty->assign('step',4);
	   $smarty->assign('done_step2',$php5Session->getVar('done_step2'));	   
	   $smarty->assign('done_step1',$php5Session->getVar('done_step1'));	  	   
       $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/steps.php');	
       $main = $smarty->fetch($tpl);		
//       include 'templates/en/eshop/cart/success_data.php';	

       $display = "
	   <div style='font-size:14px; color:black; font-weight:normal; padding-bottom:120px; '>Dear ". $php5Session->getVar('user_name' ). "</div>
	   <div style='float:left; clear:both;'>Order Reference Number : </div><div style='float:right;'>";
	   $ids = explode(',',  $php5Session->getVar('d_order_id' ) );
	   $order = new Order();
	   foreach ($ids as $id)
	   {
         $order->loadData(add_prefix('order'), 'order_id', $id); 		   
         $display .= "". $order->sales_order_number . "<br/>";
	   }
	   $display .= "</div>";
	   
	   $smarty->assign('display_order', $display );
	   
       $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/success.php');	
       $main .= $smarty->fetch($tpl);		   	 
//include_once 'includes/send_email.php';
//	   $main .= prepare_order(302 , sprintf($php5TemplateFile, $language, 'eshop', 'cart/order_mail.php'));
//       email_orders('lee@dweb.com.sg', "Hummings : Order Confirmation " , $main);  		
	
	   break;  	   	   	   


	case 'confirm':
   	   validate_checkout();
	   $check_ship = 	$php5Session->getVar('shipping_address11' );
	   if ($check_ship == '')
	   {
		 $php5Session->setVar('message','Please fill in the shipping address');  
	     header( "Location: $url_shipping");	  	   	   
	   }	   
       $php5Session->setVar('storepage',  $url_confirm );		
       $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/confirm.php');	
       include 'templates/en/eshop/cart/list2.php';	   
       $main = $smarty->fetch($tpl);		   
	break; 
	case 'confirm2':	
   	   validate_checkout();	
	   $check_ship = 	$php5Session->getVar('shipping_address11' );
	   if ($check_ship == '')
	   {
		 $php5Session->setVar('message','Please fill in the shipping address');  
	     header( "Location: $url_shipping");	  	   	   
	   }
	   else
	   {	   	
	   $smarty->assign('step',4);
       $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'cart/steps.php');	
       $main = $smarty->fetch($tpl);		
       include $php5RootPath. '/templates/en/eshop/cart/generate_order.php';	   
	   }
//       $main .= "";   
       header('Location: ' .  $url_success );	   
	break; 		
	case 'reset':
       $php5Session->setVar('storepage',  $url_confirm );			
       include $php5RootPath. '/templates/en/eshop/cart/reset.php';	   
       $main = "loading";		   
	break; 		
	case 'apply_coupon':
		  $cart = new Cart();
		  $cart->apply_coupon_code();
          header('Location: ' .  $url_cart 	 );	 

	break; 		
	case 'cart_qty':
		  $cart = new Cart();
		  $cart->update_qty($_POST['qty'], $_POST['pid']);	      
//		  $php5Session->setVar('qty'.$_POST['i'],$_POST['qty'] );
          header('Location: ' .  $url_cart 	 );	 
	break; 		
	case 'option_change':
		  $cart = new Cart();
		  $cart->option_change($_POST['pid'], $_POST['option']);	     
		  		  		   
//		  $php5Session->setVar('qty'.$_POST['i'],$_POST['qty'] );
          header('Location: ' .  $url_cart 	 );	 
	break; 		
	case 'add_recipient':
		  $cart = new Cart();
		  $cart->add_new_reipient();
          header('Location: ' .  $url_cart 	 );	 
	case 'change_recipient':
		  $cart = new Cart();
		  $cart->change_reipient();
          header('Location: ' .  $url_cart 	 );	 
	break; 	
			   	   	      	   
	default:
       $php5Session->setVar('storepage',  sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&t=outsite&task=list', 1)  );		
       include 'templates/en/eshop/cart/list.php';
		break;
		
}
///////////////////////////




$tpl = sprintf($php5TemplateFile, $language, 'eshop', 'full_page.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
$smarty->assign('main', $main);
$smarty->assign('main', $smarty->fetch($tpl) );



function validate_checkout()
{
 global $php5Session;
 global $url_cart;
 global $url_register; 
 
	if ($php5Session->getVar('user_id') == '' )
	{

 //         header('Location: ' .  $url_register 	 );	 			  
	}
	// echo $php5Session->getVar('counter') ;

	if ($php5Session->getVar('counter') < 2 )
	{
	  echo $php5Session->getVar('counter') ;

 //         header('Location: ' .  $url_cart 	 );	 			  
	}
	
}



function prepare_input($d)
{
  global $php5DB_en;
  global $smarty;

	     $s = "<select id=s1 onChange=select_message(this.value,$d) style='width:300px;' ><option value=0>Select a category</option>";
         $query = "SELECT * FROM #__message WHERE parent_id=0 ORDER BY sorting";
         $php5DB_en->setQuery( $query );
         if ($rows = $php5DB_en->loadAssocList())
         {
	        foreach ($rows as $row)
			{
			  $s.= "<option value=".$row['message_id'].">".$row['message']."</option>";
			}
		 }
		 $s .= "</select>";
		 $smarty->assign('select_message', $s);
}
function getRealIpAddr()
{
    if (!empty($_SERVER['HTTP_CLIENT_IP']))   //check ip from share internet
    {
      $ip=$_SERVER['HTTP_CLIENT_IP'];
    }
    elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))   //to check ip is pass from proxy
    {
      $ip=$_SERVER['HTTP_X_FORWARDED_FOR'];
    }
    else
    {
      $ip=$_SERVER['REMOTE_ADDR'];
    }
    return $ip;
}

return;

