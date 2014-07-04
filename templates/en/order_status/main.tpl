  <div class=ctop_full></div>
<div class=cmid_full>
<div style="padding-left:20px;padding-right:20px; color:#666;">
<h1 style="color#999;" class="header1">Order status</h1>
<div style="float:left; margin-top:30px; width:400px; text-align:center;"><img src="{$php5WebPath}/images/order_status.jpg" width="244" height="365" /></div>
<div style="width:500px; float:left;">
<p style="border-bottom:5px solid #ececec; padding-bottom:5px;"><strong>FOR QUICK UPDATE</strong></p>

<form action="{$url_search_status}" method="post" class="cmxform" id="vForm2">

<div>Order Reference Number &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input name="order_number" type="text" id="textfield" size="40" class="required" /> <input type="image" src="{$php5WebPath}/images/btn_ok.png" align="absmiddle" style="border:none;" />
</div>
</form>
<p>&nbsp;</p>
{if $is_login==0}
<p style="border-bottom:5px solid #ececec; padding-bottom:5px;"><strong>FOR DETAILED ORDER STATUS, PLEASE LOGIN</strong></p>
<form action='{$url_login}' method=post id="vForm2" class="cmxform"  >
<table width="450" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <td width="150">Email Address</td>
    <td><input type=text name=email class="required email" style="width:250px;"></td>
  </tr>
  <tr>
    <td width="150">Password</td>
    <td><input type=password  name=password class="required"  style="width:250px;"></td>
  </tr>
  <tr>
    <td width="150">&nbsp;</td>
    <td align="right"><a href="{$url_register}#forget" style="font-style:italic;">Forgot you password</a>&nbsp;&nbsp;&nbsp; <input type='image' src='{$php5WebPath}/images/btn_ok.png'  style='border:none;'></td>
  </tr>
</table>
</form>
{/if}
<p>&nbsp;</p>
<table width="100%" border="0" cellspacing="2" cellpadding="5">
  <tr>
    <td bgcolor="#c40064" style="color:#fff;"><strong>Delivery Time</strong></td>
    <td bgcolor="#c40064" style="color:#fff;"><strong>Estimated Time for Status Update</strong></td>
  </tr>
  <tr>
    <td bgcolor="#f9f9f9" style="color:#666;">9 am to 12 noon</td>
    <td bgcolor="#f9f9f9" style="color:#666;">2.30 pm on the same day</td>
  </tr>
  <tr>
    <td bgcolor="#f9f9f9" style="color:#666;">2.30 pm to 5.30 pm</td>
    <td bgcolor="#f9f9f9" style="color:#666;">7.30 pm on the same day</td>
  </tr>
  <tr>
    <td bgcolor="#f9f9f9" style="color:#666;">7.30 pm to 10.30 pm</td>
    <td bgcolor="#f9f9f9" style="color:#666;">11.00 am on the next working day</td>
  </tr>
</table>
<p style="color:#adadad;">* This serves as a general guideline only<br />
* Does not apply on Public Holidays & during season time e.g CNY</p>
</div>

<div style="clear:both;">&nbsp;</div>
</div>
 </div>   
 <div class=cbot_full></div>
