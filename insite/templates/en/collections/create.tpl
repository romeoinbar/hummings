<a href='javascript:history.back(-1);'><div class=close> </div></a><div style='clear:both;'></div>
<form action='{$action}' method=post id="vForm" class="cmxform" enctype='multipart/form-data'>
<div class=forms >

  <div class=label>Name</div>
  <div class=input><input type='text' name='name'  size=50 maxlength=50 class="required"> </div>

  <div class=label>Publish</div>
  <div class=input><input type='text' name='publish'  size=1 maxlength=1 class="required" value='1'>
                   <a rel="tooltip" title="1=publish, 0=unpublish"><div class=tooltip_mark style='margin=left:0px;'></div></a> 
  </div>
  
  <div class=label>Parent category</div>
  <div class=input>{$select_category}</div>
  
  <div class=label>Image</div>
  <div class=input><input type='file' name='image' > <a rel="tooltip" title="width=225,  height=180"><div class=tooltip_mark></div></a> </div>

  <div class=label>Description</div>
  <div class=input><textarea name=description cols=50 rows=9></textarea><a rel="tooltip" title="<img src='{$base_url}/images/category_sample.jpg'>"><div class=tooltip_mark></div></a></div>



<div>
     <input type='submit' value='add' class="button">
  
  </div>

</form>
