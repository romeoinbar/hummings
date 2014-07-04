<a href='javascript:history.back(-1);'><div class=close>x</div></a><div style='clear:both;'></div>
<form action='{$action}' method=post id="vForm" class="cmxform">
<div class=forms >
  <div class=label>delivery_time_id</div>
  <div class=input><input type='hidden' name='delivery_time_id' value='{$obj->delivery_time_id}' size=2 >{$obj->delivery_time_id}</div>

  <div class=label>Caption</div>
  <div class=input><input type='text' name='caption'  size=30 value='{$obj->caption}'  class="required"></div>
    
  <div class=label>from time</div>
  <div class=input><input type='text' name='from_time' value='{$obj->from_time}' size=8 class="required"> <a rel="tooltip" title="exp: 07:30:00"><div class=tooltip_mark></div></a></div>

  <div class=label>to time</div>
  <div class=input><input type='text' name='to_time' value='{$obj->to_time}' size=8 class="required"> <a rel="tooltip" title="exp: 07:30:0"><div class=tooltip_mark></div></a></div>

 <div class=label>SAP code</div>
  <div class=input>{$sap}</div>
  
  <div class=label>surcharge</div>
  <div class=input><input type='text' name='surcharge' value='{$obj->surcharge}'   size=6 class="required number" ><a rel="tooltip" title="(SGD) exp: 6.00"><div class=tooltip_mark></div></a></div>

  <div class=label>lead time</div>
  <div class=input><input type='text' name='lead_time' value='{$obj->lead_time}'  size=3 class="required number"> hours  <a rel="tooltip" title="Time required to prepare the item for delivery. <br/>Example, if delivery time 14:00PM - 19:00PM requireds 5 hours to prepare, <br/>customer only can choose this delivery time beefore 09:00AM"><div class=tooltip_mark></div></a></div>
  <div class=label>assign to</div>
  <div class=input><input type='text' name='assign_to_days' size=20 class="" value='{$obj->assign_to_days}'> </div>

<div>
     <input type='submit' value='update' class="button">
  
  </div>

</form>
