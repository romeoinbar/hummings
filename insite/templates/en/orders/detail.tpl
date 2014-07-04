
<div style='padding:15px; margin:10px auto; border:1px solid #ccc; width:90%;'>
<a href='{$url_print}' target=_blank>[ print ]</a>
<a href='{$url_list}'><div class=close> </div></a>
<form action='{$url_update_order}' method=post>
<input type=hidden name=order_id  value='{$order_id}'>
<table width=900 style="font-size:14px;">
  <tr>
    <td>Order ID</td>
    <td>: </td>   
    <td>{$order->sales_order_number}</td>      
    <td width=50> </td>
    <td>Sold To Party No</td>
    <td>: </td>   
    <td>{$user->sold_to_party_no}</td>         
  </tr>
  <tr>
    <td>Order Date</td>
    <td>: </td>   
    <td>{$order->order_date}</td>      
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>    
  <tr>
    <td colspan=3><b>Bill To</b></td>
    <td>&nbsp;  </td>   
    <td colspan=3><b>Ship To</b></td>
  </tr>  
   <tr>
    <td >Email</td>
    <td>: </td>   
    <td ><input type='text' name='email' value='{$order->email}' size=50 ></td>        
    <td>&nbsp;  </td>   
    <td >Email</td>
    <td>: </td>   
    <td ><input type='text' name='shipto_email' value='{$order_delivery->shipto_email}' size=50  /></td>    
  </tr>   
   <tr>
    <td >Company</td>
    <td>: </td>   
    <td ><input type='text' name='company' value='{$order->company}' size=40   /></td>        
    <td>&nbsp;  </td>   
    <td >Company</td>
    <td>: </td>   
    <td ><input type='text' name='shipto_company' value='{$order_delivery->shipto_company}'  size=40  /></td>    
  </tr>   
   <tr>
    <td >Block</td>
    <td>: </td>   
    <td ><input type='text' name='block' value='{$order->block}' size=10  /></td>        
    <td>&nbsp;  </td>   
    <td >Block</td>
    <td>: </td>   
    <td ><input type='text' name='shipto_block' value='{$order_delivery->shipto_block}' size=10 /></td>    
  </tr>   
   <tr>
    <td >Unit</td>
    <td>: </td>   
    <td ><input type='text' name='unit' value='{$order->unit}' size=10  /></td>        
    <td>&nbsp;  </td>   
    <td >Unit</td>
    <td>: </td>   
    <td ><input type='text' name='shipto_unit' value='{$order_delivery->shipto_unit}' size=10  /></td>    
  </tr>  
   <tr>
    <td >Building</td>
    <td>: </td>   
    <td ><input type='text' name='building' value='{$order->building}' size=40  /></td>        
    <td>&nbsp;  </td>   
    <td >Building</td>
    <td>: </td>   
    <td ><input type='text' name='shipto_building' value='{$order_delivery->shipto_building}' size=40 /></td>    
  </tr>      
   <tr>
    <td >Address</td>
    <td>: </td>   
    <td ><input type='text' name='address1' value='{$order->address1}' size=40 /></td>       
    <td>&nbsp;  </td>   
    <td >Address</td>
    <td>: </td>   
    <td ><input type='text' name='shipto_address1' value='{$order_delivery->shipto_address1}' size=40 /></td>    
  </tr>   
   <tr>
    <td >&nbsp;</td>
    <td>&nbsp;</td>   
    <td ><input type='text' name='address2' value='{$order->address2}' size=40 /></td>        
    <td>&nbsp;  </td>   
    <td >&nbsp;</td>
    <td>&nbsp;</td>   
    <td ><input type='text' name='shipto_address2' value='{$order_delivery->shipto_address2}' size=40 /></td>    
  </tr>   
   <tr>
    <td >&nbsp;</td>
    <td>&nbsp;</td>   
    <td ><input type='text' name='address3' value='{$order->address3}' size=40 /></td>        
    <td>&nbsp;  </td>   
    <td >&nbsp;</td>
    <td>&nbsp;</td>   
    <td ><input type='text' name='shipto_address3' value='{$order_delivery->shipto_address3}' size=40 /></td>    
  </tr>   
   <tr>
    <td >&nbsp;</td>
    <td>&nbsp;</td>   
    <td ><input type='text' name='address4' value='{$order->address4}' size=40 /></td>        
    <td>&nbsp;  </td>   
    <td >&nbsp;</td>
    <td>&nbsp;</td>   
    <td ><input type='text' name='shipto_address4' value='{$order_delivery->shipto_address4}' size=40 /></td>    
  </tr>   
   <tr>
    <td >City</td>
    <td>: </td>   
    <td ><input type='text' name='city' value='{$order->city}' size=40 /></td>        
    <td>&nbsp;  </td>   
    <td >City</td>
    <td>: </td>   
    <td ><input type='text' name='shipto_city' value='{$order_delivery->shipto_city}' size=40 /></td>    
  </tr>   
   <tr>
    <td >Postcode</td>
    <td>: </td>   
    <td ><input type='text' name='postcode' value='{$order->postcode}' size=10 /></td>        
    <td>&nbsp;  </td>   
    <td >Postcode</td>
    <td>: </td>   
    <td ><input type='text' name='shipto_postcode' value='{$order_delivery->shipto_postcode}' size=40 /></td>    
  </tr>   
   <tr>
    <td >Country</td>
    <td>: </td>   
    <td >{$country}</td>        
    <td>&nbsp;  </td>   
    <td >Country</td>
    <td>: </td>   
    <td >{$s_country}</td>    
  </tr>       
   <tr>
    <td >Mobile No.</td>
    <td>: </td>   
    <td ><input type='text' name='telephone1' value='{$order->telephone1}' size=16 /></td>        
    <td>&nbsp;  </td>   
    <td >Mobile No.</td>
    <td>: </td>   
    <td ><input type='text' name='shipto_telephone1' value='{$order_delivery->shipto_telephone1}' size=16 /></td>    
  </tr>
   <tr>
    <td >Work No.</td>
    <td>: </td>   
    <td ><input type='text' name='telephone2' value='{$order->telephone2}' size=16 /></td>        
    <td>&nbsp;  </td>   
    <td >Work No.</td>
    <td>: </td>   
    <td ><input type='text' name='shipto_telephone2' value='{$order_delivery->shipto_telephone2}' size=16/></td>    
  </tr>
     <tr>
    <td colspan=4 ><br/>
    <b>Delivery Information</b>
    </td>    
    <td colspan=3 ><br/>
    <b>Message</b>
    </td>        
  </tr> 
    <tr>
    <td >Delivery Date</td>
    <td></td>   
    <td ><input type='text' name='from_date' value='{$order_delivery->from_date}' size=10/> - 
         <input type='text' name='to_date' value='{$order_delivery->to_date}' size=10/>
    </td>        
    <td>&nbsp;  </td>   
    <td >To</td>
    <td>: </td>   
    <td ><input type='text' name='to_message' value='{$order_delivery->to_message}' size=40/</td>    
  </tr>         
    <tr>
    <td >Delivery Time</td>
    <td>: </td>   
    <td ><input type='text' name='delivery_time' value='{$order_delivery->delivery_time}' size=20/</td>         
    <td>&nbsp;  </td>   
    <td >From</td>
    <td>: </td>   
    <td ><input type='text' name='from_message' value='{$order_delivery->from_message}' size=40/</td>     
  </tr> 
  
    <tr>
    <td >Special Instruction</td>
    <td>: </td>   
    <td ><textarea name=special_instruction cols=50>{$order_delivery->special_instruction}</textarea></td>    
    <td>&nbsp;  </td>           
    <td >Message</td>
    <td>: </td>   
    <td ><textarea name=message cols=50>{$order_delivery->message}</textarea></td>         


  </tr>                   
</table> 
<input type=submit value='Update Order'>
</form>
<br/>
<table width=900 border="1">
<tr>
  <td><strong>Name</strong></td>
  <td><strong>SKU</strong></td>  
  <td><strong>Qty</strong></td>
  <td align=right  style='text-align:right;'><strong>Unit Price</strong></td>
  <td align=right  style='text-align:right;'><strong>Total</strong></td>   
</tr>
{$items}
<tr>
  <td align=right  style='text-align:right; border-top:1px solid #ccc; padding:5px 0px;' colspan=4>Sub Total</td> 
  <td align=right  style='text-align:right; border-top:1px solid #ccc; padding:5px 0px;' ><strong>{$subtotal}</strong></td>   
</tr>
<tr>
  <td align=right  style='text-align:right; border-top:1px solid #ccc; padding:5px 0px;' colspan=4>GST</td> 
  <td align=right  style='text-align:right; border-top:1px solid #ccc; padding:5px 0px;' ><strong>{$gst}</strong></td>   
</tr>
<tr>
  <td align=right  style='text-align:right; border-top:1px solid #ccc; padding:5px 0px;' colspan=4>Surcharge</td> 
  <td align=right  style='text-align:right; border-top:1px solid #ccc; padding:5px 0px;' ><strong>{$surcharge}</strong></td>   
</tr>
<tr>
  <td align=right  style='text-align:right; border-top:1px solid #ccc; padding:5px 0px;' colspan=4>Total</td> 
  <td align=right  style='text-align:right; border-top:1px solid #ccc; padding:5px 0px;' ><strong>{$g_total}</strong></td>   
</tr>
</table>
</div>