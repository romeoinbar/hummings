<a href='javascript:history.back(-1);'><div class=close>x</div></a><div style='clear:both;'></div>

<div class=warning>confirm delete this tiem?</div>
<form action='{$action}' method=post id="vForm" class="cmxform">
<div class=forms >
  <div class=label>delivery_time_id</div>
  <div class=input><input type='hidden' name='delivery_time_id' value='{$obj->delivery_time_id}' size=2 >{$obj->delivery_time_id}</div>
  
  <div class=label>from time</div>
  <div class=input><input type='text' name='from_time' value='{$obj->from_time}' size=8 disabled></div>

  <div class=label>to time</div>
  <div class=input><input type='text' name='to_time' value='{$obj->to_time}' size=8 disabled></div>

  <div class=label>surcharge</div>
  <div class=input><input type='text' name='surchage' value='{$obj->surcharge}'   size=6 disabled ></div>

  <div class=label>lead time</div>
  <div class=input><input type='text' name='lead_time' value='{$obj->lead_time}'  size=3 disabled> hours  </div>

<div>
     <input type='submit' value='DELETE' class="button">
  
  </div>

</form>
