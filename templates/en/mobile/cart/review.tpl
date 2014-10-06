<div style="margin-left:10px; margin-top:10px;"><a href="#" onclick="history.go(-1);" class="back_link">BACK</a></div>
<div align="center" style="margin-left:15px; margin-right:15px;">
	<div class="step1">01 Recipient details</div>
    <div class="step2">02 Delivery details</div>
    <div class="step2">03 Billing details</div>
    <div class="step2_hover">04 Review & pay</div>
    <div class="step2">05 Receipt</div>
</div>
<div class="clr"></div>
<div class="line"></div>
<div style="margin-left:10px; margin-right:10px; color:#999;">
<table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <td width="90" class="header_cart">PRODUCT</td>
    <td class="header_cart">DESCRIPTION</td>
    <td width="40" align="center" class="header_cart">QTY</td>
    <td width="80" align="center" class="header_cart">PRICE</td>
  </tr>
  {foreach from=$items item=row}
  <tr>
    <td width="90" class="item_cart"><a href="{$row->url_detail}">{$row->image}</a></td>
    <td  class="item_cart"><div style="font-size:11px; font-weight:bold;color:#b9066e;">{$row->name}</div>
    <div style="font-size:12px;">{$row->sku}</div></td>
    <td width="40" align="center"  class="item_cart">{$row->form}</td>
    <td width="80" align="center"  class="item_cart" style="color:#b9066e; font-size:14px;"><strong>{$row->price}</strong></td>
  </tr>
  {foreach from=$row->addon item=addon}
  <tr>
    <td width="90" class="item_cart"><a href="{$row->url_detail}">{$addon->image}</a></td>
    <td  class="item_cart"><div style="font-size:11px; font-weight:bold;color:#b9066e;">{$addon->name}</div></td>
    <td width="40" align="center"  class="item_cart">{$addon->qty}</td>
    <td width="80" align="center"  class="item_cart" style="color:#b9066e; font-size:14px;"><strong>{$addon->price}</strong></td>
  </tr>
  {/foreach}
  {/foreach}
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <td bgcolor="#bd4b87" style="color:#fff; font-size:14px;"><strong>Delivery Details</strong></td>
  </tr>
  <tr>
    <td style="line-height:20px;">Title: <span style="color:#000;">{$obj->title}</span> <br />
      Surname: <span style="color:#000;"></span><br />
      Name: <span style="color:#000;">{$obj->name}</span><br />
      Email: <span style="color:#000;">{$obj->email}</span><br />
      Mobile Number: <span style="color:#000;"></span><br />
      Work Number: (optional) <span style="color:#000;"></span><br />
      Fax Number: (optional)<span style="color:#000;"> </span><br />
      Company: <span style="color:#000;">{$obj->company}</span><br />
      Block/Unit: <span style="color:#000;">{$obj->block}</span><br />
      Building: <span style="color:#000;">{$obj->building}</span><br />
      Street: <span style="color:#000;">{$obj->address1}</span><br />
      Postal Code: <span style="color:#000;">{$obj->postcode}</span><br />
      City/State:<span style="color:#000;"></span><br />
      Country: <span style="color:#000;">{$obj->country}</span><br />
      Delivery Date: <span style="color:#000;">{$delivery_from_date} - {$delivery_to_date} </span><br />
      Delivery Time: <span style="color:#000;">{$dtime}</span><br />
      Delivery Instruction: <span style="color:#000;">{$call_before_delivery} {$avoid_lunch}</span><br />
      Message to: <span style="color:#000;">{$message_receiver},  {$message_receiver2},  {$message_receiver3}</span><br />
      Message: <br /><span style="color:#000;">{$message_content}<br />

                 {$message_content2}<br/>
                 {$message_content3}<br/>
                 {$message_content4}<br/>
                 {$message_content5}<br/>
                 {$message_content6}</span><br/> 
      Message from: <span style="color:#000;">{$message_sender}, {$message_sender2}, {$message_sender3}</span><br /></td>
  </tr>
  <tr>
    <td bgcolor="#bd4b87" style="color:#fff; font-size:14px;"><strong>Billing Details</strong></td>
  </tr>
  <tr>
    <td style="line-height:20px;">Title: <span style="color:#000;">{$bill->title}</span><br />
      Surname:<br />
      Name: <span style="color:#000;">{$bill->name}</span><br />
      Email: <span style="color:#000;">{$bill->email}</span><br />
      Mobile Number: <span style="color:#000;">{$bill->telephone1}</span><br />
      Work Number: (optional) <span style="color:#000;">{$bill->telephone2}</span><br />
      Fax Number: (optional) <span style="color:#000;">{$bill->fax}</span><br />
      Company: <span style="color:#000;">{$bill->company}</span><br />
      Block/Unit: <span style="color:#000;">{$bill->block} {$bill->unit}</span><br />
      Building: <span style="color:#000;">{$bill->building}</span><br />
      Street: <span style="color:#000;">{$bill->address1}</span><br />
      Postal Code: <span style="color:#000;">{$bill->postcode}</span><br />
      City/State: <span style="color:#000;">{$bill->city}/{$bill->state}</span><br />
      Country: <span style="color:#000;">{$bill->country}</span></td>
  </tr>
  <tr>
    <td bgcolor="#bd4b87" style="color:#fff; font-size:14px;"><strong>Payment Method</strong></td>
  </tr>
  <tr>
    <td><strong>TOTAL PAYABLE</strong><br />
<p>Total Price: {$item_price}</p>
<p>Delivery: {$delivery_fee}</p>
<p>GST: {$gst}</p>
<p>Total Payable: {$total}</p></td>
  </tr>
  <tr>
    <td bgcolor="#f6f2e9" style="color:#000; font-size:14px;"><strong>PAY BY CREDIT CARD</strong></td>
  </tr>
  <tr>
    <td>
    <form action='{$url_confirm3}' method="post" id="vForm" name="vForm" class="cmxform">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20"><input  name="payment_type" type="radio" style='border:0px;' value="paypal" checked="checked" onclick="javascript:document.vForm.action='{$url_confirm3}'" /></td>
        <td width="100"><img src="{$php5WebPath}/images/PayPal_mark_50x34.gif" alt="The safer, easier way to pay." /></td>
        <td align="left"><div style='font-size:11px; background:#eee; padding:10px; font-style:italic; width:100%; margin:auto; text-align:left;'>Your IP Address  {$ip} will be recorded together with this transaction for security purposes.</div></td>
      </tr>
      <!--tr>
        <td width="20"><input type="radio" name="payment_type" value="creditcard" /></td>
        <td width="100"><img src="{$php5WebPath}/images/visa.jpg" /></td>
        </tr-->
		  <tr>
    <tr>
    <td  colspan="2" align="left"><input type="image" src='{$php5WebPath}/images/btn_makepayment.jpg' style="border:none;"/></td>
	<td  style="color:#a90061;padding-left:10px;">* To avoid double  billing, please click the button <strong>'Make Payment'</strong> only ONCE and allow payment to  take up to 60 seconds for processing.<br>
	* All debit and credit cards accepted. Customers would NOT need to have a PayPal account to make your payment through PayPal.
	</td>
	</tr>
    </table>
    <!--table width="100%">
  <tr>
    <td width="100">Credit Card Number:</td>
    <td width="10">:</td>
    <td align=left> <input type='text' name='pan' value="" class="textinput" onclick="selectPaymentType();" /></td>
  </tr>  
  <tr>     
    <td width="100">Name on card  </td>
     <td width="10">:</td>
    <td align=left><input type='text' name='name' value=''  class="textinput" onclick="selectPaymentType();" /></td>
  </tr>   
  <tr>
  
    <td width="100">Expiry(yymm)</td>
     <td width="10">:</td>
    <td align=left> <input type='text' name='expiry_date' value='' class="textinput" maxlength=4 onclick="selectPaymentType();"/></td>
  </tr>
  
  <tr>    
    <td width="100"> CVV</td>  
      <td width="10">:</td>
    <td align=left><input type='text' name='cvv' value='' class="textinput" onclick="selectPaymentType();"/></td>     
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td align=right><input type="image" src='{$php5WebPath}/images/btn_makepayment.jpg' style="border:none;"/></td>
  </tr>
    </table-->
<input type=hidden name=ip value='{$ip}'>
<input type=hidden name=total value='{$total}'>
</form>
<div style='clear:both;'></div>
    </td>
  </tr>
</table>

</div>

{literal}
<script language="javascript">
function selectPaymentType(){
	var $radios = $('input:radio[name=payment_type]');    
    $radios.filter('[value=creditcard]').attr('checked', true);   	
}
</script> 
{/literal}

