{literal}
<style type="text/css">
td select {
	font-size:16px;
}
</style>
{/literal}
<div style='padding:15px; margin:10px auto; border:1px solid #ccc; width:90%;'>

<form action='{$url_update_order}' method=post>
<input type=hidden name=order_id  value='{$order_id}'>
<table width=100%>  
  <tr>
    <td colspan=3 style="font-size:16px;"><b>Ship To</b></td>
    <td>&nbsp;  </td>   
    <td colspan=3>&nbsp;</td>
  </tr>   
   <tr>
     <td style="font-size:16px;">Company</td>
     <td>: </td>   
     <td ><input type='text' name='shipto_company' value='{$order_delivery->shipto_company}'  size="40"  style="font-size:16px;" /></td>        
     <td>&nbsp;  </td>   
     <td style="font-size:16px;">Name</td>
     <td>: </td>   
     <td ><input type='text' name='shipto_name' value="{$order_delivery->shipto_name}" size="50"  style="font-size:16px;" /></td>
   </tr>   
   <tr>
    <td style="font-size:16px;">Block</td>
    <td>: </td>   
    <td ><input type='text' name='shipto_block' value='{$order_delivery->shipto_block}' size="10"  style="font-size:16px;"/></td>        
    <td>&nbsp;  </td>   
    <td style="font-size:16px;">Email</td>
    <td>: </td>   
    <td ><input type='text' name='shipto_email' value='{$order_delivery->shipto_email}' size="50"  style="font-size:16px;" /></td>
   </tr>   
   <tr>
    <td style="font-size:16px;">Unit</td>
    <td>: </td>   
    <td ><input type='text' name='shipto_unit' value='{$order_delivery->shipto_unit}' size="10"  style="font-size:16px;" /></td>        
    <td>&nbsp;  </td>   
    <td style="font-size:16px;">Mobile No.</td>
    <td>: </td>   
    <td ><input type='text' name='telephone1' value='{$order_delivery->shipto_telephone1}' size="16" style="font-size:16px;" /></td>
   </tr>  
   <tr>
    <td style="font-size:16px;">Building</td>
    <td>: </td>   
    <td ><input type='text' name='shipto_building' value='{$order_delivery->shipto_building}' size="40"  style="font-size:16px;" /></td>        
    <td>&nbsp;  </td>   
    <td style="font-size:16px;">Work No.</td>
    <td>&nbsp;</td>   
    <td ><input type='text' name='telephone2' value='{$order_delivery->shipto_telephone2}' size="16"   style="font-size:16px;"/></td>    
  </tr>      
   <tr>
    <td style="font-size:16px;">Address</td>
    <td>: </td>   
    <td ><textarea name='shipto_address1' cols=50 rows=1  style="font-size:16px;">{$order_delivery->shipto_address1}</textarea>
         <textarea name='shipto_address2' cols=50  rows=1  style="font-size:16px;">{$order_delivery->shipto_address2}</textarea>
    </td>       
    <td>&nbsp;  </td>   
    <td >&nbsp;</td>
    <td>&nbsp;</td>   
    <td >&nbsp;</td>    
  </tr>   
   <tr>
     <td style="font-size:16px;">City/State</td>
     <td>: </td>   
     <td ><input type='text' name='shipto_city' value='{$order_delivery->shipto_city}' size=20  style="font-size:16px;"/> <input type='text' name='shipto_state' value='{$order_delivery->shipto_state}' size=20  style="font-size:16px;"/></td>        
     <td>&nbsp;  </td>   
     <td >&nbsp;</td>
     <td>&nbsp;</td>   
     <td >&nbsp;</td>    
   </tr>   
   <tr>
    <td style="font-size:16px;">Postcode/Country</td>
    <td>: </td>   
    <td style="font-size:16px;"><input type='text' name='shipto_postcode' value='{$order_delivery->shipto_postcode}' size=10 style="font-size:16px;" />
      {$country}</td>        
    <td>&nbsp;  </td>   
    <td >&nbsp;</td>
    <td>&nbsp;</td>   
    <td >&nbsp;</td>    
  </tr>
     <tr>
       <td colspan=4 style="font-size:16px;"><br/>
         <b>Delivery Information</b>        </td>    
       <td colspan=3 style="font-size:16px;"><br/>
         <b>Message</b>        </td>        
     </tr> 
    <tr>
    <td style="font-size:16px;">Delivery Date</td>
    <td>:</td>   
    <td ><input type='text' name='from_date' value='{$order_delivery->from_date}' size=10 style="font-size:16px;"/> - 
         <input type='text' name='to_date' value='{$order_delivery->to_date}' size=10 style="font-size:16px;"/>    </td>        
    <td>&nbsp;  </td>   
    <td valign="top" style="font-size:16px;">To</td>
    <td valign="top">: </td>   
    <td ><textarea cols=55 rows=3  name='to_message' style="font-size:16px;">{$order_delivery->to_message}</textarea></td>  </tr>         
    <tr>
    <td style="font-size:16px;">Delivery Time</td>
    <td>: </td>   
    <td ><input type='text' name='delivery_time' value='{$order_delivery->delivery_time}' size=20 style="font-size:16px;"/></td>         
    <td>&nbsp;  </td>   
    <td valign="top" style="font-size:16px;">From</td>
    <td valign="top">: </td>   
    <td ><textarea cols=55 rows=3  name='from_message' style="font-size:16px;">{$order_delivery->from_message}</textarea>  </tr> 
  
    <tr>
    <td style="font-size:16px;">Special Instruction</td>
    <td>: </td>   
    <td ><textarea name=special_instruction cols=50 style="font-size:16px;">{$order_delivery->special_instruction}</textarea></td>    
    <td>&nbsp;  </td>           
    <td valign="top" style="font-size:16px;">Message</td>
    <td valign="top">: </td>   
    <td ><textarea name=message cols=55 rows=6 style="font-size:16px;">{$order_delivery->message}</textarea></td>         
  </tr>                   
</table> 

</form>

