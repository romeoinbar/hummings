

<div style='padding:15px; margin:10px auto; border:1px solid #ccc; width:90%;'>
<a href='{$url_list}'><div class=close> </div></a>
<table width=100% >
  <tr>
    <td width="127" style="font-size:16px;">Order ID</td>
    <td width="7">: </td>   
    <td width="416" style="font-size:16px;">{$order->sales_order_number}</td>  
    <td width=52> </td>
    <td width="109" style="font-size:16px;">Sold To Party No</td>
    <td>: </td>   
    <td width="280" style="font-size:16px;">{$order->sold_to_party_no}&nbsp;&nbsp;&nbsp;</td>           
  </tr>
  <tr>
    <td style="font-size:16px;">Order Date</td>
    <td>: </td>   
    <td style="font-size:16px;">{$order->order_date}  {$order->order_time}</td>
    <td> </td>
    <td> </td>   
    <td> </td>   
    <td><input type="button" value="Export Order"  onclick="window.location='{$url_export}'"/>&nbsp;&nbsp;&nbsp;<input type="button" value="Export Customer"  onclick="window.location='{$url_export_customer}'"/> </td>         
  </tr>
  <tr>
    <td>&nbsp; </td>
  </tr>    
  <tr>
    <td colspan=3 style="font-size:16px;"><b>Bill To</b></td>
    <td width="52">&nbsp;  </td>   
    <td colspan=3>&nbsp;</td>
  </tr>   
   <tr>
     <td style="font-size:16px;">Company</td>
     <td>: </td>   
     <td ><input type='text' name="company'" value="{$order->company}" size=40   style="font-size:16px;"/></td>        
     <td>&nbsp;  </td>   
     <td width="109" style="font-size:16px;">Name</td>
     <td width="7">: </td>   
     <td width="280" ><input type='text' name='name' value="{$order->name}" size="40" style="font-size:16px;"/></td>
     <td width="6"></td>
   </tr>   
   <tr>
    <td style="font-size:16px;">Block / Unit</td>
    <td>: </td>   
    <td ><input type='text' name='block' value="{$order->block}" size=10  style="font-size:16px;"/>
      <input type='text' name='unit' value="{$order->unit}" size="10"  style="font-size:16px;"/></td>        
    <td>&nbsp;  </td>   
    <td style="font-size:16px;">Email</td>
    <td>: </td>   
    <td ><input type='text' name='email' value='{$order->email}' size="40" style="font-size:16px;"/></td>
     <td ></td>    
   </tr>  
   <tr>
     <td style="font-size:16px;">Building</td>
     <td>: </td>   
     <td ><input type='text' name='building' value='{$order->building}' size=40 style="font-size:16px;" /></td>        
     <td>&nbsp;  </td>   
     <td style="font-size:16px;">Mobile No.</td>
     <td>: </td>   
     <td ><input type='text' name='telephone1' value='{$order->telephone1}' size="16" style="font-size:16px;"/></td>
     <td ></td>
             
   </tr>      
   <tr>
    <td style="font-size:16px;">Address</td>
    <td>: </td>   
    <td ><textarea name='address1'  rows=1 cols=50 style="font-size:16px;">{$order->address1}</textarea >
    <textarea name='address2'  rows=1 cols=50 style="font-size:16px;">{$order->address2}</textarea >
    </td>       
    <td>&nbsp;  </td>   
    <td style="font-size:16px;">Work No.</td>
    <td>&nbsp;</td>   
    <td ><input type='text' name='telephone2' value='{$order->telephone2}' size="16" style="font-size:16px;"/></td>    
     <td ></td>          
  </tr>   
   <tr>
     <td style="font-size:16px;">City / State</td>
     <td>: </td>   
     <td ><input type='text' name='city' value='{$order->city}' size=20 style="font-size:16px;"/>
       <input type='text' name='city2' value='{$order->state}' size="20" style="font-size:16px;"/></td>        
     <td>&nbsp;  </td>   
     <td >&nbsp;</td>
     <td>&nbsp;</td>   
     <td >&nbsp;</td>    
     <td ></td>
             
   </tr>   
   <tr>
    <td style="font-size:16px;">Postcode / Country</td>
    <td>: </td>   
    <td style="font-size:16px;"><input type='text' name='postcode' value='{$order->postcode}' size=10 style="font-size:16px;"/>
      {$country}</td>        
    <td>&nbsp;  </td>   
    <td >&nbsp;</td>
    <td>&nbsp;</td>   
    <td >&nbsp;</td>    
     <td ></td>
           
  </tr>                   
</table><br />

<table width=100%>
<tr>
  <td style="font-size:16px;">Credit Type</td>
  <td>:</td>
  <td style="font-size:16px;">{$order->credit_card_type}</td>
  <td> </td>
  
  <td style="font-size:16px;">Name on Card</td>
  <td>:</td>
  <td style="font-size:16px;">{$order->name_on_card}</td>
  <td></td>
  <td style="font-size:16px;">Credit Number</td>
  <td>:</td>
  <td style="font-size:16px;">{$order->credit_card_no}</td>
  <td> </td>
  <td style="font-size:16px;">Expiry Date</td>  
  <td>:</td>
  <td style="font-size:16px;">{$order->expiry_date}</td>     
  <td style="font-size:16px;"> CVV</td>
  <td>:</td>
  <td style="font-size:16px;">{$order->cvv}</td>  
</tr>
<tr>

  <td style="font-size:16px;">IP</td>
  <td>:</td>
  <td style="font-size:16px;">{$order->ip}</td>
  <td></td>    
</tr>
</table>
</div>