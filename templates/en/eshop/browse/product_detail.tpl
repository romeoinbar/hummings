

<div style='margin:0px; padding:0px 15px 0px 15px; border:0px solid red;'>
<table border=0 width=100%>
<tr>
 <td width="300" valign=top><table border=0><tr><td><div style=' text-align:center; border:0px solid #ccc; padding:10px;'>{$resized_image}</div></td></tr>
                <tr><td>{$addon_image}</td></tr>
  <tr><td><div style="padding-top:5px;padding-left:0px">			
             <div style='padding-top:15px; border:0px solid red; clear:both;'>
          		<iframe src="//www.facebook.com/plugins/like.php?href={$pageURL}&amp;send=false&amp;layout=standard&amp;width=450&amp;show_faces=true&amp;action=like&amp;colorscheme=light&amp;font&amp;height=80&amp;appId=242802689075885" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:305px; height:25px;" allowTransparency="true"></iframe>
            </div>  
            
<div style='padding:5px; border-top:1px solid #ccc; border-bottom:1px solid #ccc; '>
<a href="http://www.facebook.com/sharer.php?s=100&amp;p[title]={$name}&amp;p[url]={$link_product}&amp;&amp;p[images][0]={$product_image}" target="_blank"><span class="st_facebook" displaytext="" st_processed="yes"><span style="text-decoration:none;color:#000000;display:inline-block;cursor:pointer;" class="stButton" ><span class="chicklets facebook"></span><img src="http://w.sharethis.com/images/check-small.png" style="position: absolute; top: -6px; right: auto; width: 13px; height: 13px; max-width: 13px; max-height: 13px; display: none; left: 8px;"></span></span></a>
<span class='st_pinterest' displayText=''></span>
<span class='st_twitter' displayText=''></span>
<span class='st_sharethis' displayText=''></span>
</div>

</div></td></tr></table>
 </td>
 <td width=10></td>
 <td>
    <table border=0 ><tr><td>
     <h1 style='color:#000'>{$name}</h1>
     <div> Reference: <b>{$sku}</b></div>
     <div style='padding-top:15px; font-size:12px;'>
        <h2>{$price}</h2> <br /> (with GST {$gst_price})
     </div>
     </td>
  	<td valign="top">{$rating_product}
		</td></tr></table>
     <div style='padding-top:15px; width:100%; cursor:pointer2;' onClick2=showhide('review'); ></div>
     <div style='margin-top:5px; background:#faf6ea; padding:15px; border:0px solid #ccc; '>
       <h2>Item Description </h2><br/><br/>
       {$description}
     </div>   
 <form action='{$url_add}' method=post>    
<input type='hidden' name='product_id' value='{$product_id}'>
        {$addon}


     {if $quantity_of_product>0}
     <div style='margin-top:15px; '>
     {if $button!=''}
       <b>Quantity :</b> 
       <select name=qty >
        <option value=1>1</option>
        <option value=2>2</option>
        <option value=3>3</option>
        <option value=4>4</option>
        <option value=5>5</option>
        <option value=6>6</option>
        <option value=7>7</option>
        <option value=8>8</option>
        <option value=9>9</option>
        <option value=10>10</option>
         <option value=1>11</option>
        <option value=2>12</option>
        <option value=3>13</option>
        <option value=4>14</option>
        <option value=5>15</option>
        <option value=6>16</option>
        <option value=7>17</option>
        <option value=8>18</option>
        <option value=9>19</option>
        <option value=10>20</option>
       </select>
       <br/>
     {/if}  
       Availability : {$lead_time} <br/>{$show_lead_time}
      
       
     </div>   
     <br/>
     {$button} 
     {else}
     <div style='margin-left:15px; '>
         Availability : out of stock         
     </div>  
     {/if}
     {if $is_notify==1}  
            <div id="notify_block" style="margin-left:15px; margin-top:10px; color:#333;">
            Click <a href="javascript:void(0);" onclick="$('#frm_notify').show('slow');">here</a> to notify me once item is back in stock.
            <div id="frm_notify" style="display:none; margin-top:10px;">
            <input name="email_notify" id="email_notify" type="text" style="width:200px; color:#666;" {if $user_email==''}placeholder="your@email.com"{else}value="{$user_email}"{/if} /> <input name="btn_send" type="button" value="SEND" style="padding-bottom:3px; height:24px;" onclick="notify_quantity('{$product_id}|1',$('#email_notify').val(), 0);" />
            </div>
            </div>
            {/if}	
       </form>    
 </td>
 <td valign=top width="235">{$related}</td>
 </tr>

</table>
</div>
