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
    <h2>Manager: PREVIEW</h2>
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
          <li id="actionbar-apply"> <a href="#" onclick="javascript:frmAdmin.submit();" class="actionbar"> <span class="icon-32-apply"> </span> Send </a> </li>
          <li id="actionbar-cancel"> <a href="{$link_return}" class="actionbar"> <span class="icon-32-cancel"> </span> Close </a> </li>
        </ul>
        <div class="clr"></div>
      </div>
    </div>
    <div class="clr"></div>
  </div>
  
  <!-- Beginning of Actual Content -->
  <div id="element-box">
    <div class="t">
      <div class="t">
        <div class="t"></div>
      </div>
    </div>
    <div class="m">
      <div id="acy_content" >
        <div id="iframedoc"></div>
        <form name="frmAdmin" action="{$action}" method="post">
	<table width="100%">

		<tr >

			<td width="50%" valign="top" id="testnewsletter">

<fieldset class="adminform">

	<legend>Send</legend>

	<table >

		<tr>

			<td valign="top">

				From Name:			</td>

			<td>{$fromname}
				
			</td>

		</tr>

		<tr>

			<td>

				From Address:			</td>

			<td>

			{$fromemail}		</td>

		</tr>

		<tr>

			<td>Sent to:
			</td>

			<td width="200px" style="text-wrap:normal">{$list_email}</td>

		</tr>

	</table>

</fieldset>
	</td>

		</tr>

	</table>
</form>		
	<fieldset class="adminform" id="textfieldset">

	<legend>Subject</legend>
	<div>{$subject}</div>
	</fieldset>
    
	<fieldset class="adminform" id="textfieldset">

	<legend>Body</legend>
  {if $html}
   <div>{$body}</div>
   {else}
   <div>{$altbody}</div>
   {/if}
	</fieldset>
  


<div class="clr"></div></div>
				<div class="clr"></div>
			</div>
			<div class="b">
				<div class="b">
					<div class="b"></div>
				</div>
			</div>
   		</div>
  <!-- end of element-box -->
  
  <noscript>
  Warning! JavaScript must be enabled for proper operation of the Administrator backend.
  </noscript>
  <div class="clr"></div>
</div>
<!-- end of content -->