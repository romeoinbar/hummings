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
    <div class="pagetitle icon-48-config"><h2>SMTP Configuration</h2></div>

  <!-- System Messages -->
		
<div id="system-message-container">
{if $msg}
<dl id="system-message">
<dt class="message">Message</dt>
<dd class="message message">
	<ul>
		<li>{$msg}</li>
	</ul>
</dd>
</dl>
{/if}
</div>
<div id="no-submenu"></div>
<div class="actionbar-box">
  <div class="module">
  <h3>Toolbar</h3>
  <div class="actionbar-list" id="actionbar">
    <ul>
    <li id="actionbar-apply">
    <a href="#" onclick="javascript:document.frmAdmin.submit();" class="actionbar">
    <span class="icon-32-apply">
    </span>
    Save
    </a>
    </li>
  </ul>
  <div class="clr"></div>
  </div>		</div>

  <div class="clr"></div>
</div>
		<!-- Beginning of Actual Content -->
		<div id="element-box">
			<p id="skiptargetholder"><a id="skiptarget" class="skip" tabindex="-1"></a></p>
<form name="frmAdmin" action="{$action}" method="post">
		<!-- Beginning of Actual Content -->
		<div id="config-document">
      <div id="page-site" class="tab">
        <div class="noshow">
          <div class="width-40 fltlft">
            <div class="width-100">
              <fieldset class="adminform">
                <legend>SMTP Settings</legend>
                <ul class="adminformlist">
									 <li><label id="jform_MetaDesc-lbl" for="jform_MetaDesc" class="hasTip" title="host">Host</label>					<input type="text" name="config_smtp_host" value="{$config_smtp_host}" style="width:200px" /></li>                
                  <li><label id="jform_MetaDesc-lbl" for="jform_MetaDesc" class="hasTip" title="Port">Port</label>					<input type="text" name="config_smtp_port" value="{$config_smtp_port}" style="width:200px"  /></li>
                                  <li><label id="jform_MetaKeys-lbl" for="jform_MetaKeys" class="hasTip" title="Username">Username</label>					<input type="text" name="config_smtp_username" value="{$config_smtp_username}" style="width:200px"  /></li>
                  <li><label id="jform_MetaDesc-lbl" for="jform_MetaDesc" class="hasTip" title="Password">Password</label>					<input type="text" name="config_smtp_password" value="{$config_smtp_password}" style="width:200px"  /></li>                                                  
                </ul>
              </fieldset>
            </div>
          </div>             
        </div>
      </div>
    </div>
  <input type="hidden" value="{$total}" name="total"  />
  <input type="hidden" value="update" name="task"  />
  <input type="hidden" value="{$config_seo}" name="old_config_seo"  />
</form>
			<div class="clr"></div>
		</div><!-- end of element-box -->
    
		<noscript>
			Warning! JavaScript must be enabled for proper operation of the Administrator backend.		</noscript>

		<div class="clr"></div>

	</div><!-- end of content -->

