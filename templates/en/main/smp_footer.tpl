  <table width="100%" border="0" cellspacing="0" cellpadding="5" style="color:#5c5c5c;">
  <tr>
    <td style="padding-left:15px;"><strong>Sign up for updates </strong></td>
    </tr>
  <tr>
    <td style="padding-left:15px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><input type="text" class="inputtext" style="width:100%; border:1px solid #a19d9e;" placeholder="Enter Email Address" /></td>
        <td width="10">&nbsp;</td>
        <td width="100"><input name="btnsubmit" class="btn_submit" value="" type="submit" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="left" style="border-bottom:1px solid #dbdbdb; border-top:1px solid #dbdbdb; padding-left:15px;">
    {if $logined==0}
    <a href="{$url_signin}"><img src="{$php5WebPath}/images/home-signin.gif" border="0" align="absmiddle" /></a>
    {else}
    Welcome {$name}. <a href="{$url_logout}" style="color:#b4036b;"><strong>Logout</strong></a>.
    {/if}
    &nbsp;<a href="{$url_checkout}"><img src="{$php5WebPath}/images/home-checkout.gif" border="0" align="absmiddle" /></a></td>
    </tr>
  <tr>
    <td align="center">    
<a href="{$url_fullsite}" style="color:#5b5b5b; text-decoration:none;">Full Site</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="{$url_service}" style="color:#5b5b5b; text-decoration:none;">Service Policy</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="{$url_contact}" style="color:#5b5b5b; text-decoration:none;">Contact Us</a>
   </td>
  </tr>
  <tr>
    <td align="center">&copy;Humming Flowers & Gifts. All Right Reserved</td>
  </tr>
  </table>

<!--<div align="center" style="border-top:1px solid #ccc; font-size:11px; color: #999; padding-top:5px;">&copy;Humming Flowers & Gifts. All right Reserved</div>-->