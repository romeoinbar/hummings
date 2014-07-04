{$msg}
<div style='margin:5px; padding:20px; border:1px solid #ccc;' id=checkout_page>

          
<form action='{$url_billing_address2}' method=post id="vForm" class="cmxform" >
          <table width="100%" border="0" cellspacing="0" cellpadding="5">

            <tr>
              <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:20px; margin-bottom:20px;">
                  <tr>
                    <td width="380" valign="top" style="padding-right:20px;"><p><strong>Your Personal Details</strong></p>
                      <p>Title:*<br />
                        {$title}
                        </select>
                      </p>
                      <p>Surname:*<br />
                        <input name="surname" type="text" class="normal_textinput required" value="{$obj->surname}" size=40 />
                      </p>                      
                      <p>Given Name:*<br />
                        <input name="name" type="text" class="normal_textinput required" value="{$obj->name}" size=40 />
                      </p>
                      <p>E-Mail:*<br />
                        <input name="email" type="text" class="normal_textinput required email" value="{$obj->email}" size=40 />
                      </p>
                      <p>Mobile Number:*<br />
                        <input name="pre_telephone1" type="text"  class="digits" value="{$obj->pre_telephone1}" size="10"  placeholder="Country code" />
                        <input name="mid_telephone1" type="text"  class="digits" value="{$obj->mid_telephone1}" size="10"  placeholder="Area code"  />
                        <input name="telephone1" type="text" class="digits required" value="{$obj->telephone1}" placeholder="Number" />
                      </p>
                      <p>Work Number:<br />
                        <input name="pre_telephone2" type="text"  class="digits" value="{$obj->pre_telephone2}" size="10" placeholder="Country code" />
                        <input name="mid_telephone2" type="text"  class="digits" value="{$obj->mid_telephone2}" size="10" placeholder="Area code"  />                        
                        <input name="telephone2"  value="{$obj->telephone2}" placeholder="Number" />
                      </p>
                      <p>Fax:<br />
                        <input name="pre_fax" type="text"  class="digits" value="{$obj->pre_fax}" size="10" placeholder="Country code" />
                        <input name="mid_fax" type="text"  class="digits" value="{$obj->mid_fax}" size="10"  placeholder="Area code"   />                        
                        <input name="fax"  value="{$obj->fax}" placeholder="Number" />
                      </p></td>

                    <td valign="top" style="padding-left:20px;"><p><strong>Your Address</strong></p>
                      <p>Company:<br />
                        <input name="company" type="text" class="normal_textinput" id="textfield27" value="{$obj->company}" />
                      </p>
                      <p>Block / Unit <br />
                        <input name="block" type="text" class="textinput" id="textfield28" size="5" value="{$obj->block}" />

                        <input name="unit" type="text" class="textinput" id="textfield29" size="10" value="{$obj->unit}" />
                      </p>
                      <p>Building<br />
                        <input name="building" type="text" class="normal_textinput" id="textfield30" value="{$obj->building}" />
                      </p>
                      <p>Street*<br />
                        <input name="address1" type="text" class="normal_textinput required" id="" value="{$obj->address1}" /><br/>
                       <input name="address2" type="text" class="normal_textinput " id="" value="{$obj->address2}" /> 
                      </p>
                      <p>City / State<br />
                        <input name="city" type="text" id="textfield34"  class="required" value="{$obj->city}" readonly="readonly" />
                        <input name="state" type="text" id="textfield34"  class="required" value="{$obj->state}" readonly="readonly" />
                      </p>
                      
                      <p>Postal Code* / Country<br />
                        <input name="postcode" type="text" class=" required digits" id="textfield35"  maxlength=6  value="{$obj->postcode}" />
  											<input  type="text"   size=8  value="Singapore"  style="height:18px;padding:0px; width:200px; " readonly="readonly" />
                       <input id="country"  name="country" type="text" value="SG"    />                                           
                        <span class="hiddenCountry"></span>
                      </p>

                      <p>
                      <i>*mandatory fields</i><br/><br />

                        <input type="submit" name="button4" id="button4" value="Continue" class="gray_btn" />
                      </p></td>
                  </tr>
              </table></td>
            </tr>
          </table>
</form>          
</div>