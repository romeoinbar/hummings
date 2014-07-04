<a href='javascript:history.back(-1);'><div class=close>x</div></a><div style='clear:both;'></div>

<div class=warning>confirm delete this tiem?</div>
<form action='{$action}' method=post id="vForm" class="cmxform">
<input type=hidden name='photos_id' value='{$obj->photos_id}'>
<div class=forms >
  <div class=label>banner id</div>
  <div class=input>{$obj->photos_id}</div>

  <div class=label>Image</div>
  <div class=input><img src='{$base_url}/{$obj->image}'  width=400></div>


<div>
     <input type='submit' value='DELETE' class="button">
  
  </div>

</form>
