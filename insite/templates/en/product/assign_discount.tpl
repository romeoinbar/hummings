<form action='{$action}' method=post id="vForm" class="cmxform" enctype='multipart/form-data'>
<input type=hidden name=product_id value='{$obj->product_id}'>


<div class=forms >
  <div class=label>Original price</div>
  <div class=input>{$original_price}</div>
  
  <div class=label>Discounted price</div>
  <div class=input>
     <input type='text' name='discount_price'  size=10 maxlength=10 class="required number" value='{$obj->discount_price}' id=price> 
     <input type=button onclick=calculate_discount() value="<< calculate">
     <input type='text' class="digit"  id='percent'>% off 
     
  </div>
  <div class=label>From date</div> 
  <div class=input><input type='text' name='from_date'  size=10 maxlength=10 class="required" value='{$obj->from_date}'> yyyy-mm-dd</div>
  <div class=label>To date</div>
  <div class=input><input type='text' name='to_date'  size=10 maxlength=10 class="required" value='{$obj->to_date}'> yyyy-mm-dd </div>
  
     <input type='submit' value='Update' class="button"> &nbsp; <a href='{$action_remove}'>Remove</a>
  
  </div>

</form>
