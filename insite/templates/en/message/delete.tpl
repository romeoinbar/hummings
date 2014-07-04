<a href='javascript:history.back(-1);'><div class=close>x</div></a><div style='clear:both;'></div>

<div class=warning>confirm delete this tiem?</div>
<form action='{$action}' method=post id="vForm" class="cmxform">
<div class=forms >
  <div class=label>Message ID</div>
  <div class=input><input type='hidden' name='message_id' value='{$obj->message_id}' size=2 >{$obj->message_id}</div>
  
  <div class=label>Message</div>
  <div class=input>{$obj->message}</div>


<div>
     <input type='submit' value='DELETE' class="button">
  
  </div>

</form>
