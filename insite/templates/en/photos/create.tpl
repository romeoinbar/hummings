<a href='javascript:history.back(-1);'><div class=close> </div></a><div style='clear:both;'></div>
<form action='{$action}' method=post id="vForm" class="cmxform" enctype='multipart/form-data'>
<div class=forms >

  <div class=label>Publish</div>
  <div class=input><input type='text' name='publish'  size=1 maxlength=1 class="required" value='1'>
                   <a rel="tooltip" title="1=publish, 0=unpublish"><div class=tooltip_mark style='margin=left:0px;'></div></a> 
  </div>
  

  <div class=label>Image</div>
  <div class=input><input type='file' name='image' > <a rel="tooltip" title="width=332,  height=337"><div class=tooltip_mark></div></a> </div>

  <div class=label>Link</div>
  <div class=input><input type='text' name='link'  size=50 maxlength=100 >
                   <a rel="tooltip" title="URL link after click on photos. <br/>Please key in full url including 'http://' "><div class=tooltip_mark style='margin=left:0px;'></div></a> 
  <div class=label>Description</div>
  <div class=input><textarea name="description" cols="50" rows="5"></textarea>
  </div>
<div>
     <input type='submit' value='add' class="button">
  
  </div>

</form>
