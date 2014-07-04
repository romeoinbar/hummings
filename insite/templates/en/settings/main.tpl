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
    <div class="pagetitle icon-48-config"><h2>Global Configuration</h2></div>

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
                <legend>Site Settings</legend>
                <ul class="adminformlist">
                  <li><label id="jform_offline-lbl" for="jform_offline" class="hasTip" title="Send email?">Search Engine Friendly URLs</label>					<fieldset id="jform_offline" class="radio"><input type="radio" value="1" name="config_seo"  {if $config_seo} checked="checked" {/if}  /><label for="jform_offline0">Yes</label><input type="radio" value="0" name="config_seo" {if !$config_seo} checked="checked" {/if}  /><label for="jform_offline1">No</label></fieldset></li>
                </ul>
                  <li><label id="jform_sitename-lbl" for="jform_sitename" class="hasTip required" title="Admin email">Admin email<span class="star">&#160;*</span></label>					<input type="text" value="{$config_admin_email}" name="config_admin_email" size="40" class="required"  /></li>
                  <li><label id="jform_sitename-lbl" for="jform_sitename" class="hasTip required" title="Sender email">Sender email<span class="star">&#160;*</span></label>					<input type="text" value="{$config_email}" name="config_email" size="40" class="required" /></li>
                  <li><label id="jform_sitename-lbl" for="jform_sitename" class="hasTip required" title="">Change point to SGD<span class="star">&#160;*</span></label>					<input type="text" value="{$config_point_to_SGD}" name="config_point_to_SGD" size="40" class="required"  /></li>
                  <li><label id="jform_offline-lbl" for="jform_offline" class="hasTip" title="Send email?">Send email?</label>					<fieldset id="jform_offline" class="radio"><input type="radio" value="1" name="config_send_mail" {if $config_send_mail} checked="checked" {/if} /><label for="jform_offline0">Yes</label><input type="radio" value="0" name="config_send_mail" {if !$config_send_mail} checked="checked" {/if}  /><label for="jform_offline1">No</label></fieldset></li>
                  
                  <li><label id="jform_offline-lbl" for="jform_offline" class="hasTip" title="Send email?">Send SMS?</label>					<fieldset id="jform_offline" class="radio"><input type="radio" value="1" name="config_sms"  {if $config_sms} checked="checked" {/if}  /><label for="jform_offline0">Yes</label><input type="radio" value="0" name="config_sms" {if !$config_sms} checked="checked" {/if}  /><label for="jform_offline1">No</label></fieldset></li>
                </ul>
              </fieldset>
               <fieldset class="adminform">
                <legend>Contact Us</legend>
                <ul class="adminformlist">
				 <li><label id="jform_MetaDesc-lbl" for="jform_MetaDesc" class="hasTip" title="Contact us:: Display in the bottom of site">Contact Us</label>
                 {fckeditor name='config_contactus' id='config_contactus' value=$config_contactus height='250' toolbar='Basic'}
                 </li>                
                                                                     
                </ul>
              </fieldset>
            </div>
          </div>
          <div class="width-60 fltrt">
            <div class="width-100">
              <fieldset class="adminform">
                <legend>Metadata Settings</legend>
                <ul class="adminformlist">
									 <li><label id="jform_MetaDesc-lbl" for="jform_MetaDesc" class="hasTip" title="Site Meta Description::Enter a description of the overall Web site that is to be used by search engines. Generally, a maximum of 20 words is optimal.">Site name</label>					<textarea name="config_sitename" id="config_sitename" cols="60" rows="1">{$config_sitename}</textarea></li>                
                  <li><label id="jform_MetaDesc-lbl" for="jform_MetaDesc" class="hasTip" title="Site Meta Description::Enter a description of the overall Web site that is to be used by search engines. Generally, a maximum of 20 words is optimal.">Description Default</label>					<textarea name="config_meta_desc_default" id="config_meta_desc_default" cols="60" rows="3">{$config_meta_desc_default}</textarea></li>
                                  <li><label id="jform_MetaKeys-lbl" for="jform_MetaKeys" class="hasTip" title="Site Meta Keywords::Enter the keywords and phrases that best describe your Web site. Separate keywords and phrases with a comma.">Keywords Default</label>					<textarea name="config_meta_keyword_default" id="config_meta_keyword_default" cols="60" rows="3">{$config_meta_keyword_default}</textarea></li>
                  <li><label id="jform_MetaDesc-lbl" for="jform_MetaDesc" class="hasTip" title="Site Meta Description::Enter a description of the overall Web site that is to be used by search engines. Generally, a maximum of 20 words is optimal.">Description Cart</label>					<textarea name="config_meta_desc_cart" id="config_meta_desc_cart" cols="60" rows="3">{$config_meta_desc_cart}</textarea></li>
                                  <li><label id="jform_MetaKeys-lbl" for="jform_MetaKeys" class="hasTip" title="Site Meta Keywords::Enter the keywords and phrases that best describe your Web site. Separate keywords and phrases with a comma.">Keywords Cart</label>					<textarea name="config_meta_keyword_cart" id="config_meta_keyword_cart" cols="60" rows="3">{$config_meta_keyword_cart}</textarea></li>                                                   
                </ul>
              </fieldset>
            </div>
          </div>



          <div class="width-60 fltrt">
            <div class="width-100">
              <fieldset class="adminform">
                <legend>Cart Settings</legend>
                <ul class="adminformlist">
					 <li><label id="jform_MetaDesc-lbl" for="jform_MetaDesc" class="hasTip" title="%">GST</label>
                          <input type=text name="config_gst" id="config_gst"  value="{$config_gst}" size=3> %
                     </li>                
                                        
					 <li><label id="jform_MetaDesc-lbl" for="jform_MetaDesc" class="hasTip" title="%">Default Shipping Fee</label>
                          <input type=text name="config_delivery_charge" id="config_delivery_charge"   value="{$config_delivery_charge}" >
                     </li>                    </ul>
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

