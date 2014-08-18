<p class="pathway"><a href="{$php5WebPath}">Home</a> - <a href="{$url_cat}">{$pathway->category_name}</a> - {$content->title}</p>
<div style="margin-left:15px; margin-right:15px;">
<p class="header">{$content->title}</p>                   
<p id="content_info" style="font-size:12px;">{$content->fulltext}</p>    
</div>
<div class="clr">&nbsp;</div>
{if $content->content_id==19}
               <div style="color:#666; padding-left:15px; padding-right:15px;">
                <form action={$contact_action} method=post class="cmxform" id="vForm6"> 
                <table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr> 
    <td><strong>Name :</strong><span style="color:#F00">*</span><br />
        
        <input type='text' size="60" name='name'  value="" class='required in' style="width:100%;" />
        </td>
  </tr>
  <tr>
    <td><strong>Address :</strong><span style="color:#F00">*</span><br />      
      <input type='text' size="60" maxlength="40" name='address'  value="" class='required in' style="width:100%;" />
      </td>
  </tr>
  <tr>
    <td><strong>Address :</strong><br />      
      <input type='text' size="30" maxlength="40" name='address1'  value="" class='inputtext' style="width:100%;" />
      </td>
  </tr>
  <tr>
    <td><strong>City :</strong><br />      
      <input type='text' size="30" maxlength="40" name='city'  value="" class='inputtext' style="width:100%;" />
      </td>
  </tr>
  <tr>
    <td><strong>Postal code :</strong><br />      
      <input type='text' size="30" maxlength="40" name='postal_code'  value="" class='inputtext' style="width:100%;" />
      </td>
  </tr>
  <tr>
    <td><strong>Country :</strong><span style="color:#F00">*</span><br />      
      <select name="country" id="country" style="width:100%;" class="inputtext">        
       {foreach from=$countries item=country}                    
       <option value="{$country->country}" {if $country->country=='Singapore'}selected=&quot;selected&quot;{/if}&gt;{$country->country}</option>        
       {/foreach}                    
      </select>
     </td>
  </tr>
  <tr>
    <td><strong>Email address :</strong><span style="color:#F00">*<br />
      <input type='text' size="30" maxlength="40" name='email_address'  value="" class='required in' style="width:100%;" />
    </td>
  </tr>
  <tr>
    <td><span class="input" style="color:#F00;">Please enter at least one contact number!
    </span><br />
    <strong>Telephone :</strong><span style="color:#F00">*</span><br />    
    <input type='text' size="20" maxlength="40" name='telephone'  value="" class='required in' id="telephone" style="width:100%;" />
    </td>
  </tr>
  <tr>
    <td><strong>Handphone :</strong><span style="color:#F00">*</span><br />        
        <input type='text' size="20" maxlength="40" name='handphone'  value="" class='required in' id="handphone" style="width:100%;" />
        </td>
  </tr>
  <tr>
    <td><strong>Enquiry :</strong><br />      
      <textarea name="enquiry" cols="60" rows="7" id="enquiry" style="width:100%;"></textarea>
      <br /><div style="margin-left:10px; font-size:11px;"><span style="color:#F00">*</span> Compulsory Fields</div>
     </td>
  </tr>
  <tr>
    <td><input type="submit" name="button" id="button" value="Send Enquiry" /></td>
  </tr>
                </table>

                </form> 
                </div>
                  <table width="100%" border="0" cellspacing="1" cellpadding="5" style="border-top:2px solid #ccc; margin-top:20px;">
              <tr>
                <td valign="top" bgcolor="#eeeeee" style="padding-left:15px;padding-right:15px;"><p><strong>Telephone:</strong><br />
                  +65 6844 2222</p>
                  <p><strong>Fax:</strong><br />
                +65 6844 2223</p></td>
                </tr>
              <tr>
                <td valign="top" bgcolor="#eeeeee" style="padding-left:15px;padding-right:15px;"><p><strong>Email:</strong><br />
                  <a href="mailto:online@humming.com.sg">online@humming.com.sg</a></p>
                  <p><strong>Address:</strong><br />
                    Humming Flowers &amp; Gifts Pte Ltd<br />
                7 Tai Seng Drive #03-02 Singapore 535218.</p></td>
                </tr>
              <tr>
                <td valign="top" bgcolor="#eeeeee" style="padding-left:15px;padding-right:15px;"><strong>Business Hours:</strong><br />
                  9:00am to 6:15pm (Monday to Friday)<br />
                9:00am to 2:00pm (Saturday)</td>
                </tr>
            </table>
               {/if}
{literal}
<script language="javascript">
$(document).ready(function() {
	$("p#content_info p img").removeAttr('height');
	$("p#content_info p img").attr('width','100%');
});
</script>
{/literal}