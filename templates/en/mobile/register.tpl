<div style="margin-left:-10px;"><img src="{$php5WebPath}/images/mobile_register_banner.jpg" width="304px;" /></div>
<div style="color:#333; font-size:12px;">
<div id="reset">
<div style="color:#666; background-color:#ebebeb; line-height:22px; padding-left:5px; font-size:11px;"><strong>RESET PASSWORD</strong></div>
<form action='{$url_reset_password}' method=post id="vForm3" class="cmxform"  >
<div style="margin-bottom:5px; font-size:12px; margin-top:5px;"><strong>Email address<span style="color:#F00;">*</span></strong></div>
<div style="margin-bottom:5px;"><input type=text name=email class="required email" ></div>
<div><input type="image" src="{$php5WebPath}/images/mobile_btn_reset.jpg" style="border:none;" /></div>
</form>
</div>
<div id="signin_block">
{if $guest_checkout==1}
<div style="margin-top:10px; margin-bottom:10px; margin-right:15px; color:#666;">Continue with <a href="{$url_guest}" style="color:#c20873;"><strong>Guest Checkout</strong></a></div>
{/if}
<div style="color:#666; background-color:#ebebeb; line-height:22px; padding-left:5px; font-size:11px;"><strong>RETURNING CUSTOMERS</strong></div>
<div style="font-style:italic; font-size:11px; margin-top:5px; margin-bottom:5px;">*If you have an account, please log in to make use of your address book.</div>
<form action='{$url_login}' method=post id="vForm2" class="cmxform"  >
<div style="margin-bottom:5px; font-size:12px;"><strong>Email address<span style="color:#F00;">*</span></strong></div>
<div style="margin-bottom:5px;"><input type=text name=email class="required email"></div>
<div style="margin-bottom:5px; font-size:12px;"><strong>Password<span style="color:#F00;">*</span></strong></div>
<div style="margin-bottom:5px;"><input type=password  name=password class="required"></div>
<div style="float:left; width:100px;"><input type='image' src='{$php5WebPath}/images/mobile_btn_signin.jpg' style="border:none;"></div>
<div style="float:right; width:110px; font-size:11px; font-style:italic;"><a href="#forget" onClick="showhide('reset');showhide('signin_block');">Forgot password</a></div>
</form>
<div style="clear:both;">&nbsp;</div>
<div style="color:#666; background-color:#ebebeb; line-height:22px; padding-left:5px; font-size:11px; margin-bottom:5px;"><strong>NEW CUSTOMERS</strong></div>
<form action='{$action}' method=post id="signupForm" class="cmxform" onSubmit="return checkform();">
<div style="margin-bottom:5px; font-size:12px;"><strong>Email address<span style="color:#F00;">*</span></strong></div>

<div style="margin-bottom:5px;"> <input type='text' maxlength=240 name='email'  class="required email" value="" id='nick' onKeyup=checkEmail() ></div>
<div style="margin-bottom:5px; font-size:12px;"><strong>Password<span style="color:#F00;">*</span></strong></div>
<div style="margin-bottom:5px;"><input type='password' maxlength=15 name='password' id='password'    class="required"  value="" ></div>
<div style="margin-bottom:5px; font-size:12px;"><strong>Confirm Password<span style="color:#F00;">*</span></strong></div>
<div style="margin-bottom:5px;"><input type='password' maxlength=15 name='password2' id='password2'     class="required"  value="" ></div>
<div style="margin-bottom:5px;"><input type='image' src='{$php5WebPath}/images/mobile_btn_createaccount.jpg'  style="border:none;"></div>
</form>
</div>
</div>
{literal}
<script language="javascript">
$(document).ready(function() {
	showhide('reset');
});
</script>
{/literal}