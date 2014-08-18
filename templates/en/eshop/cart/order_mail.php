

<img src="{$php5WebPath}/images/email/top.jpg" ><br />
<br />

Dear {$username}<br />
<br />
for {assign var=d value=0}
<div style='font-family:arial; clear:both; font-size:16px; font-weight:bold; color:#c10263;'>Order Reference Number : {$order->sales_order_number}</div>


{foreach from=$order_deliveries item=delivery}
<table width=700 border=0>
<tr>
  {assign var=d value=$d+1}
 <td valign=top>
  <div style='width:330px; float:left; margin:5px; clear:both;'>
   <div style=" padding:5px 15px; font-family:Arial, Helvetica, sans-serif;font-size:14pt;color:#c414141;background-color:#e4e4e5" colspan=10><b>Order Information</b></div>
   {assign var=i value=0}
    {foreach from=$order_items[$d] item=order_item}
        {assign var=i value=$i+1}
     <table width="330"  border="0" cellpadding="4" cellspacing="0" >
       <tr>
         <td rowspan=10><span style="width:80px;height:100px"><img src="{$order_item->image}" height="90" /></span></td>
         <td width=20 rowspan=10>&nbsp;  </td>   
         <td>Item Name</td>
         <td width=20 >&nbsp;  </td>
        <td>{$order_item->name}</td>
      </tr>
      <tr>    
        <td>Qty</td>
        <td width=20 >&nbsp;  </td>   
        <td>{$order_item->qty}</td>
      </tr>
      <tr>    
        <td  > Rate </td>    
        <td width=20 >&nbsp;  </td>    
        <td>{$order_item->unit_price}</td>
      </tr>   
      <tr>    
        <td  > Total Rate </td>   
        <td width=20 >&nbsp;  </td>        
        <td>{$order_item->total_price * $order_item->qty }</td>         
      </tr>

    </table>
    <br/>
    <br/>
     
        {foreach from=$order_item_addon[$d][$i] item=oia}
        {if $oia[5] eq '1'}        
          <table width="330"  border="0" cellpadding="4" cellspacing="0" >
            <tr>
              <td rowspan=10><span style="width:80px;height:100px"><img src="{$oia[0]}" height="90" /></span></td>
              <td width=20 rowspan=10>&nbsp;  </td>   
              <td>Item Name</td>
              <td width=20 >&nbsp;  </td>
             <td>{$oia[1]}</td>
           </tr>
           <tr>    
             <td>Qty</td>
             <td width=20 >&nbsp;  </td>   
             <td>{$oia[2]}</td>
           </tr>
           <tr>    
             <td  > Rate </td>    
             <td width=20 >&nbsp;  </td>    
             <td>{$oia[3]}</td>
           </tr>   
           <tr>    
             <td  > Total Rate </td>   
             <td width=20 >&nbsp;  </td>        
             <td>{$oia[6]}</td>         
           </tr>
         </table>
         <br/>
         <br/>     
         {/if}   
        {/foreach}
        
{/foreach}
</div>
</td>

<td></td>
<td valign=top>
  <div style='width:330px; float:right; margin:5px;'>
   <div style=" padding:5px 15px;  font-family:Arial, Helvetica, sans-serif;font-size:14pt;color:#c414141;background-color:#e4e4e5" colspan=10><b>Total Payable</b></div>

    <table style=' width:300px;' align=right cellpadding=4>
    <tr>
       <td colspan=3 align=right>Total Price</td>      
       <td></td>
       <td>{$delivery->subtotal }</td>         
    </tr>
    <tr>
       <td colspan=3  align=right>Delivery</td>      
       <td></td>
       <td>{$delivery->surcharge }</td>         
    </tr>
    <tr>
       <td colspan=3 align=right>GST</td>      
       <td></td>
       <td>{$delivery->gst }</td>         
    </tr>
    <tr>
       <td colspan=3  align=right>Total Payable</td>      
       <td></td>
       <td>{$delivery->g_total }</td>         
    </tr>
    </table>
  </div>
</td>

<tr>
<td valign=top>
  <div style='width:330px; float:left; margin:5px;'>
   <div style=" padding:5px 15px; font-family:Arial, Helvetica, sans-serif;font-size:14pt;color:#c414141;background-color:#e4e4e5" colspan=10><b>Delivery Information</b></div>

    <table  cellpadding=4>
    <tr>
       <td colspan=3 align=right>Name</td>      
       <td></td>
       <td>{$delivery->shipto_title} {$delivery->shipto_name}</td>         
    </tr>
    <tr>
       <td colspan=3  align=right valign="top">Address</td>      
       <td></td>
       <td>Block {$delivery->shipto_block} Unit {$delivery->shipto_unit} <br />
		{$delivery->shipto_building} <br />
		{$delivery->shipto_address1}<br />
		{$delivery->shipto_city} {$delivery->shipto_postcode}</td>         
    </tr>
    <tr>
       <td colspan=3 align=right>Contact Number</td>      
       <td></td>
       <td>{$delivery->shipto_telephone1 }</td>         
    </tr>
    <tr>
       <td colspan=3  align=right>Delivery Date</td>      
       <td></td>
       <td>{$delivery->from_date } - {$delivery->to_date }</td>         
    </tr>
    <tr>
       <td colspan=3  align=right>Delivery Time</td>      
       <td></td>
       <td>{$delivery->delivery_time }</td>         
    </tr>
    <tr>
       <td colspan=3  align=right>Message</td>      
       <td></td>
       <td>{$delivery->to_message }<br />
           {$delivery->message }<br />
           {$delivery->from_message }
       </td>         
    </tr>        
    </table>
  </div>

</td>
<td></td>
<td valign=top>
<div style='width:330px; float:right; margin:5px;'>
   <div style=" padding:5px 15px;  font-family:Arial, Helvetica, sans-serif;font-size:14pt;color:#c414141;background-color:#e4e4e5" colspan=10><b>Billing Information</b></div>

    <table style=' width:300px;' align=right cellpadding=4>
    <tr>
       <td colspan=3 align=right>Name</td>      
       <td></td>
       <td>{$order->title} {$order->name}</td>         
    </tr>
    <tr>
       <td colspan=3 align=right>Email</td>      
       <td></td>
       <td>{$order->email}</td>         
    </tr>    
    <tr>
       <td colspan=3  align=right valign="top">Address</td>      
       <td></td>
       <td>
       Block {$order->block} Unit {$order->unit} <br />
		{$order->building} <br />
		{$order->address1}<br />
		{$order->city} {$order->postcode}
      </td>         
    </tr>
   
    </table>
  </div>
  
</td>

</tr>
</table>


{/foreach}


<div style='clear:both;'></div>
<p><br />
  <br />
  Should  you require any assistance with regards to your order, please email us at: <a href="mailto:online@humming.com.sg">online@humming.com.sg</a> and our customer  service officer will be in touch with you shortly.<br />
  <br />
Business hours: Monday to Friday : 9.00am to 6.15pm Saturday : 9.00am to 2.00pm<br />
  <br />
  
  
  <img src="{$php5WebPath}/images/email/footer.jpg" ></p>
