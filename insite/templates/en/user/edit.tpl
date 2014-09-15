<a href='javascript:history.back(-1);'><div class=close> </div></a><div style='clear:both;'></div>
<form action='{$action}' method=post id="vForm" class="cmxform" enctype='multipart/form-data'>
<input type='hidden' name='user_id' value="{$obj->user_id}">
<div class=forms >

  <div class=label>Title</div>
  <div class=input><input type='text' name='title'  size=4 maxlength=4  value="{$obj->title}">
                   <a rel="tooltip" title="Mr, Mrs, Ms, Dr, etc"><div class=tooltip_mark style='margin=left:0px;'></div></a> 
  </div>
  

  <div class=label>Name</div>
  <div class=input><input type='text' size=40 maxlength=40 name='name'  class="required" value="{$obj->name}"></div>
  <div style='clear:both'></div> 
  
  <div class=label>Email</div>
  <div class=input><input type='text' size=80 maxlength=240 name='email'  class="required email" value="{$obj->email}" ></div>
  <div style='clear:both'></div> 
  
  <div class=label>New Password</div>
  <div class=input><input type='text' size=15 maxlength=15 minlength=6 name='password2'   class=""  value="{$obj->password2}" ></div>
  <div style='clear:both'></div>   

   
  <div class=label>Company</div>
  <div class=input><input type='text' size=40 maxlength=40 name='company'  value="{$obj->company}"  ></div>
  <div style='clear:both'></div> 
  
  <div class=label>Block</div>
  <div class=input><input type='text' size=10 maxlength=10 name='block'  value="{$obj->block}"  ></div>
  <div style='clear:both'></div> 
  
  <div class=label>Unit</div>
  <div class=input><input type='text' size=10 maxlength=10 name='unit'  value="{$obj->unit}"  ></div>
  <div style='clear:both'></div> 
  
  <div class=label>Address </div>
  <div class=input><input type='text' size=40 maxlength=40 name='address1'  class="required"  value="{$obj->address1}"  ></div>
  <div style='clear:both'></div> 
  
  <div class=label>Address (line 2) </div>
  <div class=input><input type='text' size=40 maxlength=40 name='address2'  class="" value="{$obj->address2}" ></div>
  <div style='clear:both'></div> 
  
  <div class=label>Address (line 3)</div>
  <div class=input><input type='text' size=40 maxlength=40 name='address3'  class="" value="{$obj->address3}" ></div>
  <div style='clear:both'></div> 
  
  <div class=label>Address (line 4)</div>
  <div class=input><input type='text' size=40 maxlength=40 name='address4'  class="" value="{$obj->address4}" ></div>
  <div style='clear:both'></div> 

  <div class=label>Postcode</div>
  <div class=input><input type='text' size=10 maxlength=10 name='postcode'  value="{$obj->postcode}"   class="required" ></div>
  <div style='clear:both'></div> 

  <div class=label>City</div>
  <div class=input><input type='text' size=40 maxlength=40 name='city'  value="{$obj->city}"  ></div>
  <div style='clear:both'></div> 

  <div class=label>Country</div>
  <div class=input>{$country}</div>  
  <div style='clear:both'></div> 
  
  <div class=label>Telephone1</div>
  <div class=input><input type='text' size=16 maxlength=16 name='telephone1'  value="{$obj->telephone1}"  ></div>
  <div style='clear:both'></div> 
    
  <div class=label>Telephone2</div>
  <div class=input><input type='text' size=16 maxlength=16 name='telephone2'  value="{$obj->telephone2}"  ></div>
  <div style='clear:both'></div> 
  
  <div class=label>Fax</div>
  <div class=input><input type='text' size=16 maxlength=16 name='fax'  value="{$obj->fax}"  ></div>
  <div style='clear:both'></div> 
    
  <div class=label>Gender</div>
  <div class=input>{$gender}</div>
  <div style='clear:both'></div> 
    
  <div class=label>Date of Birth</div>
  <div class=input><input type='text' size=10 maxlength=10 name='dob'  value="{$obj->dob}"  >
                   <a rel="tooltip" title="yyyy-mm-dd"><div class=tooltip_mark style='margin=left:0px;'></div></a>  
  </div>
  <div style='clear:both'></div>    
                               
  <div class=label>Notify update</div>
  <div class=input><input type='text' name='notify_update'  size=1 maxlength=1 value="{$obj->notify_update}" >
                   <a rel="tooltip" title="1=yes, 0=no "><div class=tooltip_mark style='margin=left:0px;'></div></a> 
  </div>
  <div class=label>Opted in</div>
  <div class=input><input type='text' name='newsletter_by_phone'  size=1 maxlength=1 value="{$obj->newsletter_by_phone}" >
                   <a rel="tooltip" title="1=yes, 0=no "><div class=tooltip_mark style='margin=left:0px;'></div></a> 
  </div>
<div>
     <input type='submit' value=' update user' class="button">
  
  </div>

</form>
