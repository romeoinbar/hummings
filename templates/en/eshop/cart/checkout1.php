<div style='padding:20px; background=#fff;' id=checkout_page>
<h1>Checkout</h1>
          <table width="100%" border="0" cellspacing="0" cellpadding="5">
          <tr class="step">
            <td>STEP 1: Checkout Options</td>
            <td align="right"></td>
          </tr>
          <tr>
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:20px; margin-bottom:20px;">
              <tr>
                <form action='{$url_billing_address}' method=post  >                
                <td width="380" valign="top" style="padding-right:20px;">
                <p><strong>I am a <span class="pink_text">New Customer</span>.</strong></p>
                <p>You can choose between</p>
                <p><input name="checkout_type" type="radio" value="register" checked="checked" style="padding-top:16px; border:1px solid #ccc;" /> 
                  <strong>Register Account</strong></p>
      			<p><input name="checkout_type" type="radio" value="guest" /> 
      			  <strong>Guest Checkout</strong></p>
                  <p>By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.</p>
                  <p><input type="submit" name="button" id="button" value="Continue" class="gray_btn" /></p>
                </td>
                </form>
                <td bgcolor="#b0b0b0" width="1"></td>
                <td valign="top" style="padding-left:20px;">
                <p><strong>I am a <span class="pink_text">Returning Customer</span>.</strong></p>
                <p>Enter your login details.</p>
                <form action='{$url_login}' method=post id="vForm" class="cmxform" >  
                <p><strong>Email:</strong><br />                
                  <input type="text" name="email" id="textfield" class="required email" />
                </p>
                <p><strong>Password:</strong><br />
                 <input type="text" name="password" id="textfield" class="required" />
				</p>
                <p style="font-size:11px;"><a href="{$url_reset_password}">Forgot your password?</a></p>
                <p>
                  <input type="submit" name="button2" id="button2" value="Log in" class="gray_btn" />
                </p>
                </form>
                </td>
              </tr>
            </table></td>
            </tr>
          </table> 
          
     
</div>