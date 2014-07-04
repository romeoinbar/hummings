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
                                
<form action='{$url_delivery_date2}' method=post id="vForm" class="cmxform" >
          <table width="100%" border="0" cellspacing="0" cellpadding="5"  style='padding-bottom:5px;'>
            <tr class="step">
              <td>STEP 4: Delivery Date & Time</td>
              <td align="right"><a href="{$url_delivery_date}">&raquo; Modify</a></td>
            </tr>
            <tr>
              <td colspan="2">
            <table width="100%" border="0" cellspacing="0" cellpadding="3" style="color:#666;">
              <tr>
                <td width="42"><strong>Date</strong></td>
                <td width="187"><span style="font-style:italic;">From</span><br />
                  <input name="delivery_from_date" value="{$delivery_from_date}" type="text" id="textfield12" size="15" class="required textinput" />
                  <a rel=tooltip title='yyyy-mm-dd' ><img src="{$php5WebPath}/images/cal.png" width="16" height="15" align="absmiddle"  /></a></td>
                <td width="51">&nbsp;</td>
                <td width="468"><span style="font-style:italic;">To</span><br />
                  <input name="delivery_to_date" value="{$delivery_to_date}"  type="text" id="textfield13" size="15" class="required textinput" />
                  <a rel=tooltip title='yyyy-mm-dd' ><img src="{$php5WebPath}/images/cal.png" width="16" height="15" align="absmiddle"  /></a></td>
                <td width="254" rowspan="2" valign="top">
                  <table width="220" border="0" cellspacing="0" cellpadding="5">
                    <tr>
                      <td colspan="2" align="right"><a href="#">»View Schedule</a></td>
                      </tr>
                    <tr>
                      <td bgcolor="#d41d82" style="color:#fff; padding:10px;"><span style="font-size:16px;"><strong>Earliest delivery</strong></span><br />
                       <strong> if I place my order now</strong></td>
                      <td bgcolor="#d41d82" style='padding:10px'><img src="{$php5WebPath}/images/ico_clock1.png" width="26" height="26" border=1 /></td>
                    </tr>
                    <tr>
                      <td colspan="2" bgcolor="#f1f1f1" style="color:#000; padding:13px; border:1px solid #ccc;"><strong>
                        Day: {$earliest_date_d1}<br />
                        Date: {$earliest_date_d2}<br />
                        Time: after {$earliest_time_d1}</strong></td>
                      </tr>
                  </table></td>
              </tr>
              <tr>
                <td width="42"><strong>Time</strong></td>
                <td colspan="3" valign="top"><p>
                 {$delivery_options}
                 <p>&nbsp;</p></td>
                </tr>
            </table>
          <p class="line2"></p>
          <p><strong>Special Delivery Instructions</strong></p>

          <table>
            <tr>
              <td><input  type="checkbox" name="call_before_delivery" id="checkbox" value='1' {$call_before_delivery} /></td>
              <td><span style='padding-bottom:5px; border:0px solid red;'>Call recipient before delivery  &nbsp;&nbsp;&nbsp;&nbsp;</span></td>
              <td></td>
              <td><input type="checkbox" name="avoid_lunch" id="checkbox2" value='1' {$avoid_lunch} /> </td>
              <td>Avoid lunch hour</td>                            
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