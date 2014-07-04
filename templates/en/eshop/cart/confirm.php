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

          <table width="100%" border="0" cellspacing="0" cellpadding="5"  style='padding-bottom:5px;'>
            <tr class="step">
              <td>STEP 5: Message to Recipient</td>
              <td align="right"><a href="{$url_message}">&raquo; Modify</a></td>
            </tr>
          </table>
                                                        
<form action='{$url_confirm2}' method=post id="vForm" class="cmxform" >
          <table width="100%" border="0" cellspacing="0" cellpadding="5"  style='padding-bottom:5px;'>
            <tr class="step">
              <td>STEP 6: Confirm Order</td>
              <td align="right"></td>
            </tr>
            <tr>
              <td colspan="2">
                      {$list}
            <p class="line2"></p>
           <input type="submit" name="button4" id="button4" value="Confirm Order" class="gray_btn" />               
              </td>
            </tr>
          </table>
</form>          
</div>