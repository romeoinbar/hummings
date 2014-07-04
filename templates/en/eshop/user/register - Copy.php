  {$message}
<table >
<tr>
<td width=500>
<div style='padding:0px 25px;'>

<form action='{$action}' method=post id="vForm" class="cmxform" >

<h1>Register</h1>
<br/>
  <div class=label>Title</div>
  <div class=input>{$title}</div>


  <div class=label>Surname*</div>
  <div class=input><input type='text' size=40 maxlength=40 name='surname'  class="" value=""></div>
  <div style='clear:both'></div> 
    

  <div class=label>Given Name*</div>
  <div class=input><input type='text' size=40 maxlength=40 name='name'  class="required" value=""></div>
  <div style='clear:both'></div> 
  
  <div class=label>Email*</div>
  <div class=input>
    <div >
          <div style=''>
                   
                        <input type='text' style='float:left;' size=40 maxlength=240 name='email'  class="required email" value="" id='nick' onKeyup=checkEmail() >
                        <div id='dnick' style='float:left; padding:0px 5px 0px 5px; '></div> 
          </div>  
    
  </div>
  <div style='clear:both'></div> 
  
  <div class=label>Password*</div>
  <div class=input><input type='password' size=15 maxlength=15 name='password'   class="required"  value="" ></div>
  <div style='clear:both'></div>   

   
  <div class=label>Company</div>
  <div class=input><input type='text' size=40 maxlength=40 name='company'  value=""  ></div>
  <div style='clear:both'></div> 

  
  <div class=label>Block / Unit</div>
  <div class=input><input type='text' size=10 maxlength=10 name='block'  value=""  >  <input type='text' size=10 maxlength=10 name='unit'  value=""  ></div>
  <div style='clear:both'></div> 
  

  <div class=label>Building </div>
  <div class=input><input type='text' size=40 maxlength=40 name='building'  class=""  value="{$user->building}"  ></div>
  <div style='clear:both'></div> 
    
  <div class=label>Address* </div>
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

  <div class=label>Postcode*</div>
  <div class=input><input type='text' size=10 maxlength=10 name='postcode'  value=""   class="required" ></div>
  <div style='clear:both'></div> 

  <div class=label>City / State</div>
  <div class=input><input type='text' size=20 maxlength=40 name='city'  value=""  > <input type='text' size=20 maxlength=40 name='state'  value=""  ></div>
  <div style='clear:both'></div> 

  <div class=label>Country</div>
  <div class=input>{$country}</div>  
  <div style='clear:both'></div> 
  
  <div class=label>Mobile Number*</div>
  <div class=input>
   <input type='text' size=3 maxlength=3 name='pre_telephone1'  value=""  > 
   <input type='text' size=3 maxlength=3 name='mid_telephone1'  value=""  >  
   <input type='text' size=16 maxlength=16 name='telephone1'  value=""  >
  
  </div>
  <div style='clear:both'></div> 
    
  <div class=label>Work Number:</div>
 <div class=input> 
   <input type='text' size=3 maxlength=3 name='pre_telephone2'  value=""  > 
   <input type='text' size=3 maxlength=3 name='mid_telephone2'  value=""  >   
  <input type='text' size=16 maxlength=16 name='telephone2'  value=""  ></div>
  <div style='clear:both'></div> 
  
  <div class=label>Fax</div>
  <div class=input>
   <input type='text' size=3 maxlength=3 name='pre_fax'  value=""  > 
   <input type='text' size=3 maxlength=3 name='mid_fax'  value=""  >   
   <input type='text' size=16 maxlength=16 name='fax'  value=""  ></div>
  <div style='clear:both'></div> 
    
  <div class=label>Gender</div>
  <div class=input>{$gender}</div>
  <div style='clear:both'></div> 
    
  <div class=label>Date of Birth</div>
  <div class=input><input type='text' size=10 maxlength=10 name='dob'  value="" class="required" >
                   <a rel="tooltip" title="yyyy-mm-dd. You need this to reset your password."><div class=tooltip_mark style='margin=left:0px;'></div></a>  
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
</td>

<td style='border-left:1px dotted #ccc; width:15px;'></td>

<td valign=top width=300>
 <div style='margin:0px; padding:0px 5px; border:0px solid #ccc;'>
  <form action='{$url_login}' method=post id="vForm2" class="cmxform"  >
    <h1>Log in</h1> <br/>
    <div class=label>Email :</div>
    <div class=input><input type=text name=email class="required"></div>
    <div style='clear:both'></div> 
  
    <div class=label>Password : </div>
    <div class=input><input type=password  name=password class="required"></div>
    <div style='clear:both'></div> 
    
    <div style='margin-top:10px; padding-top:10px; border-top:1px solid #ccc;'>

     <input type='submit' value=' Log in ' class="button">  
   </div>  
      
  </form>
 </div> 

 
  <div style='margin:0px; padding:35px 5px; border:0px solid #ccc;'>

  <form action='{$url_reset_password}' method=post id="vForm3" class="cmxform"  >
    <h1>Reset Password</h1> <br/>
    <div class=label>Email :</div>
    <div class=input><input type=text name=email class="required"></div>
    <div style='clear:both'></div> 
  
    <div class=label>Date of Birth : </div>
    <div class=input><input type='text' size=10 maxlength=10 name='dob'  value="" class="required" >
                   <a rel="tooltip" title="yyyy-mm-dd"><div class=tooltip_mark style='margin=left:0px;'></div></a>  </div>
    <div style='clear:both'></div> 
    
    <div style='margin-top:10px; padding-top:10px; border-top:1px solid #ccc;'>

     <input type='submit' value=' Reset ' class="button">  
   </div>  
      
  </form>

 </div> 
 
</td>
</tr>
</table>