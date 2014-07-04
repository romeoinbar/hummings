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
<div style='padding:10px 20px 10px 20px; float:right; background:#eee; margin-right:55px; '><i>IP Address :  {$ip}</i></div>

<table width=450>
  <tr>
    <td>Credit Card:</td>
    <td>:</td>
    <td align=left> <input type='text' name='pan' value='4111111111111111' size=16  style='width:300px;' class="required digits" /></td>
  </tr>  
  <tr>     
    <td>Name on card  </td>
     <td>:</td>
    <td align=left><input type='text' name='name' value='Ah Hao'  style='width:300px;' class="required"  /></td>
  </tr>   
  <tr>
  
    <td>Expiry(yymm)</td>
     <td>:</td>
    <td align=left> <input type='text' name='expiry_date' value='1501' size=4 maxsize=4 class="required digits" /></td>
  </tr>
  
  <tr>    
    <td> CVV</td>  
      <td>:</td>
    <td align=left><input type='text' name='cvv' value='232' size=3  maxsize=3 class="required digits"/></td>     
  </tr>
</table>   
<br/>
<input type=image src='{$php5WebPath}/images/make_payment.jpg' style='width:160px; height:30px;'>
<input type=hidden name=total value='{$total2}'>



</form>
</div>



</div>
<div style='clear:both;'></div>

