<a href='javascript:history.back(-1);'><div class=close> </div></a><div style='clear:both;'></div>
<form action='{$action}' method=post id="vForm" class="cmxform" enctype='multipart/form-data'>
<div class=forms >

  <div class=label>Discount</div>
  <div class=input><input name=value type='text' size=10 class=required>{$s_discount_type}
                   <a rel="tooltip" title="1=publish, 0=unpublish"><div class=tooltip_mark style='margin=left:0px;'></div></a> 
  </div>

  <div class=label>Expiry date</div>
  <div class=input><input type='text' name='expiry_date'  value='0000-00-00' size=10><a rel="tooltip" title="yyyy-mm-dd, 0000-00-00 = no expiry date"><div class=tooltip_mark></div></a> </div>

<div>
     <input type='submit' value='add' class="button">
  
  </div>

</form>
