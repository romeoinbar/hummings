

<div style='padding-left:0px;'>

<div style='padding:15px;'>
<form action='{$action}' method=post id="vForm" class="cmxform" >

<h1>Register</h1>
<br/>
  <div class=label>Title</div>
  <div class=input>{$title}</div>
  

  <div class=label>Name</div>
  <div class=input><input type='text' size=40 maxlength=40 name='name'  class="required" value=""></div>
  <div style='clear:both'></div> 
  
  <div class=label>Email</div>
  <div class=input>
    <div >
          <div style=''>
                   
                        <input type='text' style='float:left;' size=40 maxlength=240 name='email'  class="required email" value="" id='nick' onKeyup=checkEmail() >
                        <div id='dnick' style='float:left; padding:0px 5px 0px 5px; '></div> 
          </div>  
    
  </div>
  <div style='clear:both'></div> 
  
  <div class=label>Password</div>
  <div class=input><input type='password' size=15 maxlength=15 name='password'   class="required"  value="" ></div>
  <div style='clear:both'></div>   

   
  <div class=label>Company</div>
  <div class=input><input type='text' size=40 maxlength=40 name='company'  value=""  ></div>
  <div style='clear:both'></div> 
  
  <div class=label>Block</div>
  <div class=input><input type='text' size=10 maxlength=10 name='block'  value=""  ></div>
  <div style='clear:both'></div> 
  
  <div class=label>Unit</div>
  <div class=input><input type='text' size=10 maxlength=10 name='unit'  value=""  ></div>
  <div style='clear:both'></div> 
  
  <div class=label>Address </div>
  <div class=input><input type='text' size=40 maxlength=40 name='address1'  class="required"  value=""  ></div>
  <div style='clear:both'></div> 
  
  <div class=label>Address (line 2) </div>
  <div class=input><input type='text' size=40 maxlength=40 name='address2'  class="" value="" ></div>
  <div style='clear:both'></div> 
  
  <div class=label>Address (line 3)</div>
  <div class=input><input type='text' size=40 maxlength=40 name='address3'  class="" value="" ></div>
  <div style='clear:both'></div> 
  
  <div class=label>Address (line 4)</div>
  <div class=input><input type='text' size=40 maxlength=40 name='address4'  class="" value="" ></div>
  <div style='clear:both'></div> 

  <div class=label>Postal code</div>
  <div class=input><input type='text' size=10 maxlength=10 name='postcode'  value=""   class="required" ></div>
  <div style='clear:both'></div> 

  <div class=label>City</div>
  <div class=input><input type='text' size=40 maxlength=40 name='city'  value=""  ></div>
  <div style='clear:both'></div> 

  <div class=label>Country</div>
  <div class=input>{$country}</div>  
  <div style='clear:both'></div> 
  
  <div class=label>Telephone1</div>
  <div class=input><input type='text' size=16 maxlength=16 name='telephone1'  value=""  ></div>
  <div style='clear:both'></div> 
    
  <div class=label>Telephone2</div>
  <div class=input><input type='text' size=16 maxlength=16 name='telephone2'  value=""  ></div>
  <div style='clear:both'></div> 
  
  <div class=label>Fax</div>
  <div class=input><input type='text' size=16 maxlength=16 name='fax'  value=""  ></div>
  <div style='clear:both'></div> 
    
  <div class=label>Gender</div>
  <div class=input>{$gender}</div>
  <div style='clear:both'></div> 
    
  <div class=label>Date of Birth</div>
  <div class=input><input type='text' size=10 maxlength=10 name='dob'  value=""  >
                   <a rel="tooltip" title="yyyy-mm-dd"><div class=tooltip_mark style='margin=left:0px;'></div></a>  
  </div>
  <div style='clear:both'></div>    
                               
<input type='checkbox' name='notify_update'  value="1" > Notify me on updates


<div>
   <div style='margin-top:10px; padding-top:10px; border-top:1px solid #ccc;'>
     <input type='submit' value=' Register ' class="button">
   </div>  
  </div>

</form>
</div>
</div>