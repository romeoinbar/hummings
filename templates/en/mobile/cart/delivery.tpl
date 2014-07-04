{literal}
<script>
$(document).ready(function() {
	$("#vForm").validate();
});
</script>
<style type="text/css">
.block { display: block; }
form.cmxform label.error { display: none; }	
.hiddenCountry  { display: none; }	
</style>
{/literal}
<div style="margin-left:10px; margin-top:10px;"><a href="#" onclick="history.go(-1);" class="back_link">BACK</a></div>
<div align="center" style="margin-left:15px; margin-right:15px;">
	<div class="step1">01 Recipient details</div>
    <div class="step2_hover">02 Delivery details</div>
    <div class="step2">03 Billing details</div>
    <div class="step2">04 Review & pay</div>
    <div class="step2">05 Receipt</div>
</div>
<div class="clr"></div>
<div class="line"></div>
<div style="margin-left:10px; margin-right:10px;">
<form action="{$billing_address_url}" method="post" id='vForm' name="vForm" class='cmxform'>
	<div style="font-size:14px; color:#b9066e; margin-bottom:10px; margin-top:10px;"><strong>Delivery Details</strong></div>
   		<div id='test' onmouseover="checkDeliveryOptions1(1);">
        <table width="100%" border="0" cellspacing="0" cellpadding="5">
          <tr>
            <td><strong>Date</strong><br />
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>From: </td>
            <td width="30">&nbsp;</td>
            <td>To: </td>
            <td width="15">&nbsp;</td>
          </tr>
          <tr>
            <td>    
             <div >      
              <input name="delivery_from_date{$i}" onchange="test();" value="{$delivery_from_date}"   id='delivery_from_date{$i}' type="text" size="15" class="tcal required sp textinput"/>
              </div></td>
            <td width="30">&nbsp;</td>
            <td>
              <input name="delivery_to_date{$i}" value="{$delivery_to_date}"  onMouseOver='lock(this,"readonly")' onMouseOut='lock(this,"");check_to_date(this,document.getElementById())'   type="text" size="15" class="tcal required textinput" />
            </td>
            <td width="15">&nbsp;</td>
          </tr>
        </table>
    </div>
		</td>
      </tr>
      <tr>
        <td><strong>Time:</strong><br />
        <div id='delivery_options'>
		{$delivery_options}
        </div>
        <label for='delivery_time{$i}' class='error' style="margin:0; padding:0; font-size:12px;">Please select at least one type of delivery_time.</label>
        </td>
      </tr>
      <tr>
        <td><strong>Special Delivery Instructions</strong><br />
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="20"><input  type="checkbox" name="call_before_delivery{$i}" id="checkbox" value='1'/></td>
              <td>Call recipient before delivery</td>
            </tr>
            <tr>
              <td width="20"><input type="checkbox" name="avoid_lunch{$i}" id="checkbox2" value='1' /></td>
              <td>Avoid lunch hour </td>
            </tr>
          </table>
</td>
      </tr>
      <tr>
        <td> <div style="margin-top:10px;"><strong>To</strong></div>
    <div>
      <input name="message_receiver{$i}" type="text" class="textinput " style="width:100%;" value="{$message_receiver}" maxlength="40" />
            <input name="message_receiver2{$i}" type="text" class="textinput " style="width:100%;" value="{$message_receiver2}" maxlength="40" />
                 <input name="message_receiver3{$i}" type="text" class="textinput " style="width:100%;" value="{$message_receiver3}" maxlength="40" /> 
    </div>
    <div style="margin-top:10px;"><strong>From</strong></div>
    <div>
    <input name="message_sender{$i}"  type="text" class="textinput " style="width:100%;" value="{$message_sender}" maxlength="40" />
    <input name="message_sender2{$i}"  type="text" class="textinput " style="width:100%;" value="{$message_sender2}" maxlength="40" />
    <input name="message_sender3{$i}"  type="text" class="textinput" style="width:100%;" value="{$message_sender3}" maxlength="40" /> 
    </div>
    <div style="margin-top:10px;"><strong>Message to Recipient</strong></div>
    <div>
      <input name="message_content{$i}" id="message_content{$i}"  class="inputtext"  maxlength=45   value="{$message_content}" style="width:100%;"><br/>
      <input name="message_content2{$i}" id="message_content2{$i}"  class="inputtext"  maxlength=45  value="{$message_content2}" style="width:100%;"><br/>
      <input name="message_content3{$i}" id="message_content3{$i}"  class="inputtext"  maxlength=45  value="{$message_content3}" style="width:100%;"><br/>
      <input name="message_content4{$i}" id="message_content4{$i}"  class="inputtext"  maxlength=45  value="{$message_content4}" style="width:100%;"><br/>
       <input name="message_content5{$i}" id="message_content5{$i}"  class="inputtext"  maxlength=45 value="{$message_content5}" style="width:100%;"><br/>
      <input name="message_content6{$i}" id="message_content6{$i}"  class="inputtext"  maxlength=45  value="{$message_content6}" style="width:100%;"><br/>
    </div>
    <div style="margin-top:10px;"><img src="{$php5WebPath}/images/help.jpg" width="17" height="16" align="absmiddle" /> Need some help with the Message? </div>
    <div>{$select_message}</div>
    <div id='wishes{$i}' style='margin-top:10px;'></div>
    </td>
      </tr>
      <tr>
        <td align="right"><input type="image" src="{$php5WebPath}/images/btn_continue.gif" style="border:none;" /></td>
      </tr>
    </table>
 </form>
</div>
    



