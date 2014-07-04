{literal}
<script>
function updateAcyEditor(v)
{
	if(v==1) {
		window.document.getElementById("textfieldset0").style.display = 'none';
		window.document.getElementById("textfieldset1").style.display = 'block';
	} else {
		window.document.getElementById("textfieldset1").style.display = 'none';
		window.document.getElementById("textfieldset0").style.display = 'block';
	}
}
</script>
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
    <h2>Manager: ADD NEWSLETTER</h2>
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
          <li id="actionbar-apply"> <a href="#" onclick="javascript:frmAdmin.submit();" class="actionbar"> <span class="icon-32-apply"> </span> Save </a> </li>
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
            <tr>
              <td valign="top"><table class="adminform" width="100%">
                  <tr>
                    <td class="key" id="subjectkey"><label for="subject"> Subject </label></td>
                    <td id="subjectinput"><input type="text" name="subject" id="subject" class="inputbox" style="width:80%" value="" /></td>
                    <td class="key" id="publishedkey"><label for="published"> Published </label></td>
                    <td id="publishedinput"><input type="radio" name="publish" id="published0" value="0" {if $published == 0} checked="checked" {/if}  />
                      <label for="published0">No</label>
                      <input type="radio" name="publish" id="published1" value="1" {if $published == 1} checked="checked" {/if} />
                      <label for="published1">Yes</label></td>
                  </tr>
                  <tr>
                    <td class="key" id="createdkey"> Created Date </td>
                    <td id="createdinput"> {$created} </td>
                    <td class="key" id="sendhtmlkey"> Send HTML Version </td>
                    <td id="sendhtmlinput"><input type="radio" name="htmls" id="html0" value="0" {if $html == 0} checked="checked" {/if} onclick="updateAcyEditor(0)" />
                      <label for="html0">No</label>
                      <input type="radio" name="htmls" id="html1" value="1" {if $html == 1} checked="checked" {/if} onclick="updateAcyEditor(1)" />
                      <label for="html1">Yes</label></td>
                  </tr>
                </table>
                <fieldset class="adminform" width="100%" id="textfieldset0" {if $html == 1} style="display:none" {/if}>
                  <legend>Text Version</legend>
                  <textarea style="width:98%" rows="20" name="altbody" id="altbody" >{$altbody}</textarea>
                </fieldset>
                <fieldset class="adminform" width="100%" id="textfieldset1" {if $html == 0} style="display:none" {/if}>
                  <legend>HTML Version</legend>
                  {fckeditor name='body' id='body' value="$body" height='400'}
                   <div style="color:#666; font-style:italic;">Link to track: {$php5WebPath}/track.php?type=1&redirect=[path] </div>
                </fieldset>  
               
              </td>
              <td width="400" valign="top"><div id="newsletterparams">
                    <dt id="mail_sender"><span>Sender Information</span></dt>
                    <dd> <br style="font-size:1px"/>
                      <table width="100%" class="paramlist admintable" id="senderinformationfieldset">
                        <tr>
                          <td class="paramlist_key"><label for="fromname">From Name</label></td>
                          <td class="paramlist_value"><input class="inputbox" id="fromname" type="text" name="fromname" size="40" value="{$fromname}" /></td>
                        </tr>
                        <tr>
                          <td class="paramlist_key"><label for="fromemail">From Address</label></td>
                          <td class="paramlist_value"><input class="inputbox" id="fromemail" type="text" name="fromemail" size="40" value="{$fromemail}" /></td>
                        </tr>
                      </table>
                    </dd>
                </div>
                {if $groups}
                <table class="admintable" width="100%">
                  <tr>
                    <td colspan="2">
                    <fieldset class="adminform" width="100%" id="textfieldset">
                      <legend>List User Groups</legend>
                      <table width="100%">
                        {foreach from=$groups item=arr_groups}
                        <tr>
                          {foreach from=$arr_groups item=group}
                          <td>{if $group.id}<input type="checkbox" value="{$group.id}" name="chkGroup[]" id="chkGroup{$group.idx}" {if $group.checked}checked{/if} /> {$group.name}{/if}</td>
                          {/foreach}	
                        </tr>
                        {/foreach}
                      </table>
                    </fieldset></td>
                  </tr>
                  <input type="hidden" value="{$grouptotal}" name="grouptotal" />
                </table>
                {/if}
                </td>
            </tr>
          </table>
          <div class="clr"></div>
          <input type="hidden" id="tempid" name="tempid" value="0" />
          <input type="hidden" id="html" name="html" value="0" />
          <input type="hidden" name="type" value="news" />
        </form>
      </div>
      <!--  AcyMailing Component powered by http://www.acyba.com --> 
      
      <!-- version Starter : 3.7.0 -->
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