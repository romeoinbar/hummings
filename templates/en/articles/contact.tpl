<div class="inner_body">	
	<div id="news">
	  <p class="pathway"><a href="{$php5WebPath}">Home</a> &raquo; <a href="{$url_cat}">{$pathway->category_name}</a> &raquo; Contact Us</p>
      <div class="inner">  
      		<div id="colums1">
			<div class="col1">              
              <h2>Thank you for sending in your enquiry/ feedback, we will attend to your enquiry shortly.</h2>
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
                7 Tai Seng Drive #03-02 Singapore 535218.</p></td>
                <td valign="top" bgcolor="#eeeeee">
                <p><strong>Business Hours:</strong><br />
                  9:00am to 6:15pm (Monday to Friday)<br />
                9:00am to 2:00pm (Saturday)</p></td>
              </tr>
            </table>
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