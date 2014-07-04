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
    <h2>Manager: EDIT RSS CATEGORY</h2>
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
          <li id="actionbar-apply"> <a href="#" onClick="javascript:frmAdmin.submit();" class="actionbar"> <span class="icon-32-apply"> </span> Save </a> </li>
          <li id="actionbar-cancel"> <a href="{$link_return}" class="actionbar"> <span class="icon-32-cancel"> </span> Close </a> </li>
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
      <table border="0" cellpadding="0" cellspacing="5" width="100%">
      <tr>
        <td width="30%" ><label id=​"jform_showtitle-lbl" for=​"jform_showtitle" class=​"hasTip" title>​Title:</label></td>
        <td ><input type="text" name="title" maxlength="100" value="{$title|escape}" size =30></td>
      </tr>
      <tr>
        <td width="30%" ><label id=​"jform_showtitle-lbl" for=​"jform_showtitle" class=​"hasTip" title>Category:</label></td>
        <td ><select name="category_id" id="category_id" size=​"1" class aria-invalid=​"false">
           {html_options options=$categories selected=$category_id}
               </select></td>
      </tr>
      <tr>
        <td width="30%" ><label id=​"jform_showtitle-lbl" for=​"jform_showtitle" class=​"hasTip" title>Description:</label></td>
        <td ><textarea name="description" id="description" cols="60" rows="3">{$description}</textarea></td>
      </tr>
      <tr>
        <td width="30%" ><label id=​"jform_showtitle-lbl" for=​"jform_showtitle" class=​"hasTip" title>Link:</label></td>
        <td >http://<input type="text" name="link" maxlength="100" value="{$link|escape}" size="100"></td>
      </tr>
      <tr>
        <td width="30%" ><label id=​"jform_showtitle-lbl" for=​"jform_showtitle" class=​"hasTip" title>Date:</label></td>
        <td ><input type="text" name="date" maxlength="100" value="{$date|escape}" size="30"></td>
      </tr>
        <tr>
          <td>Published:</td>
          <td ><input type="radio" id="publish1" name="publish" value="1" {if $status}checked="checked"{/if} /><label for="publish1">Yes</label><input type="radio" id="publish0" name="publish" value="0" {if !$status}checked="checked"{/if} /><label for="publish0">Hide</label></td>
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
