  {if $users}
    {literal}
      <style>
        ul.uluser {
        }
        
        ul.uluser li {
          float:left;
          width:30%;
					line-height: 2.5em;
					
        }
      </style>
    {/literal}
    <table cellpadding="0" cellspacing="0" width="100%">
    <tr>
      <td>    
      {foreach from=$users item=arr_users}
      <div>
          <ul class="uluser">
          {foreach from=$arr_users item=user}
          <li>{if $user.id}<label {if $user.status}style="font-weight:normal;text-decoration:line-through"{else}style="font-weight:normal"{/if}><input type="checkbox" value="{$user.id}" name="chkUser[]" id="chkUser{$user.idx}" onclick="javascript:addUsers(this);" {if $user.checked}checked{/if} /> {$user.name} - {$user.email}{/if}</label></li>
          {/foreach}	
        </ul>
      </div>
      <div class="clr"></div>
      {/foreach}
      </td>
      </tr>
      <tr>
        <td>
          <div style="text-align:center;border:0px solid #000">{$paging}</div>
          </td>
      </tr>
    </table>
    
    <input type="hidden" value="{$usertotal}" name="usertotal" />  
  {/if} 