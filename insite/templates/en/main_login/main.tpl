<div id="element-box" class="login">
  <div class="pagetitle">
    <h2>Hummings! Administration Login</h2>
  </div>
  
  <!-- System Messages -->
  
  <div id="system-message-container">
  {if $msgAlert}
    <dl id="system-message">
      <dt class="error">Error</dt>
      <dd class="error message">
        <ul>
          <li>Username and password do not match or you do not have an account yet.</li>
        </ul>
      </dd>
    </dl>
  {/if}  
  </div>
  <div class="login-inst">
    <p>Use a valid username and password to gain access to the administrator backend.</p>
    <div id="lock"></div>
    <a href="#">Go to site home page.</a> </div>
  
  <!-- Login Component -->
  <div class="login-box">
    <form action="{$action}" method="post" id="form-login">
      <fieldset class="loginform">
        <label id="mod-login-username-lbl" for="mod-login-username">User Name</label>
        <input name="email" id="mod-login-username" type="text" class="inputbox" size="15" />
        <label id="mod-login-password-lbl" for="mod-login-password">Password</label>
        <input name="pwd" id="mod-login-password" type="password" class="inputbox" size="15" />
        
        <!--<label id="mod-login-language-lbl" for="lang">Language</label>
				<select id="lang" name="lang"  class="inputbox">
	<option value="" selected="selected">Default</option>
	<option value="en-GB">English (United Kingdom)</option>
</select>-->
        
        <div class="button-holder">
          <div class="button1">
            <div class="next"> <a href="#" onClick="document.getElementById('form-login').submit();"> Log in</a> </div>
          </div>
        </div>
        <div class="clr"></div>
        <input type="submit" class="hidebtn" value="Log in" />
        <input type="hidden" name="task" value="login" />
      </fieldset>
    </form>
  </div>
  <div class="clr"></div>
</div>
