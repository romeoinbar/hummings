<form action={$action} method=post id="vForm" class="cmxform"> 
<br/>
<div class=header1>Change Password</div>
<br/>
  <div class=label>Old Password</div>
  <div class=input><input type='text' size=40 maxlength=100 name='old_password'  class="required" ></div>
  
  <div class=label>New Password</div>
  <div class=input><input type='text' size=40 maxlength=100 name='new_password1'  class="required" ></div>
  
  <div class=label>New Password (repeat)</div>
  <div class=input><input type='text' size=40 maxlength=100 name='new_password2'  class="required" ></div>

  <div style='clear:both'></div>    
                               

<div>
   <div style='margin-top:10px; padding-top:10px; border-top:1px solid #ccc;'>
     <input type='submit' value=' Edit ' class="gray_btn">     &nbsp;  &nbsp;
     <input type='button' value=' Back ' class="gray_btn" onClick=window.location-history.back(-1)>
   </div>  
</div>

</form>
