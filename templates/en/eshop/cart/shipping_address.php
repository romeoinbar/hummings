
<div style='padding:0px;' id=checkout_page>
          <table width="100%" border="0" cellspacing="0" cellpadding="5">
            <tr class="">
              <td><h2>Delivery Details for {$to_target}</h2></td>
              <td>
                 <table>
                   <tr>
                     <td><input type=checkbox value=1 name=remember_address  {$remember_checked} style='border:0px;' ></td>
                     <td> </td>
                     <td><i>Use this address for all gift deliveries</i></td>
                   </tr>
                 </table>
							</td>
            </tr>
            <tr>
              <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:0px; margin-bottom:20px;">
                  <tr>
                    <td width="380" valign="top" style="padding-right:20px;">

                   <div class=forminpt>
                     <p><strong>Title:*</strong><br />
                        {$title}
                        </select>
                     </p>
                      <p><strong>Surname:</strong><br />
                        <input id="surname{$i}"  name="surname{$i}" type="text" class=""  style="width:420px; padding:0px; height:18px;" value="{$obj->surname}" size=40 />
                     </p>                      
                      <p><strong>Name:*</strong><br />
                        <input  id="name{$i}"  name="name{$i}" type="text" class="required" value="{$obj->name}" size=40 style="width:420px; padding:0px; height:18px;"  />
                     </p>
                      <p><strong>E-Mail: {$m1}</strong><br />
                        <input name="email{$i}" type="text" class="email {$m2}" value="{$obj->email}" size=40  style="width:420px; padding:0px; height:18px;"/>
                     </p>
                      <p><strong>Mobile Number:*</strong><br />
                        <input type="text"  id="pre_telephone1{$i}"  name="pre_telephone1{$i}"  class="digits" value="{$pre_telephone1}" size="10" max-size="3" style="height:18px;padding:0px; " placeholder="Country code"  />
                        <input id="mid_telephone1{$i}"  name="mid_telephone1{$i}" type="text"  class="digits" value="{$mid_telephone1}" size="10" max-size="3" style="height:18px;padding:0px; " placeholder="Area code"  />                             
                        <input id="telephone1{$i}" name="telephone1{$i}" type="text" class="digits required" value="{$obj->telephone1}" style="width:200px; padding:0px; height:18px;" placeholder="Number" />
                     </p>
                      <p><strong>Work Number</strong> <span style='color:#aaa;' ><i>(optional)</i></span><br />
                        <input id="pre_telephone2{$i}"   name="pre_telephone2{$i}" type="text"  class="digits" value="{$pre_telephone2}" size="10" max-size="3"  style="height:18px;padding:0px; " placeholder="Country code"  />
                        <input id="mid_telephone2{$i}"  name="mid_telephone2{$i}" type="text"  class="digits" value="{$mid_telephone2}" size="10"  max-size="3" style="height:18px;padding:0px; " placeholder="Area code" />                        
                        <input id="telephone2{$i}"  name="telephone2{$i}"  value="{$obj->telephone2}" class="digits"  style="width:200px; padding:0px; height:18px;" placeholder="Number"  />
                     </p>
                      <p><strong>Fax Number</strong> <span style='color:#aaa;'><i>(optional)</i></span><br />
                        <input id="pre_fax{$i}"  name="pre_fax{$i}" type="text"  class="digits" value="{$pre_fax}" size="10" max-size="3"  style="height:18px;padding:0px; "  placeholder="Country code"  />
                        <input id="mid_fax{$i}"  name="mid_fax{$i}" type="text"  class="digits" value="{$mid_fax}" size="10" max-size="3"  style="height:18px;padding:0px; " placeholder="Area code"   />                        
                        <input id="fax{$i}" name="fax{$i}"  class="digits"  value="{$obj->fax}"  style="width:200px; padding:0px; height:18px;"  placeholder="Number"  />
                     </p>
                      </div>
                      
                      
{literal}
<script type="text/javascript">
function clear_placeholder ()
{
	
{/literal}	

   el = document.getElementById('pre_telephone1{$i}');
   if (el.value == 'Country code')
   el.value='';	
   el = document.getElementById('mid_telephone1{$i}');
   if (el.value == 'Area code')
   el.value='';	   
   el = document.getElementById('telephone1{$i}');
   if (el.value == 'Number')
   el.value='';	   
   
   el = document.getElementById('pre_telephone2{$i}');
   if (el.value == 'Country code')
   el.value='';	
   el = document.getElementById('mid_telephone2{$i}');
   if (el.value == 'Area code')
   el.value='';	   
   el = document.getElementById('telephone2{$i}');
   if (el.value == 'Number')
   el.value='';	   
   
   el = document.getElementById('pre_fax{$i}');
   if (el.value == 'Country code')
   el.value='';	
   el = document.getElementById('mid_fax{$i}');
   if (el.value == 'Area code')
   el.value='';	   
   el = document.getElementById('fax{$i}');
   if (el.value == 'Number')
   el.value='';	      
   
{literal}   
}
</script>
<!--[if IE]>
<script type="text/javascript">
function add_placeholder (id, placeholder)
{
	var el = document.getElementById(id);
	el.placeholder = placeholder;

    el.onfocus = function ()
    {
		if(this.value == this.placeholder)
		{
			this.value = '';

		}
    };

    el.onblur = function ()
    {
		if(this.value.length == 0)
		{
			this.value = this.placeholder;

		}
    };

	el.onblur();
}

// Add right before </body> or inside a DOMReady wrapper
{/literal}

add_placeholder('pre_telephone1{$i}', 'Country code');
add_placeholder('mid_telephone1{$i}', 'Area code');
add_placeholder('telephone1{$i}', 'Number');

add_placeholder('pre_telephone2{$i}', 'Country code');
add_placeholder('mid_telephone2{$i}', 'Area code');
add_placeholder('telephone2{$i}', 'Number');

add_placeholder('pre_fax{$i}', 'Country code');
add_placeholder('mid_fax{$i}', 'Area code');
add_placeholder('fax{$i}', 'Number');
{literal}

</script>
<![endif]-->
{/literal}

                    </td>
                    
                    <td valign="top" style="padding-left:90px;">
                      <p><strong>Company:</strong><br />
                        <input id="company{$i}"   name="company{$i}" type="text" class="normal_textinput"  value="{$obj->company}"   style="height:18px;padding:0px; width:420px; " />
                      </p>
                      <p><strong>Block</strong><span style="padding-left:183px;"><strong>Unit</strong></span><br />
                        <input  id="block{$i}"  name="block{$i}" type="text" class="textinput"  size="5" value="{$obj->block}"   style="height:18px;padding:0px; width:210px; "  />
                      
                        <input id="unit{$i}"   name="unit{$i}" type="text" class="textinput"  size="10" value="{$obj->unit}" style="height:18px;padding:0px; width:205px; "   />
                      </p>
                      
                      <p><strong>Building</strong><br />
                        <input  id="building{$i}"   name="building{$i}" type="text" class="normal_textinput"  value="{$obj->building}"  style="height:18px;padding:0px; width:420px; " />
                      </p>
                      <p><strong>Street*</strong><br />
                        <input id="address1{$i}"   name="address1{$i}" type="text" class="normal_textinput required" value="{$obj->address1}" style="height:18px;padding:0px; width:420px; " />
                      <input id="address1{$i}"   name="address2{$i}" type="text" class="normal_textinput " value="{$obj->address2}" style="height:18px;padding:0px; width:420px; " />
                      </p>
                      
                       <p><strong>Postal Code*</strong><br />
                        <input id="postcode{$i}"  name="postcode{$i}" type="text" class="required digits"  size=8  maxlength=6 value="{$obj->postcode}"  style="height:18px;padding:0px; width:420px; " />
                      </p>                     
                      
                      <p><strong>City / State</strong><br />
                        <input id="city{$i}"  name="city{$i}" type="text" class=""  value="Singapore"   style="height:18px;padding:0px; width:210px;"  readonly="readonly" />
                        <input id="state{$i}"  name="state{$i}" type="text" value="Singapore"  style="height:18px;padding:0px; width:205px;"  readonly="readonly" />
                      </p>
                      <p><strong>Country*</strong><br />
                        <input  type="text"   size=8  value="Singapore"  style="height:18px;padding:0px; width:200px; " readonly="readonly" /><span class="hiddenCountry">{$country}</span>
                      </p>


                   </td>
                  </tr>
              </table></td>
            </tr>
          </table>
 
 
 
 
 
 
 
 



   <div style='border-bottom:1px dotted #999;height:15px; margin-bottom:5px;'></div>
   <h2>Delivery Date & Time</h2>                             

          <table width="100%" border="0" cellspacing="0" cellpadding="5"  style='padding-bottom:5px;'>
            <tr>
              <td colspan="2">
   <div onMouseOver='checkDeliveryOptions({$i});' >              
              
            <table width="100%" border="0" cellspacing="0" cellpadding="3" style="color:#666;">
              <tr>
                <td width="42"><strong>Date</strong></td>
                <td width="167"><span style="font-style:italic;">From</span><br />

                  <input name="delivery_from_date{$i}"  onMouseOver=lock(this,"readonly") onMouseOut=lock(this,"") value="{$delivery_from_date}"   id='delivery_from_date{$i}' type="text" size="15" class="tcal required sp textinput"
                   /></td>
                <td width="10">&nbsp;</td>
                <td width="157"><span style="font-style:italic;">To</span><br />
                  <input name="delivery_to_date{$i}" value="{$delivery_to_date}"  onMouseOver=lock(this,"readonly") onMouseOut=lock(this,"");check_to_date(this,document.getElementById())   type="text" size="15" class="tcal required textinput" />
                  <a rel=tooltip title='yyyy-mm-dd' >
                  <br />
                  </a></td>
                <td width="47">
                <strong>Time</strong>
                </td>
                <td width="353" valign=top rowspan=2>
                <div id='delivery_options'  style='width:302px; border:0px solid red;'  
                
                    > {$delivery_options}</div><label for='delivery_time{$i}' class='error'>Please select at least one type of delivery time.</label></td>
                <td width="254" rowspan="2" valign="top">
                  <table width="220" border="0" cellspacing="0" cellpadding="5">
                    <tr>
                      <td bgcolor="#d41d82" style="color:#fff; padding:10px;"><span style="font-size:16px;"><strong>Earliest delivery</strong></span><br />
                       <strong> if I place my order now</strong></td>
                      <td bgcolor="#d41d82" style='padding:10px'><img src="{$php5WebPath}/images/ico_clock1.png" width="26" height="26" border=1 /></td>
                    </tr>
                    <tr>
                      <td colspan="2" bgcolor="#f1f1f1" style="color:#000; padding:13px; border:1px solid #ccc;"><strong>
                        Day: {$earliest_date_d1}<br />
                        Date: {$earliest_date_d2}<br />
                        Time: {$earliest_time_d1}</strong></td>
                      </tr>
                  </table></td>
              </tr>
              <tr>
                <td colspan=7 >
                
          <p><strong>Special Delivery Instructions</strong></p>

          <table>
            <tr>
              <td><input  type="checkbox" style='border:0px;' name="call_before_delivery{$i}" id="checkbox" value='1' {$call_before_delivery} /></td>
              <td><span style='padding-bottom:5px; border:0px solid red;'>Call recipient before delivery  &nbsp;&nbsp;&nbsp;&nbsp;</span></td>
              <td></td>
              <td><input type="checkbox" style='border:0px;' name="avoid_lunch{$i}" id="checkbox2" value='1' {$avoid_lunch} /> </td>
              <td>Avoid lunch hour</td>                            
            </tr>
          </table>
   </div>                       
                </td>       
                </tr>
            </table>

            





<div style='border-bottom:1px dotted #999; clear:both ; height:15px;'></div>








         <table width="100%" border="0" cellspacing="0" cellpadding="5"  style='padding-bottom:5px;'>

            <tr>
              <td colspan="2">
 			<h2>Message to Recipient</h2>
            <p>A message card will be provided and printed accordingly to your message in the following.
If you like to remain anonymous to the sender simply leave out your name under From. Kindly leave blank if no card is required. 
            

 </p>           
            <table width="100%" border="0" cellspacing="0" cellpadding="5">
              <tr>
                <td width="25%"><strong>To:</strong></td>
                <td width="4%">&nbsp;</td>
                <td width="71%"><strong>Message:</strong></td>
                <td>
                            <table>
            <tr>
            <td valign=top><img src='{$php5WebPath}/images/help.jpg'></td>
            <td valign=top>
			Need some help with the Message? 

            </td>
            </tr>
            </table>
                
                
                </td>
              </tr>
              <tr>
                <td>
                 <input name="message_receiver{$i}" type="text" value="{$message_receiver}" class="normal_textinput " maxlength="40"  />
                 <input name="message_receiver2{$i}" type="text" value="{$message_receiver2}" class="normal_textinput " maxlength="40"  />
                 <input name="message_receiver3{$i}" type="text" value="{$message_receiver3}" class="normal_textinput " maxlength="40"  />                                 
                </td>
                <td><br /></td>
                <td rowspan="4" valign="top">
                     <input name="message_content{$i}" id="message_content{$i}"  class=" "  maxlength=45  size=45  value="{$message_content}"><br/>
                     <input name="message_content2{$i}" id="message_content2{$i}"  class=""  maxlength=45  size=45  value="{$message_content2}"><br/>
                     <input name="message_content3{$i}" id="message_content3{$i}"  class=""  maxlength=45  size=45  value="{$message_content3}"><br/>
                     <input name="message_content4{$i}" id="message_content4{$i}"  class=""  maxlength=45  size=45  value="{$message_content4}"><br/>
                     <input name="message_content5{$i}" id="message_content5{$i}"  class=""  maxlength=45  size=45  value="{$message_content5}"><br/>
                     <input name="message_content6{$i}" id="message_content6{$i}"  class=""  maxlength=45  size=45  value="{$message_content6}"><br/>
                                                               
                     </td>
                <td rowspan="4"  valign="top">
                            {$select_message}
           
                            <div id='wishes{$i}' style='width:300px; margin-top:10px;'></div>
                </td>
              </tr>
              <tr>
                <td><strong>From:</strong></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>
                <input name="message_sender{$i}" value="{$message_sender}"  type="text" class="normal_textinput " maxlength="40"  />
                <input name="message_sender2{$i}" value="{$message_sender2}"  type="text" class="normal_textinput " maxlength="40" />
                <input name="message_sender3{$i}" value="{$message_sender3}"  type="text" class="normal_textinput" maxlength="40" />                                
                </td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table>
       </table>     
            
            <i>*mandatory fields</i>
            
            
<div style='padding:5px;'><input type='submit' class=gray_btn value='Save & Continue' onClick=clear_placeholder()  ></div>            
            
            
            
            
                        
            

              </td>
            </tr>
          </table>

              

 
      
</div>

