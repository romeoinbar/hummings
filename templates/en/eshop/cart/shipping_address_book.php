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
                      
<form action='{$url_shipping_address2}' method=post id="vForm" class="cmxform" >
          <table width="100%" border="0" cellspacing="0" cellpadding="5">
            <tr class="step">
              <td>STEP 3: Shipping Address</td>
              <td align="right"><a href="{$url_shipping_address}">&raquo; Modify</a></td>
            </tr>
            <tr>
              <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:20px; margin-bottom:20px;">
                  <tr>
                    <td width="380" valign="top" style="padding-right:20px;">
                    <input type="button" value=" Same as billing address " class="gray_btn"  
                                                                                 onClick=window.location="{$shipping_address_load_user}" />
                    <input type="button" value=" Use Address Book " class="gray_btn"  
                                                                                 onClick=window.location="{$url_shipping_address_book}" />                                                                                                                                         
                                                                                 
                    <p><strong>Recipient's Personal Details</strong></p>
                      <p>Title:*<br />
                        {$title}
                        </select>
                      </p>
                      <p>Name:*<br />
                        <input name="name" type="text" class="normal_textinput required" value="{$obj->name}" size=40 />
                      </p>
                      <p>E-Mail:*<br />
                        <input name="email" type="text" class="normal_textinput required email" value="{$obj->email}" size=40 />
                      </p>
                      <p>Mobile Number:*<br />
                        <input name="telephone1" type="text" class="normal_textinput required" value="{$obj->telephone1}" />
                      </p>
                      <p>Work Number:<br />
                        <input name="pre_telephone2" type="text"  class="" value="65" size="5" />
                        <input name="telephone2"  value="{$obj->telephone2}" />
                      </p>
                      <p>Fax:<br />
                        <input name="pre_fax" type="text"  class="" value="65" size="5" />
                        <input name="fax"  value="{$obj->fax}" />
                      </p></td>
                    <td bgcolor="#b0b0b0" width="1"></td>
                    <td valign="top" style="padding-left:20px;"><p><strong>Recipient's Address</strong></p>
                      <p>Company:<br />
                        <input name="company" type="text" class="normal_textinput" id="textfield27" value="{$obj->company}" />
                      </p>
                      <p>Block <br />
                        <input name="block" type="text" class="textinput" id="textfield28" size="5" value="{$obj->block}" />
                        Unit #
                        <input name="unit" type="text" class="textinput" id="textfield29" size="20" value="{$obj->unit}" />
                      </p>
                      <p>Building<br />
                        <input name="building" type="text" class="normal_textinput" id="textfield30" value="{$obj->building}" />
                      </p>
                      <p>Street*<br />
                        <input name="address1" type="text" class="normal_textinput" id="textfield31" value="{$obj->address1}" />
                        <br />
                        <br />
                        <input name="address2" type="text" class="normal_textinput" id="textfield32" value="{$obj->address2}" />
                        <br />
                        <br />
                        <input name="address3" type="text" class="normal_textinput" id="textfield33" value="{$obj->address3}" />
                      </p>
                      <p>City<br />
                        <input name="city" type="text" class="normal_textinput" id="textfield34"  class="required" value="{$obj->city}" />
                      </p>
                      <p>Postal Code:*<br />
                        <input name="postcode" type="text" class="normal_textinput required" id="textfield35"  value="{$obj->postcode}" />
                      </p>
                      <p>Country:*<br />
                        {$country}
                      </p>

                      <p>
                        <input type="submit" name="button4" id="button4" value="Continue" class="gray_btn" />

                      </p></td>
                  </tr>
              </table></td>
            </tr>
          </table>
</form>          
</div>