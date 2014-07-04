<div style="margin-left:10px; margin-top:10px;"><a href="{$php5WebPath}/mobile-cart" class="back_link">BACK</a></div>
<div class="line"></div>
<div style="margin-left:10px; margin-right:10px;">
{if $err_msg!=""}
<div class="err_msg">{$err_msg}</div>
{/if}
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="60" class="header_cart">PRODUCT</td>
    <td class="header_cart">DESCRIPTION</td>
    <td width="40" align="center" class="header_cart">QTY</td>
    <td width="80" align="center" class="header_cart">PRICE</td>
  </tr>
  {foreach from=$items item=row}
  <tr>
    <td width="60"><a href="{$row->url_detail}">{$row->image}</a></td>
    <td><div style="font-size:11px; font-weight:bold;color:#b9066e;">{$row->name}</div>
    <div style="font-size:12px;">{$row->sku}</div></td>
    <td width="40" align="center">
    {$row->form}
	</td>
    <td width="80" align="center" style="color:#b9066e; font-size:14px;"><strong>{$row->price}</strong></td>
  </tr>
  {foreach from=$row->addon item=addon}  
  <tr>
    <td width="60"><a href="{$row->url_detail}">{$addon->image}</a></td>
    <td><div style="font-size:11px; font-weight:bold;color:#b9066e;">{$addon->name}</div></td>
    <td width="40" align="center">
    {$addon->qty}<br />
    {$addon->remove_button}
	</td>
    <td width="80" align="center"style="color:#b9066e; font-size:14px;"><strong>{$addon->price}</strong></td>
  </tr> 
  {/foreach}
  <tr>
    <td colspan="4" style="border-top:1px dotted #ccc;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="60" style="padding-right:15px;"><div style="background-color:#f6f2e7; padding:5px; text-align:center; font-size:11px;"><strong>RECIPIENT</strong></div> </td>
    <td width="120" nowrap="nowrap">{$row->options}</td>
    <td>{$row->recipient}</td>
  </tr>
</table>
     </td>
    </tr>
   <tr>
    <td height="1" colspan="4" class="item_cart"></td>
    </tr>
  {/foreach}
</table>
<table width="280" border="0" cellspacing="1" cellpadding="5" style="margin-top:10px; background-color:#f3f3f3; border:1px solid #ccc; font-size:11px;" align="right">
  <tr>
    <td width="150" height="22" style="padding-left:20px;">Sub-total</td>
    <td height="22" style="font-size:13px;"><strong>{$subbtotal}</strong></td>
  </tr>
  <tr>
    <td width="150" height="22" style="padding-left:20px;">Discounted</td>
    <td height="22" style="font-size:13px;"><strong>{$discounted}</strong></td>
  </tr>
  <tr>
    <td width="150" height="22" style="padding-left:20px;">Estimated Delivery Charge</td>
    <td height="22" style="font-size:13px;"><strong>{$delivery_fee}</strong></td>
  </tr>
  <tr>
    <td width="150" height="22" style="padding-left:20px;">GST</td>
    <td height="22" style="font-size:13px;"><strong>{$gst}</strong></td>
  </tr>
  <tr>
    <td width="150" height="22" style="padding-left:20px; border-top:1px solid #fff; font-size:14px; color:#b9066e;"><strong>Grand total</strong></td>
    <td height="22" style="border-top:1px solid #fff; font-size:14px; color:#b9066e;"><strong>{$total}</strong></td>
  </tr>
</table>
<div style="clear:both;">&nbsp;</div>
<div align="right"><a href="{$php5WebPath}/mobile-cart"><img src="{$php5WebPath}/images/continue.jpg" border="0" /></a> 
 
{if $canCheckout==1}
	<img src="{$php5WebPath}/images/checkout.jpg" border="0" onclick="check_recipient({$max}, {$is_login})" style="cursor:pointer;" />
{else}
<img src="{$php5WebPath}/images/checkout.jpg" border="0" />
{/if}
</div>
<div style="margin-top:10px;"><strong>Discount Code or Gift Voucher</strong></div>		
{$show_coupon_code}
<div style="clear:both;">&nbsp;</div>
</div>
{literal}
<script language=javascript>
 function check_recipient(max, logined){ 
   go = 1;
   for(i=1; i<max; i++)
   {
	  if (document.getElementById('recipient'+i).value=='-2') {		
		go = 0;  
	    document.getElementById('alert'+i).style.display=''; 
	  }
   } 
   if (go){
	    if (logined)
   			window.location=jWebPath + 'mobile-cart/checkout/recipient/';
		else
			window.location=jWebPath + 'mobile-cart/eshop/register/';
   }
 }
 </script>
 {/literal}
