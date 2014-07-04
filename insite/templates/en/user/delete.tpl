<a href='javascript:history.back(-1);'><div class=close>x</div></a><div style='clear:both;'></div>

<div class=warning>confirm delete this tiem?</div>
<form action='{$action}' method=post id="vForm" class="cmxform">
<input type=hidden name='user_id' value='{$obj->user_id}'>
<div class=forms >
  <div class=label>user id</div>
  <div class=input>{$obj->user_id}</div>

  <div class=label>Name</div>
  <div class=input>{$obj->name}</div>


<div>
     <input type='submit' value='DELETE' class="button">
  
  </div>

</form>
