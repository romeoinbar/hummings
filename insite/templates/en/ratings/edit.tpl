{literal}
<style>
form {
	margin: 0;
	padding: 0;
}
</style>
{/literal} 
<div id="content"> 
  
  <!-- Component Title -->
  <div class="pagetitle icon-48-module">
    <h2>Ratings Manager: Edit</h2>
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
  {literal}
	<style>
		.floatleft,span.floatleft{float:left;}
		.vmicon, .vmiconFE{background:url(/humming/insite/templates/images/vm2-sprite.png) no-repeat top left;}
		.vm2-stars0{background-position:0 -358px;width:64px;height:13px;}
		.vm2-stars1{background-position:0 -421px;width:64px;height:13px;}
		.vm2-stars2{background-position:0 -484px;width:64px;height:13px;}
		.vm2-stars3{background-position:0 -547px;width:64px;height:13px;}
		.vm2-stars4{background-position:0 -610px;width:64px;height:13px;}
		.vm2-stars5{background-position:0 -673px;width:64px;height:13px;}
	</style>
  {/literal}
  <!-- Beginning of Actual Content -->
  <div id="element-box">
    <p id="skiptargetholder"><a id="skiptarget" class="skip" tabindex="-1"></a></p>
    
    <!-- The main component -->
    <div class="module-edit">
      <form name="frmAdmin" action="{$action}" method="post">
        <div class="col main-section">
          <fieldset class="adminform">
            <legend>Details</legend>
            <table class="admintable" summary="Edit Shopper Review">
              <tr>
                <td width="24%" align="left" valign="top"> Rating </td>
                <td valign="top"><fieldset class="radio">
                    
                    <!-- Rating stars -->
                    {foreach from=$votes key=key item=item}
                    <input type="radio" name="votes" id="vote{$key}" value="{$key}" class="inputbox" {if $vote == $key}checked="checked"{/if} />
                    <label for="vote{$key}"><span class="floatleft vmiconFE vm2-stars{$key}" title="{$item}"></span></label>
                    {/foreach}
                  </fieldset></td>
              </tr>
              
              <!-- Review comment -->
              
              <tr>
                <td width="24%" align="left" valign="top"> Shopper Review </td>
                <td width="76%" align="left"><textarea rows="20" cols="60" name="comment">{$comment}</textarea></td>
              </tr>
              <tr>
                <td align="left" valign="top">Publish</td>
                <td align="left"><select name="published" id="published">
                  <option value="1" {if $published==1} selected="selected"{/if}>Yes</option>
                  <option value="0" {if $published==0} selected="selected"{/if}>No</option>
                </select></td>
              </tr>
            </table>
            <div class="clr"></div>
          </fieldset>
        </div>
        <div>
        	<input type="hidden" name="rating_review_id" value="{$rating_review_id}" />
          <input type="hidden" name="rating_vote_id" value="{$rating_vote_id}" />
          <input type="hidden" name="product_id" value="{$product_id}" />
          <input type="hidden" name="task" value="" />
        </div>
      </form>
    </div>
    <div class="clr"></div>
  </div>
  <!-- end of element-box -->
  
  <noscript>
  Warning! JavaScript must be enabled for proper operation of the Administrator backend.
  </noscript>
  <div class="clr"></div>
</div>
