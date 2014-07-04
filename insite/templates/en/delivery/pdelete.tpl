<a href='javascript:history.back(-1);'><div class=close>x</div></a><div style='clear:both;'></div>

<div class=warning>confirm delete this tiem?</div>
<form action='{$action}' method=post id="vForm" class="cmxform">
<div class=forms >
  <div class=label>delivery_postocde_id</div>
  <div class=input><input type='hidden' name='delivery_postcode_id' value='{$obj->delivery_postcode_id}' size=2 >{$obj->delivery_postcode_id}</div>
  
  <div class=label>Range From</div>
  <div class=input><input type='text' name='range_from' value='{$obj->range_from}' size=8 disabled></div>

  <div class=label>Range To</div>
  <div class=input><input type='text' name='range_to' value='{$obj->range_to}' size=8 disabled></div>

  <div class=label>Surcharge</div>
  <div class=input><input type='text' name='surchage' value='{$obj->surcharge}'   size=6 disabled ></div>

  <div class=label>Country</div>
  <div class=input><input type='text' name='Country' value='{$obj->country}'  size=3 disabled>  </div>

<div>
     <input type='submit' value='DELETE' class="button">
  
  </div>

</form>
