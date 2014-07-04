<div style="border-bottom:1px solid #ccc; padding:5px; padding-left:15px;"><a href="{$php5WebPath}/mobile-cart/" style="text-decoration:none;">Home</a> - <a href="{$url_my_account}" style="text-decoration:none;">My account</a> - <span style="color:#b84c86;">Change Password</span></div>
<div style="margin:15px;">
<div style='color:#757073; background-color:#fef2fa; height:35px; line-height:35px; padding-left:10px; margin-bottom:10px;'><strong>CHANGE PASSWORD</strong></div>
<form action={$action} method=post id="vForm" class="cmxform"> 
  <div class=label>Old Password</div>
  <div class=input><input type='text' size=40 maxlength=100 name='old_password'  class="required" ></div>
  <div style="clear:both; height:5px;">&nbsp;</div>
  <div class=label>New Password</div>
  <div class=input><input type='text' size=40 maxlength=100 name='new_password1'  class="required" ></div>
  <div style="clear:both; height:5px;">&nbsp;</div>
  <div class=label>New Password (repeat)</div>
  <div class=input><input type='text' size=40 maxlength=100 name='new_password2'  class="required" ></div>
<div style="clear:both; height:5px;">&nbsp;</div>    
                               

<div>
   <div style='margin-top:10px; padding-top:10px;'>
     <input type='submit' value=' Edit ' class="gray_btn">     &nbsp;  &nbsp;
     <input type='button' value=' Back ' class="gray_btn" onClick=window.location-history.back(-1)>
   </div>  
</div>

</form>
<div style="margin-right:15px; margin-top:10px; text-align:right;"><a href="{$url_my_account}" class="back_link">BACK</a></div>
</div>