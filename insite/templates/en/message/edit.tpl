<a href='javascript:history.back(-1);'><div class=close> </div></a><div style='clear:both;'></div>
<form action='{$action}' method=post id="vForm" class="cmxform" enctype='multipart/form-data'>
<input type=hidden name=message_id value='{$obj->message_id}'>
<div class=forms >

  <div class=label>Parent category</div>
  <div class=input>{$select_message}</div>
  <div class=label  style='float:left;'>Message</div>
  <div class=input style='float:left; border:0px solid red;'>
   <input type=text name=message maxlength=40 size=40 value="{$obj->message}" > <br/>
   <input type=text name=message2 maxlength=40 size=40 value="{$obj->message2}"> <br/> 
   <input type=text name=message3 maxlength=40 size=40 value="{$obj->message3}">  <br/>
   <input type=text name=message4 maxlength=40 size=40 value="{$obj->message4}">  <br/>
   <input type=text name=message5 maxlength=40 size=40 value="{$obj->message5}">  <br/>
   <input type=text name=message6 maxlength=40 size=40 value="{$obj->message6}">   <br/> 
  
   </div>
   <div style='clear:both;'></div> 
     <input type='submit' value='update' class="button">
  
  </div>

</form>
