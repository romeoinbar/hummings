<a href='javascript:history.back(-1);'><div class=close> </div></a><div style='clear:both;'></div>
<form action='{$action}' method=post id="vForm" class="cmxform" enctype='multipart/form-data'>
<input type=hidden name=photos_id value='{$obj->photos_id}'>
<div class=forms >

  <div class=label>Publish</div>
  <div class=input>
     <input type='text' name='publish'  size=1 maxlength=1 class="required" value='{$obj->publish}'>
     <a rel="tooltip" title="1=publish, 0=unpublish"><div class=tooltip_mark style='margin=left:0px;'></div></a> 
  </div>
  
  
  <div class=label>Image</div>
  <div class=input>
        <img src="{$base_url}/{$obj->image}" width=100>
        <input type='file' name='update_image' > <a rel="tooltip" title="width=332,  height=337"><div class=tooltip_mark></div></a> 
  </div>
  

  <div class=label>Link</div>
  <div class=input><input type='text' name='link'  size=50 maxlength=100 value='{$obj->link}' >
                   <a rel="tooltip" title="URL link after click on photos. <br/>Please key in full url including 'http://' "><div class=tooltip_mark style='margin=left:0px;'></div></a> 
  </div>
  <div class=label>Date</div>
  <div class=input>{$obj->dates}<div class=tooltip_mark style='margin=left:0px;'></div></a> 
  </div>
  <div class=label>Description</div>
  <div class=input><textarea name="description" cols="50" rows="5">{$obj->description}</textarea>
  </div>

<div>
     <input type='submit' value='update' class="button">
  
  </div>

</form>
