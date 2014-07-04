<a href='javascript:history.back(-1);'><div class=close> </div></a><div style='clear:both;'></div>
<form action='{$action}' method=post id="vForm" class="cmxform" enctype='multipart/form-data'>
<input type=hidden name=collections_id value='{$obj->collections_id}'>
<div class=forms >

  <div class=label>Name</div>
  <div class=input><input type='text' name='name'  size=50 maxlength=50 class="required" value='{$obj->name}'> </div>

  <div class=label>Publish</div>
  <div class=input><input type='text' name='publish'  size=1 maxlength=1 class="required" value='{$obj->publish}'>
                   <a rel="tooltip" title="1=publish, 0=unpublish"><div class=tooltip_mark style='margin=left:0px;'></div></a> 
  </div>
  
  <div class=label>Parent category</div>
  <div class=input>{$select_category}</div>
  
  <div class=label>Image</div>
  <div class=input><img src="{$base_url}/{$obj->image}" width=100>
                   <input type='file' name='update_image' > <a rel="tooltip" title="width=225,  height=180"><div class=tooltip_mark></div></a> </div>

  <div class=label>Description</div>
  <div class=input><textarea name=description cols=50 rows=9>{$obj->description}</textarea><a rel="tooltip" title="<img src='{$base_url}/images/category_sample.jpg'>"><div class=tooltip_mark></div></a></div>



<div>
     <input type='submit' value='update' class="button">
  
  </div>

</form>
