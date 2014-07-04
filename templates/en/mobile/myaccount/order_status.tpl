<div style="border-bottom:1px solid #ccc; padding:5px; padding-left:15px;"><a href="{$php5WebPath}/mobile-cart/" style="text-decoration:none;">Home</a> - <a href="{$url_my_account}" style="text-decoration:none;">My account</a> - <span style="color:#b84c86;">Order History</span></div>
<div style="margin:15px;">
<div style='color:#757073; background-color:#fef2fa; height:35px; line-height:35px; padding-left:10px; margin-bottom:10px;'><strong>ORDER HISTORY</strong></div>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:10px;">
  <tr>
    <td height="25" align="center"><strong>SALES ORDER <br />
      NUMBER</strong></td>
    <td width="80" height="25" align="center"><strong>ORDER <br />
      DATE</strong></td>
    <td width="100" height="25" align="center" style="padding-right:20px;"><strong>DELIVERY <br />
      STATUS</strong></td>
  </tr>
</table>

<div class="expand_wrapper" style="color:#333;">
{foreach from=$orders item=order}
  <div class="expand_heading" style="cursor:pointer;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" align="center"><strong>{$order->sales_order_number}</strong></td>
    <td width="80" height="25" align="center"><strong>{$order->order_date}</strong></td>
    <td width="100" height="30" align="center" style="padding-right:20px;"><strong>{$order->caption}</strong></td>
  </tr>
</table></div>	
	<div class="toggle_container">
	  <div class="box">		
        <table width="100%" border="0" cellspacing="1" cellpadding="5">
          <tr>
            <td colspan="2" bgcolor="#FFF0F7" style="color:#a90061;"><strong>Billing Information</strong></td>
          </tr>
          <tr>
            <td width="100"><strong>Name</strong></td>
            <td>: {$order->name}</td>
          </tr>
          <tr>
            <td><strong>Email:</strong></td>
            <td>{$order->email}</td>
          </tr>
          <tr>
            <td width="100"><strong>Address</strong></td>
            <td>: {$order->block} {$order->unit} {$order->building} {$order->address1} {$order->city} {$order->postcode}</td>
          </tr>
          {foreach from = $order->deliveries item=delivery}
          <tr>
            <td colspan="2" bgcolor="#FFF0F7" style="color:#a90061;"><strong>Delivery  Information</strong></td>
          </tr>
          <tr>
            <td><strong>Name</strong></td>
            <td>: {$delivery->shipto_name}</td>
          </tr>
          <tr>
            <td><strong>Address</strong></td>
            <td>: {$delivery->shipto_block} {$delivery->shipto_unit} {$delivery->shipto_building} {$delivery->shipto_address1} {$delivery->shipto_city} {$delivery->shipto_postcode}</td>
          </tr>
          <tr>
            <td><strong>Contact Number </strong></td>
            <td>: {$delivery->shipto_telephone1}</td>
          </tr>
          <tr>
            <td><strong>Delivery Date</strong></td>
            <td>: {$delivery->from_date} - {$delivery->to_date}</td>
          </tr>
          <tr>
            <td><strong>Delivery Time</strong></td>
            <td>: {$delivery->caption}</td>
          </tr>
          <tr>
            <td colspan="2"><strong>Message:</strong><br />
			{$delivery->message}</td>
          </tr>
          
          <tr>
            <td colspan="2" bgcolor="#FFF0F7" style="color:#a90061;"><strong>Order  information</strong></td>
          </tr>
          <tr>
            <td height="25" colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25"><strong>Item Name</strong></td>
    <td height="25"><strong>Qty</strong></td>
    <td height="25"><strong>Rate</strong></td>
    <td height="25"><strong>Total Rate</strong></td>
  </tr>
  {foreach from=$delivery->products item=product}
  <tr>
    <td height="25">{$product->name}</td>
    <td height="25">{$product->qty}</td>
    <td height="25">{$product->unit_price}</td>
    <td height="25">{$product->total_rate}</td>
  </tr> 
   {foreach from=$product->addons item=addon}
   <tr>
    <td height="25">Addon: {$addon->name}</td>
    <td height="25">{$addon->addon_qty}</td>
    <td height="25">S${$addon->price}</td>
    <td height="25">-</td>
  </tr> 
   {/foreach}
  {/foreach}
   <tr>
     <td height="1" colspan="4" bgcolor="#CCCCCC"></td>
     </tr>
   <tr>
    <td height="25">&nbsp;</td>
    <td height="25">&nbsp;</td>
    <td height="25">Total Price</td>
    <td height="25">: <strong>{$delivery->total_price}</strong></td>
  </tr>
   <tr>
     <td height="1" colspan="4" bgcolor="#CCCCCC"></td>
     </tr>
   <tr>
    <td height="25">&nbsp;</td>
    <td height="25">&nbsp;</td>
    <td height="25">Delivery</td>
    <td height="25">:<strong> {$delivery->delivery_fee}</strong></td>
  </tr>
   <tr>
     <td height="1" colspan="4" bgcolor="#CCCCCC"></td>
     </tr>
   <tr>
    <td height="25">&nbsp;</td>
    <td height="25">&nbsp;</td>
    <td height="25">GST</td>
    <td height="25">: <strong>{$delivery->gst}</strong></td>
  </tr> 
   <tr>
     <td height="1" colspan="4" bgcolor="#CCCCCC"></td>
     </tr>
   <tr>
    <td height="25">&nbsp;</td>
    <td height="25">&nbsp;</td>
    <td height="25">Total Payable</td>
    <td height="25">: <strong>{$delivery->total_payable}</strong></td>
  </tr>
</table>
</td>
          </tr>
          {/foreach}
        </table>
		</div>
	</div>  
    <div class="clr" style="height:10px;"></div>
 {/foreach}
</div>
<div style="margin-right:15px; margin-top:10px; text-align:right;"><a href="{$url_my_account}" class="back_link">BACK</a></div>
{literal}
<script type="text/javascript">
$(document).ready(function(){
	$(".toggle_container").hide();
	$(".expand_heading").toggle(function(){
		$(this).addClass("active"); 
		}, function () {
		$(this).removeClass("active");
	});
	$(".expand_heading").click(function(){
		$(this).next(".toggle_container").slideToggle("slow");
	});
});
</script>
{/literal}
</div>