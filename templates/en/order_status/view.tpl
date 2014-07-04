  <div class=ctop_full></div>
<div class=cmid_full>
<div style="padding-left:20px;padding-right:20px; color:#666;">
<h1 style="color#999;" class="header1">Order status</h1>
<div>
<p style="border-bottom:5px solid #ececec; padding-bottom:5px;"><strong>FOR QUICK UPDATE</strong></p>

<form action="{$url_search_status}" method="post" class="cmxform" id="vForm2">
<div>Order Reference Number &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input name="order_number" type="text" id="textfield" size="40" class="required" value="{$order_number}" /> <input type="image" src="{$php5WebPath}/images/btn_ok.png" align="absmiddle" style="border:none;" />
</div>
</form>
<div style="clear:both;">&nbsp;</div>
<h2 style="font-size:14px; border-top:5px solid #ececec; padding-top:5px; margin-top:10px; width:100%">ORDER NUMBER: {$order_number} | Order Date: {$order_status->order_date}</h2>
<table width="100%" border="0" cellspacing="1" cellpadding="5" style="border:2px solid #ececec; margin-top:20px;">
  <tr>
    <td bgcolor="#CCCCCC"><strong>Recipient’s Name</strong></td>
    <td bgcolor="#CCCCCC"><strong>Postal code</strong></td>
    <td bgcolor="#CCCCCC"><strong>Delivery Date</strong></td>
    <td bgcolor="#CCCCCC"><strong>Delivery Time</strong></td>
    <td bgcolor="#CCCCCC"><strong>Delivery Status</strong></td>
  </tr>
  {if $is_exist==1}  
  {foreach from=$deliveries item=row}
  <tr>
    <td bgcolor="#f3f3f3">{$row->shipto_name}</td>
    <td bgcolor="#f3f3f3">{$row->shipto_postcode}</td>
    <td bgcolor="#f3f3f3">{$row->from_date} - {$row->to_date}</td>
    <td bgcolor="#f3f3f3">{$row->delivery_time}</td>
    <td bgcolor="#f3f3f3">{$row->caption}</td>
  </tr>
  {/foreach}
  {else}
  <tr>
    <td colspan="4" align="center">This order does not exist.</td>
    </tr>
  {/if}
</table>
</div>

<div style="clear:both;">&nbsp;</div>
</div>
 </div>   
 <div class=cbot_full></div>
