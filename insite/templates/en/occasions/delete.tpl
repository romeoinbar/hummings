<a href='javascript:history.back(-1);'><div class=close>x</div></a><div style='clear:both;'></div>

<div class=warning>confirm delete this tiem?</div>
<form action='{$action}' method=post id="vForm" class="cmxform">
<div class=forms >
  <div class=label>occasions id</div>
  <div class=input>{$obj->occasions_id}</div>
  
  <div class=label>Name</div>
  <div class=input>{$obj->name}</div>

  <div class=label>Image</div>
  <div class=input><img src='{$base_url}/{$obj->image}' ></div>


<div>
     <input type='submit' value='DELETE' class="button">
  
  </div>

</form>
