<!-- Content Area -->

<div id="content"> 
  
  <!-- Component Title -->
  <div class="pagetitle icon-48-module">
    <h2>Manager: VIEW USER</h2>
  </div>
  
  <!-- System Messages -->
  
  <div id="system-message-container"> {if $msg}
    <dl id="system-message">
      <dt class="message">Message</dt>
      <dd class="message message">
        <ul>
          <li>{$msg}</li>
        </ul>
      </dd>
    </dl>
    {/if} </div>
  
  <!-- Sub Menu Navigation -->
  <div class="subheader">
    <h3 class="element-invisible">Sub Menu</h3>
    <div id="no-submenu"></div>
  </div>
  
  <!-- Beginning of Actual Content -->
  <div id="element-box">
    <p id="skiptargetholder"><a id="skiptarget" class="skip" tabindex="-1"></a></p>     
           <table width="100%" border="0" cellspacing="0" cellpadding="5">                
              <tr>
                <td align="right">&nbsp;</td>
                <td colspan="3" align="right"><input type="button" value="Back" class="button_class" onclick="redirectToUrl('{$link_list_user}')"/></td>
              </tr>
              <tr>
                <td colspan="4"><div style="margin-left:20px;"><strong>{$row->type}</strong></div></td>
              </tr>
              <tr>
                <td align="right">
                
                <div>
                {if $row->image!=''}
                <img src="{$php5WebPath}/images/{$row->image}" width="60" height="60" />
                {else}
                <img src="{$php5WebPathAD}/images/nophoto.png" />
                {/if}
                </div>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td width="100" align="right">Name</td>
                <td style="font-weight:bold; color:#a30007;">{$row->name}</td>
                <td width="90" rowspan="4" align="right" valign="top">Remarks</td>
                <td width="250" rowspan="4" valign="top" class="red_text"><strong>{$row->remarks}</strong></td>
              </tr>
               <tr>
                <td align="right">Country </td>
                <td class="red_text"><strong>{$row->country}</strong></td>
              </tr>
              <tr>
                <td align="right">Mobile No</td>
                <td class="red_text"><strong>{$row->phone}</strong></td>
              </tr>             
              <tr>
                <td width="100" align="right">Email</td>
                <td class="red_text"><strong>{$row->email}</strong></td>
              </tr>
              <tr>
                <td width="100" align="right" valign="top">&nbsp;</td>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="4" align="center"><input type="button" value="Edit" class="button_class" onclick="redirectToUrl('{$link_edit_user}{$row->id}')"/> <input type="button" value="Delete" class="button_class" onclick="delItem('{$link_del_user}{$row->id}', '{$row->mss}')"/></td>
              </tr>              
            </table>           
    <div class="clr"></div>
  </div>
  <!-- end of element-box -->
  
  <noscript>
  Warning! JavaScript must be enabled for proper operation of the Administrator backend.
  </noscript>
  <div class="clr"></div>
</div>
<!-- end of content -->