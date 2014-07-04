<div class="header1">Order History</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="250" height="25"><strong>SALES ORDER NUMBER</strong></td>
    <td width="120" height="25"><strong>ORDER DATE</strong></td>
    <td height="25"><strong>DELIVERY STATUS</strong></td>
  </tr>
</table>

<div class="expand_wrapper" style="color:#333;">
{foreach from=$orders item=order}
  <div class="expand_heading" style="cursor:pointer;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="250" height="25"><strong>{$order->sales_order_number}</strong></td>
    <td width="120" height="25"><strong>{$order->order_date}</strong></td>
    <td height="30"><strong>{$order->caption}</strong></td>
  </tr>
</table></div>	
	<div class="toggle_container">
	  <div class="box">		
        <table width="100%" border="0" cellspacing="1" cellpadding="5">
          <tr>
            <td colspan="3" bgcolor="#FFF0F7" style="color:#a90061;"><strong>Billing Information</strong></td>
          </tr>
          <tr>
            <td width="100"><strong>Name</strong></td>
            <td>: {$order->name}</td>
            <td><strong>Email:</strong> {$order->email}</td>
          </tr>
          <tr>
            <td width="100"><strong>Address</strong></td>
            <td colspan="2">: {$order->block} {$order->unit} {$order->building} {$order->address1} {$order->city} {$order->postcode}</td>
          </tr>
          {foreach from = $order->deliveries item=delivery}
          <tr>
            <td colspan="3" bgcolor="#FFF0F7" style="color:#a90061;"><strong>Delivery  Information</strong></td>
          </tr>
          <tr>
            <td><strong>Name</strong></td>
            <td colspan="2">: {$delivery->shipto_name}</td>
          </tr>
          <tr>
            <td><strong>Address</strong></td>
            <td colspan="2">: {$delivery->shipto_block} {$delivery->shipto_unit} {$delivery->shipto_building} {$delivery->shipto_address1} {$delivery->shipto_city} {$delivery->shipto_postcode}</td>
          </tr>
          <tr>
            <td><strong>Contact Number </strong></td>
            <td colspan="2">: {$delivery->shipto_telephone1}</td>
          </tr>
          <tr>
            <td><strong>Delivery Date</strong></td>
            <td>: {$delivery->from_date} - {$delivery->to_date}</td>
            <td><strong>Delivery Time:</strong> {$delivery->caption}</td>
          </tr>
          <tr>
            <td colspan="3"><strong>Message:</strong><br />
			{$delivery->message}</td>
          </tr>
          
          <tr>
            <td colspan="3" bgcolor="#FFF0F7" style="color:#a90061;"><strong>Order  information</strong></td>
          </tr>
          <tr>
            <td height="25" colspan="3"><table width="100%" border="0" cellspacing="0" cellpadding="0">
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