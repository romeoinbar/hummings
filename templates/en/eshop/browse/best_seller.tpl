<table width="190" align="left">
<tr>
 <td>
 <div style='width:190px; height:190px; background:#fff;' class=hoverbox>
  <table cellspacing=0 celpadding=0 height=190 width=190>
    <tr>
     <td align=center valign=middle>
          {$resized_image}
     </td>     
    </tr>
  </table>  
  </div>
  <div style="margin-left:30px;">
     <h3 style='padding-bottom:0px; margin-bottom:0px;'>{$name}</h3>
      <div style='font-size:11px; color: #666; '>{$sku}</div>    
     <div>{$rating}</div>
     <div style='padding-top:10px;'><h2>{$price}</h2></div>
     <div style='font-size:10px;'>(with GST {$gst_price})</div>
       {if $notify==1}
     <div><a href="javascript:void();" onClick="loadPopupBox('notify_box_{$sku}');">Notify Me When Available</a></div> 
     {/if}
  </div>
  {if $is_notify==1}
     <div id="notify_box_{$sku}" class="notify_box">    <!-- OUR PopupBox DIV-->
    <a href="javascript:void();" onClick="unloadPopupBox('notify_box_{$sku}');" class="notify_boxClose">X Close</a>  
    <div style="margin-top:10px;"> 
    Please enter your email to be notified once <strong>{$name} ({$sku})</strong> is back in stock: <br /><br />
     <input name="email_notify_{$sku}" id="email_notify_{$sku}" type="text" style="width:200px; color:#666;" {if $user_email==''}placeholder="your@email.com"{else}value="{$user_email}"{/if} /> <input name="btn_send" type="button" value="SEND" style="padding-bottom:3px; height:24px;" onclick="notify_quantity('{$product_id}|0',$('#email_notify_{$sku}').val(),'notify_box_{$sku}'); " />
     </div>
</div>
{/if}

 </td>
 </tr>
</table>

