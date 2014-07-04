<a href='javascript:history.back(-1);'><div class=close>x</div></a><div style='clear:both;'></div>
<form action='{$action}' method=post id="vForm" class="cmxform">
<div class=forms >
  <div class=label>Delivery_postcode_id</div>
  <div class=input><input type='hidden' name='delivery_postcode_id' value='{$obj->delivery_postcode_id}' size=2 >{$obj->delivery_postcode_id}</div>


  <div class=label>Range_From</div>
  <div class=input><input type='text' name='range_from' value='{$obj->range_from}' size=8 class="required"> </div>

  <div class=label>Range To</div>
  <div class=input><input type='text' name='range_to' value='{$obj->range_to}' size=8 class="required"></div>

  <div class=label>Surcharge</div>
  <div class=input><input type='text' name='surcharge' value='{$obj->surcharge}'   size=6 class="required number" ><a rel="tooltip" title="(SGD) exp: 6.00"><div class=tooltip_mark></div></a></div>

  <div class=label>Country</div>
  <div class=input><input type='text' name='country' value='{$obj->country}'  size=3 class="required"> </div>

<div>
     <input type='submit' value='update' class="button">
  
  </div>

</form>
