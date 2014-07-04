<a href='{$list_url_by_category}'><div class=close> </div></a>
<div style='float:left; margin-bottom:10px;'>Assign :  
       <div onClick="show_frame('{$url_assign_category}',1)"  class=assign_button > 
             Categories 
       </div>   
       <div onClick="show_frame('{$url_assign_addon}',2)" class=assign_button > 
             Add on Product 
       </div>          
        <div onClick="show_frame('{$url_assign_image}',3)" class=assign_button > 
             Add on Image 
       </div>   
        <div onClick="show_frame('{$url_related_product}',4)" class=assign_button > 
             Related Product
       </div>      
      
                            
 </div>

<div style='clear:both;'></div>
<div id="frameContainer" style='position:absolute; background:#fff;'></div>



<form action='{$action}' method=post id="vForm" class="cmxform" enctype='multipart/form-data'>
<input type=hidden name=product_id value='{$obj->product_id}'>
<div class=forms >

  <div class=label>Name</div>
  <div class=input><input type='text' name='name'  size=50 maxlength=50 class="required" value='{$obj->name}'> </div>

  <div class=label>Product Type</div>
  <div class=input>{$select_product_type}</div>
  
  <div class=label style='clear:both;'>SKU</div>
  <div class=input><input type='text' name='sku'  size=20 maxlength=20 class="required" value='{$obj->sku}'>
                    <a rel="tooltip" title="For addon products, SKU should start with SP. Example: SPDCS000701 "><div class=tooltip_mark style='margin=left:0px;'></div></a> 
  </div>                  

  <div class=label>Price</div>
  <div class=input><input type='text' name='price'  size=10 maxlength=10 class="required" value='{$obj->price}'> 

                     
  </div>
    <div class=label>Discount</div>
   <div class=input>
      <input type='text' name='discount_value'  size=10 maxlength=10  value='{$obj->discount_value}'> {$select_discount}
  </div>   
  <div class=label>Image</div>
  <div class=input><img src="{$base_url}/{$obj->image}" width=100>
                   <input type='file' name='update_image' > <a rel="tooltip" title="Please resize the image before upload. Ideally width < 800px, height <500px"><div class=tooltip_mark></div></a> </div>

  <div class=label>Description</div>
  <div class=input><textarea name=description cols=90 rows=12>{$obj->description}</textarea><a rel="tooltip" title="<img src='{$base_url}/images/product_description.jpg'>"><div class=tooltip_mark></div></a></div>
<div>

  <div class=label>Short Description</div>
  <div class=input><textarea name=description_short cols=50 rows=6>{$obj->description_short}</textarea><a rel="tooltip" title="<img src='{$base_url}/images/product_description_short.jpg'>"><div class=tooltip_mark></div></a></div>
<div>
<div class=label>Quantity</div>
  <div class=input><input type='text' name='quantity'  size=8 maxlength=8  value='{$obj->quantity}'> </div>
  <div class=label>Height</div>
  <div class=input><input type='text' name='height'  size=8 maxlength=8  value='{$obj->height}'> </div>

  <div class=label>Width</div>
  <div class=input><input type='text' name='width'  size=8 maxlength=8  value='{$obj->width}'> </div>
  
  <div class=label>Length</div>
  <div class=input><input type='text' name='length'  size=8 maxlength=8  value='{$obj->length}'> </div>

  <div class=label>Weight</div>
  <div class=input><input type='text' name='weight'  size=8 maxlength=8  value='{$obj->weight}'> </div>
        
  <div class=label>Publish</div>
  <div class=input>{$select_publish}
                   <a rel="tooltip" title="1=publish, 0=unpublish"><div class=tooltip_mark style='margin=left:0px;'></div></a> 
  </div>
  <div class=label>Availability</div>
  <div class=input>{$select_availability}
                   
  <div class=label>Lead Time</div>
  <div class=input><input type='text' name='lead_time'  size=5 maxlength=5 class="required" value='{$obj->lead_time}'>
                   <a rel="tooltip" title="hours of time required to prepare the product"><div class=tooltip_mark style='margin=left:0px;'></div></a> 
  </div>
  <div class=label>Available Date</div>
  <div class=input><input type='text' name='available_date'  size=10 maxlength=10 class="required" value="{$obj->available_date}">
                   <a rel="tooltip" title="yyyy-mm-dd"><div class=tooltip_mark style='margin=left:0px;'></div></a> 
  </div>
            
  <div class=label>Title(SEF)</div>
  <div class=input><input type='text' name='sef_title'  size=80 maxlength=100  value='{$obj->title}'> </div>

  <div class=label>Keyword(SEF)</div>
  <div class=input><input type='text' name='sef_keyword'  size=80 maxlength=100  value='{$obj->keyword}'> </div>
  
  <div class=label>Description(SEF)</div>
  <div class=input><textarea name=sef_description cols=80>{$obj->description}</textarea> </div>
               
  <div class=label>Project ID</div>
  <div class=input><input type='text' name='project_id'  size=4 maxlength=4  value='{$obj->project_id}'> </div>

  <div class=label>Division</div>
  <div class=input><input type='text' name='division'  size=2 maxlength=2  value='{$obj->division}'> </div>
  
  <div class=label>Order Type</div>
  <div class=input><input type='text' name='order_type'  size=10 maxlength=10  value='{$obj->order_type}'> </div>
  
  <div class=label>Default Occasion</div>
  <div class=input><input type='text' name='occasions'  size=10 maxlength=10  value='{$obj->occasions}'> </div>
  
  <div style='clear:both;'></div>
  
     <input type='submit' value='update' class="button">
  
  </div>

</form>
