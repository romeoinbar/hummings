<form action='{$url_confirm3}' method=post id="vForm" name="vForm" class="cmxform">

<table width="99%" align='center' cellpadding="5" cellspacing="0" style="border:1px solid #ccc;">
<tr>
  <td width="100" valign=mivddle>Paypal</td>
  <td width="20" valign=mivddle><input  name="payment_type" type="radio" class="required" style='border:0px;' value="paypal" checked="checked" onclick="javascript:document.vForm.action='{$url_confirm3}'" /></td>
  <td width="1039" colspan="3"><!--<img src="https://www.paypalobjects.com/en_US/i/btn/btn_xpressCheckout.gif" >--><img src="{$php5WebPath}/images/PayPal_mark_50x34.gif" alt="The safer, easier way to pay." /></td>

</tr>
<!--
<tr>
  <td width="100" valign=top>Credit Cards</td>
  <td width="20" valign=top><input type="radio" style='border:0px;' name="payment_type" value="creditcard" /></td>
  <td width="81" valign="top"><img src="{$php5WebPath}/images/visa.jpg" /></td>
  <td width="500"><table>
  <tr>
    <td width="180">Credit Card Number:</td>
    <td>:</td>
    <td align=left> <input type='text' name='pan' value='' size=16  style='width:300px;' onclick="selectPaymentType();" /></td>
  </tr>  
  <tr>     
    <td width="180">Name on card  </td>
     <td>:</td>
    <td align=left><input type='text' name='name' value=''  style='width:300px;' onclick="selectPaymentType();" /></td>
  </tr>   
  <tr>
  
    <td width="180">Expiry(yymm)</td>
     <td>:</td>
    <td align=left> <input type='text' name='expiry_date' value='' size=4 maxlength=4 onclick="selectPaymentType();"  /></td>
  </tr>
  
  <tr>    
    <td width="180"> CVV</td>  
      <td>:</td>
    <td align=left><input type='text' name='cvv' value='' size=3  maxlength=4 onclick="selectPaymentType();" /></td>     
  </tr>
</table></td>
  <td valign="top"><input type=hidden name=ip value='{$ip}'>
<div style='padding:10px 20px 10px 20px; float:right;  width:250px; background:#eee; margin-right:20px; '><i>Your IP Address  {$ip} will be recorded together with this transaction for security purposes.</i></div>
</td>
</tr>
-->

<tr>
  <td colspan="5" valign=mivddle><table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="200"><input type="image" src='{$php5WebPath}/images/make_payment.jpg' style='width:160px; height:30px; border:none;'/></td>
      <td style="color:#F00;">* To avoid double  billing, please click the button <strong>&lsquo;Make Payment&rsquo;</strong> only ONCE and allow payment to  take up to 60 seconds for processing.</td>
      </tr>
  </table>    <p>&nbsp;</p></td>
  </tr>
</table>

<input type=hidden name=ip value='{$ip}'>
<input type=hidden name=total value='{$total2}'>
</form>
<div style='clear:both;'></div>
<script language="javascript">
var url_confirm2 = '{$url_confirm2}';
</script>
{literal}
<script language="javascript">
function selectPaymentType(){
	var $radios = $('input:radio[name=payment_type]');    
    $radios.filter('[value=creditcard]').attr('checked', true);   
	document.vForm.action=url_confirm2;
}
</script> 
{/literal}
