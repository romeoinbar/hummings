<a href='javascript:history.back(-1);'><div class=close>x</div></a><div style='clear:both;'></div>

<div class=warning>confirm delete this tiem?</div>
<form action='{$action}' method=post id="vForm" class="cmxform">
<input type=hidden name='coupon_id' value='{$obj->coupon_id}'>
<div class=forms >
  <div class=label>Coupon Code</div>
  <div class=input>{$obj->coupon_code}</div>



<div>
     <input type='submit' value='DELETE' class="button">
  
  </div>

</form>
