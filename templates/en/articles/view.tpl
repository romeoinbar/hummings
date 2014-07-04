<div class="inner_body">	
	<div id="news">
	  <p class="pathway"><a href="{$php5WebPath}">Home</a> &raquo; <a href="{$url_cat}">{$pathway->category_name}</a> &raquo; {$content->title}</p>
      <div class="inner">  
      		<div id="colums1">
			<div class="col1">  
            		  	   
              <p class="header">{$content->title}</p>  
                {if $content->content_id!=20}      
              <p>{$content->fulltext}</p>
               {/if} 
               {if $content->content_id==20}
               <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="210" valign="top"><img src="{$php5WebPath}/images/request.jpg"/></td>
                    <td valign="top"><div align="left">
                <form action={$action} method=post class="cmxform" id="vForm5">  
               <div class=label2>Name<span style="color:#F00">*</span></div>
              <div class=input><input type='text' size="50" name='name'  value="" class='required in'  ></div>
              <div style='clear:both'></div> 
              
              <div class=label2>Address<span style="color:#F00">*</span></div>
              <div class=input><input type='text' size=50 maxlength=40 name='address'  value="" class='required in'  ></div>
              <div style='clear:both'></div> 
              
              <div class=label2></div>
              <div class=input><input type='text' size=50 maxlength=40 name='address1'  value="" class='in'  ></div>
              <div style='clear:both'></div> 
              
              <div class=label2>City</div>
              <div class=input><input type='text' size=50 maxlength=40 name='city'  value="" class='in'  ></div>
              <div style='clear:both'></div> 
              
              <div class=label2>Postal code :</div>
              <div class=input><input type='text' size=50 maxlength=40 name='postal_code'  value="" class='in'  ></div>
              <div style='clear:both'></div> 
              
              <div class=label2>Country<span style="color:#F00">*</span></div>
              <div class=input><select name="country" id="country" class="required in" style="height:22px;">
                    {foreach from=$countries item=country}
                    <option value="{$country->country}" {if $country->country=='Singapore'}selected="selected"{/if}>{$country->country}</option>
                    {/foreach}
                    </select></div>
              <div style='clear:both'></div> 
              
              <div class=label2>Email address<span style="color:#F00">*</span></div>
              <div class=input><input type='text' size=50 maxlength=40 name='email_address'  value="" class='required in'  ></div>
              <div style='clear:both'></div>  
             
              <div align="right" style="width:400px;"><input type="image" src="{$php5WebPath}/images/btn_sendme.jpg"  style="border:none;"/></div>
              </form>           
             </div></td>
                  </tr>
                </table>
               {/if}
               {if $content->content_id==19}
               <div style="color:#666;">
                <form action={$contact_action} method=post class="cmxform" id="vForm6"> 
              <div class=label2><strong>Name :</strong></div>
              <div class=input><span style="color:#F00">*</span> <input type='text' size="60" name='name'  value="" class='required in' style="width:350px;"></div>
              <div style='clear:both'></div> 
              
              <div class=label2><strong>Address :</strong></div>
              <div class=input><span style="color:#F00">*</span> <input type='text' size=60 maxlength=40 name='address'  value="" class='required in' style="width:350px;" ></div>
              <div style='clear:both'></div> 
              
              <div class=label2><strong>Address :</strong></div>
              <div class=input><span style="padding-left:8px;"><input type='text' size=30 maxlength=40 name='address1'  value="" class='in' style="width:350px;" ></span></div>
              <div style='clear:both'></div> 
              
              <div class=label2><strong>City :</strong></div>
              <div class=input><span style="padding-left:8px;"><input type='text' size=30 maxlength=40 name='city'  value="" class='in' style="width:350px;" ></span></div>
              <div style='clear:both'></div> 
              
              <div class=label2><strong>Postal code :</strong></div>
              <div class=input><span style="padding-left:8px;"><input type='text' size=30 maxlength=40 name='postal_code'  value="" class='in' style="width:350px;" ></span></div>
              <div style='clear:both'></div> 
              
              <div class=label2><strong>Country :</strong></div>
              <div class=input><span style="color:#F00">*</span> <select name="country" id="country" style="width:350px;">
                    {foreach from=$countries item=country}
                    <option value="{$country->country}" {if $country->country=='Singapore'}selected="selected"{/if}>{$country->country}</option>
                    {/foreach}
                    </select></div>
              <div style='clear:both'></div> 
              
              <div class=label2><strong>Email address :</strong></div>
              <div class=input><span style="color:#F00">*</span> <input type='text' size=30 maxlength=40 name='email_address'  value="" class='required in' style="width:350px;" ></div>
              <div style='clear:both'></div> 
              <div class=label2></div><div class=input style="color:#F00;">Please enter at least one contact number!</div>
              <div class=label2><strong>Telephone :</strong></div>
              <div class=input><span style="color:#F00">*</span> <input type='text' size=20 maxlength=40 name='telephone'  value="" class='required in' id="telephone" style="width:350px;" ></div>
              <div style='clear:both'></div>
              
              <div class=label2><strong>Handphone :</strong></div>
              <div class=input><span style="color:#F00">*</span> <input type='text' size=20 maxlength=40 name='handphone'  value="" class='required in' id="handphone" style="width:350px;" ></div>
              <div style='clear:both'></div>
              
              <div class=label2><strong>Enquiry :</strong></div>
              <div class=input><span style="padding-left:8px;"><textarea name="enquiry" cols="60" rows="7" id="enquiry" style="width:350px;"></textarea></span></div>
              <div style='clear:both'></div>
              <div style="margin-left:10px; font-size:11px;"><span style="color:#F00">*</span> Compulsory Fields</div>
              <div align="center"><input type="submit" name="button" id="button" value="Send Enquiry" class="gray_btn" /></div> 
                </form> 
                </div>
                  <table width="100%" border="0" cellspacing="0" cellpadding="5" style="border-top:2px solid #ccc; margin-top:20px;">
              <tr>
                <td width="150" valign="top" bgcolor="#eeeeee"><p><strong>Telephone:</strong><br />
                  +65 6844 2222</p>
                  <p><strong>Fax:</strong><br />
                +65 6844 2223</p></td>
                <td valign="top" bgcolor="#eeeeee"><p><strong>Email:</strong><br />
                  <a href="mailto:online@humming.com.sg">online@humming.com.sg</a></p>
                <p><strong>Address:</strong><br />
                  Humming Flowers &amp; Gifts Pte Ltd<br />
                21 Ubi Road 1 #04-02 Singapore 408724.</p></td>
                <td valign="top" bgcolor="#eeeeee">
                <p><strong>Business Hours:</strong><br />
                  9:00am to 6:15pm (Monday to Friday)<br />
                9:00am to 2:00pm (Saturday)</p></td>
              </tr>
            </table>
               {/if}
              <!-- <div class="header1">Others</div>
               <div class="line_news"></div>
               {foreach from=$other_news item=other_new}
			  <p>&raquo; <a href="{$other_new->url}">{$other_new->title}</a></p>
              {/foreach}-->
             </div>
            <div class="col2">
            {foreach from=$right_menus item=right_menu}
               <div class="right_header">{$right_menu->category_name}</div>
                <p class="right_menu">
                {foreach from=$right_menu->other_contents item=content}
               <a href="{$content->url}" id="{$content->activemenu}">&raquo; {$content->title}</a>
                {/foreach}
               </p>
             {/foreach}
               </div>      
           
      </div>
    </div>
   
    </div>
<div class="clr">&nbsp;</div>