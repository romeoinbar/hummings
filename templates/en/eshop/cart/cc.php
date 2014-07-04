<div style='   border:1px solid #ccc; margin:0px 5px 5px 5px;  ' >

<div style='background:#f6f2e9; padding:8px; margin:5px 0px;'><b>PAY BY CREDIT CARD</b></div>

<div style='padding:15px;'>
<form action='{$url_confirm2}' method=post id="vForm" class="cmxform">

<table align=left>
<tr>
  <td valign=mivddle><input type=radio style='border:0px;'  name=credit_card_type value=visa class=required></td>
  <td><img src='{$php5WebPath}/images/visa.jpg'></td>
  <td width=50></td>
</tr>
<tr>
  <td valign=mivddle><input type=radio style='border:0px;' name=credit_card_type value=master></td>
  <td><img src='{$php5WebPath}/images/master.jpg'></td>
</tr>
</table>

<input type=hidden name=ip value='{$ip}'>
<div style='padding:10px 20px 10px 20px; float:right;  width:300px; background:#eee; margin-right:55px; '><i>Your IP Address  {$ip} will be recorded together with this transaction for security purposes.</i></div>

<table width=450>
  <tr>
    <td>Credit Card Number:</td>
    <td>:</td>
    <td align=left> <input type='text' name='pan' value='' size=16  style='width:300px;' class="required digits" /></td>
  </tr>  
  <tr>     
    <td>Name on card  </td>
     <td>:</td>
    <td align=left><input type='text' name='name' value=''  style='width:300px;' class="required"  /></td>
  </tr>   
  <tr>
  
    <td>Expiry(yymm)</td>
     <td>:</td>
    <td align=left> <input type='text' name='expiry_date' value='' size=4 maxlength=4 class="required digits" /></td>
  </tr>
  
  <tr>    
    <td> CVV</td>  
      <td>:</td>
    <td align=left><input type='text' name='cvv' value='' size=3  maxlength=4 class="required digits"/></td>     
  </tr>
</table>   
<br/>
<input type=image src='{$php5WebPath}/images/make_payment.jpg' style='width:160px; height:30px;'>
<input type=hidden name=total value='{$total2}'>



</form>
</div>



</div>
<div style='clear:both;'></div>

