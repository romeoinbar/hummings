<div style="margin-left:10px; margin-top:10px;"><a href="#" onclick="history.go(-2);" class="back_link">BACK</a></div>
<div align="center" style="margin-left:15px; margin-right:15px;">
	<div class="step1">01 Recipient details</div>
    <div class="step2">02 Delivery details</div>
    <div class="step2_hover">03 Billing details</div>
    <div class="step2">04 Review & pay</div>
    <div class="step2">05 Receipt</div>
</div>
<div class="clr"></div>
<div class="line"></div>
<div style="margin-left:10px; margin-right:10px;">
<form action="{$billing_address_url2}" method="post" name="">
	
   	<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="40"><div style="font-size:14px; color:#b9066e;"><strong>Your Details</strong></div></td>
  </tr>
  <tr>
    <td height="40">Title:*<br />
    {$title}
    </td>
  </tr>
  <tr>
    <td height="40">Surname:*<br /><input name="surname" type="text" class="normal_textinput required" value="{$bill->surname}" size=40 /></td>
  </tr>
  <tr>
    <td height="40">Name:*<br />
<input name="name" type="text" class="normal_textinput required" value="{$bill->name}" size=40 /></td>
  </tr>
  <tr>
    <td height="40">Email:*<br />
<input name="email" type="text" class="normal_textinput required email" value="{$bill->email}" size=40 /></td>
  </tr>
  <tr>
    <td height="40">Mobile Number:*<br />
<input name="telephone1" type="text" class="digits required" value="{$bill->telephone1}" /></td>
  </tr>
  <tr>
    <td height="40">Work Number: (optional)<br />
<input name="telephone2"  value="{$bill->telephone2}" class="textinput" /></td>
  </tr>
  <tr>
    <td height="40">Fax Number: (optional)<br />
<input name="fax"  value="{$bill->fax}" class="textinput" /></td>
  </tr>
  <tr>
    <td height="40"><div style="font-size:14px; color:#b9066e;"><strong>Your Details</strong></div></td>
  </tr>
  <tr>
    <td height="40">Company:<br /> <input name="company" type="text" class="textinput" id="textfield27" value="{$bill->company}" /></td>
  </tr>
  <tr>
    <td height="40">Block / Unit:<br />
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="40%"><input name="block" type="text" class="textinput" id="textfield28" value="{$bill->block}" /></td>
    <td width="10">&nbsp;</td>
    <td><input name="unit" type="text" class="textinput" id="textfield29" value="{$bill->unit}" /></td>
  </tr>
</table>
</td>
  </tr>
  <tr>
    <td height="40">Building:<br />
    <input name="building" type="text" class="textinput" id="textfield30" value="{$bill->building}" />
</td>
  </tr>
  <tr>
    <td height="40">Street*<br />
<input name="address1" type="text" class="normal_textinput required" id="" value="{$bill->address1}" /></td>
  </tr>
  <tr>
    <td height="40">Postal Code*<br />
 <input name="postcode" type="text" class=" required digits" id="textfield35"  maxlength=6  value="{$bill->postcode}" /></td>
  </tr>
  <tr>
    <td height="40">City / State<br />
      <input name="city" type="text" id="city"  class="required" value="{$bill->city}" />
      <input name="state" type="text" id="textfield34"  class="required" value="{$bill->state}" /></td>
  </tr>
  <tr>
    <td height="40">Country*<br />
{$country}</td>
  </tr>
  <tr>
    <td height="40" align="right"><input type="image" src="{$php5WebPath}/images/btn_continue.gif" style="border:none;" /></td>
  </tr>
</table> </form>
</div>
    



