{literal}
  <style>
  form {
    margin: 0;
    padding: 0;
  }
  </style>
  {/literal}

<!-- Content Area -->

<div id="content"> 
  
  <!-- Component Title -->
  <div class="pagetitle icon-48-module">
    <h2>Manager: GROUP</h2>
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
  
  <!-- Toolbar Icon Buttons -->
  <div class="actionbar-box">
    <div class="module">
      <h3>Toolbar</h3>
      <div class="actionbar-list" id="actionbar">
        <ul>
          <li  id="actionbar-cancel"> <a href="{$link_return}" class="actionbar"> <span class="icon-32-cancel"> </span> Close </a> </li>
        </ul>
        <div class="clr"></div>
      </div>
    </div>
    <div class="clr"></div>
  </div>
  
  <!-- Beginning of Actual Content -->
  <div id="element-box">
    <p id="skiptargetholder"><a id="skiptarget" class="skip" tabindex="-1"></a></p>
    <form name="frmAdmin" action="{$action}" method="post">
      {literal}
        <style>
          ul.uluser {
          }
          
          ul.uluser li {
            float:left;
            width:30%;
          }
        </style>
      {/literal}    
    <table class="admintable" width="100%">
      <tr>
        <td colspan="2">
        <fieldset class="adminform" width="100%" id="textfieldset">
          <legend>Only Registered Users</legend>
          <table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td>    
            {foreach from=$users item=arr_users}
            <div>
                <ul class="uluser">
                {foreach from=$arr_users item=user}
                <li>{$user.email}</li>
                {/foreach}	
              </ul>
            </div>
            <div class="clr"></div>
            {/foreach}
            </td>
          </tr>
          </table>
        </fieldset></td>
      </tr>
    </table>
    </form>
    <div class="clr"></div>
  </div>
  <!-- end of element-box -->
  
  <noscript>
  Warning! JavaScript must be enabled for proper operation of the Administrator backend.
  </noscript>
  <div class="clr"></div>
</div>
<!-- end of content -->