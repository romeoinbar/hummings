<div style=' color#999;' class=header1> {$form_title}</div>

<form action={$action} method=post id="vForm" class="cmxform">
<br/>
<br/>
  <div class=label>Title</div>
  <div class=input>{$title}</div>
  <div style='clear:both'></div>  

  <div class=label>Surname</div>
  <div class=input><input type='text' size=40 maxlength=40 name='surname'  class="required" value="{$obj->surname}"></div>
  <div style='clear:both'></div>  
  
  <div class=label>Given Name</div>
  <div class=input><input type='text' size=40 maxlength=40 name='name'  class="required" value="{$obj->name}"></div>
  <div style='clear:both'></div>  
 
  <div class=label>Gender</div>
  <div class=input>{$gender}</div>
  <div style='clear:both'></div>  

  <div class=label>Birth Date</div>
  <div class=input><input type='text' size=10 maxlength=10 name='dob'  class="" value="{$obj->dob}"></div>
  <div style='clear:both'></div>  
       
  <div class=label>Company</div>
  <div class=input><input type='text' size=40 maxlength=40 name='company'  value="{$obj->company}"  ></div>
  <div style='clear:both'></div> 
  
  <div class=label>Block / Unit</div>
  <div class=input><input type='text' size=10 maxlength=10 name='block'  value="{$obj->block}"  > <input type='text' size=10 maxlength=10 name='unit'  value="{$obj->unit}"  ></div>
  <div style='clear:both'></div> 
  

  <div class=label>Building </div>
  <div class=input><input type='text' size=40 maxlength=40 name='building'  class=""  value="{$obj->building}"  ></div>
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

  <div class=label>Postal code</div>
  <div class=input><input type='text' size=10 maxlength=10 name='postcode'  value="{$obj->postcode}"   class="required" ></div>
  <div style='clear:both'></div> 

  <div class=label>City</div>
  <div class=input><input type='text' size=20 maxlength=40 name='city'  value="{$obj->city}"  >  <input type='text' size=20 maxlength=40 name='state'  value="{$obj->state}"  ></div>
  <div style='clear:both'></div> 

  
  <div class=label>Country</div>
  <div class=input>{$country}</div>  
  <div style='clear:both'></div> 
  
  <div class=label>Mobile Number</div>
  <div class=input><input type='text' size=3 maxlength=3 name='pre_telephone1'  value="{$obj->pre_telephone1}"  >
                   <input type='text' size=3 maxlength=3 name='mid_telephone1'  value="{$obj->mid_telephone1}"  >
                   <input type='text' size=16 maxlength=16 name='telephone1'  value="{$obj->telephone1}"  >
  </div>
  <div style='clear:both'></div> 

  <div class=label>Work Number</div>
  <div class=input><input type='text' size=3 maxlength=3 name='pre_telephone2'  value="{$obj->pre_telephone2}"  >
                   <input type='text' size=3 maxlength=3 name='mid_telephone2'  value="{$obj->mid_telephone2}"  >
                   <input type='text' size=16 maxlength=16 name='telephone2'  value="{$obj->telephone2}"  >
  </div>
  <div style='clear:both'></div> 
      
  <div class=label>Email</div>
  <div class=input><input type='text' size=50 maxlength=50 name='email'  value="{$obj->email}"  ></div>
  <div style='clear:both'></div> 
    
  <div class=label>Fax</div>
  <div class=input>
   <input type='text' size=3 maxlength=3 name='pre_fax'  value="{$obj->pre_fax}"  >
   <input type='text' size=3 maxlength=3 name='mid_fax'  value="{$obj->mid_fax}"  >
   <input type='text' size=16 maxlength=16 name='fax'  value="{$obj->fax}"  ></div>
  <div style='clear:both'></div> 

<div>
   <div style='margin-top:10px; padding-top:10px; border-top:1px solid #ccc;'>
     <input type='submit' value=' {$button_name} ' class="gray_btn"> &nbsp; &nbsp;
     <input type='button' value=' Back ' class="gray_btn" onClick=window.location-history.back(-1)>
   </div>  
  </div>

</form>
