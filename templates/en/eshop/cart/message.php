<div style='padding:20px;' id=checkout_page>
<h1>Checkout</h1>
          <table width="100%" border="0" cellspacing="0" cellpadding="5" style='padding-bottom:5px;'>
          <tr class="step">
            <td>STEP 1: Checkout Options (if you do not have an account yet)</td>
            <td align="right"><a href="{$url_checkout_option}">&raquo; Modify</a></td>
          </tr>
          </table>

          <table width="100%" border="0" cellspacing="0" cellpadding="5" style='padding-bottom:5px;'>
            <tr class="step">
              <td>STEP 2: Your Billing Details</td>
              <td align="right"><a href="{$url_billing_address}">&raquo; Modify</a></td>
            </tr>
          </table>

          <table width="100%" border="0" cellspacing="0" cellpadding="5"  style='padding-bottom:5px;'>
            <tr class="step">
              <td>STEP 3: Shipping Address</td>
              <td align="right"><a href="{$url_shipping_address}">&raquo; Modify</a></td>
            </tr>
          </table>             

          <table width="100%" border="0" cellspacing="0" cellpadding="5"  style='padding-bottom:5px;'>
            <tr class="step">
              <td>STEP 4: Delivery Date & Time</td>
              <td align="right"><a href="{$url_delivery_date}">&raquo; Modify</a></td>
            </tr>
          </table>
                                            
<form action='{$url_message2}' method=post id="vForm" class="cmxform" >
          <table width="100%" border="0" cellspacing="0" cellpadding="5"  style='padding-bottom:5px;'>
            <tr class="step">
              <td>STEP 5: Message to Recipient</td>
              <td align="right"><a href="{$url_message}">&raquo; Modify</a></td>
            </tr>
            <tr>
              <td colspan="2">
 			<p><strong>Message to Recipient</strong></p>
            <p>A message card will be provided and printed accordingly to your message in the following.
If you like to remain anonymous to the sender simply leave out your name under From. Kindly leave blank if no card is required. </p>
			<p>Need some help with the Message 
            {$select_message}
            </p>
            <div id='wishes'></div>
            
            <table width="100%" border="0" cellspacing="0" cellpadding="5">
              <tr>
                <td width="25%"><strong>To:</strong></td>
                <td width="4%">&nbsp;</td>
                <td width="71%"><strong>Message:</strong></td>
              </tr>
              <tr>
                <td><input name="message_receiver" type="text" value="{$message_receiver}" class="normal_textinput required" id="textfield3" /></td>
                <td><br /></td>
                <td rowspan="4" valign="top"><textarea name="message_content" id='message_content' rows="7" class="textarea required" id="textfield5" style="width:450px;">{$message_content}</textarea></td>
              </tr>
              <tr>
                <td><strong>From:</strong></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><input name="message_sender" value="{$message_sender}"  type="text" class="normal_textinput required" id="textfield8" /></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table>
            
            <p class="line2"></p>
           <input type="submit" name="button4" id="button4" value="Continue" class="gray_btn" />
              </td>
            </tr>
          </table>

              
              </td>
            </tr>
          </table>
</form>          
</div>