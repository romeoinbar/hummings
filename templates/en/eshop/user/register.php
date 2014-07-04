<div style='padding:10px;'>
  {$message}
<img src='{$php5WebPath}/images/register.jpg'>  
{if $guest_checkout==1}
<div align="right" style="margin-top:-30px; padding-bottom:30px; margin-right:15px; color:#666;">Continue with <a href="{$url_guest}" style="color:#c20873;"><strong>Guest Checkout</strong></a></div>
{/if}
<table border=0>
<tr>
<td width=424 valign=top>
<img src='{$php5WebPath}/images/returning.jpg'>  
 <div style='margin:0px; padding:10px 0px; border:0px solid #ccc;'>
  <form action='{$url_login}' method=post id="vForm2" class="cmxform"  >
    <div class=label>Email Address <font color=red>*</font></div>
    <div class=input><input type=text name=email  style='width:270px;' class="required email"></div>
    <div style='clear:both'></div> 
  
    <div class=label>Password <font color=red>*</font></div>
    <div class=input><input type=password style='width:270px;'  name=password class="required"></div>
    <div style='float:right'>
    <table>
      <tr>
       <td align=right>
         <a href=#forget onClick=showhide('reset')><i>Forgot your password?</i></a>
       </td>
      </tr>
      <tr>
      <td align=right>  
        <div style='padding-top:20px;'>
          <input type='image' src='{$php5WebPath}/images/signin.jpg'  style='border:0; padding:0; width:98px; height:33px;'>    
        </div>  
      </td>
      </tr>
    </table>
    </div>

    <div style='clear:both'></div> 
    

      
  </form>
 </div> 

 <a name=forget>
  <div style='margin:0px; padding:35px 0px; border:0px solid #ccc; display:none;' id='reset'>
  <img src='{$php5WebPath}/images/reset_title.jpg'>  
  <form action='{$url_reset_password}' method=post id="vForm3" class="cmxform"  >
    <div class=label>Email : <font color=red>*</font> </div>
    <div class=input><input type=text name=email class="required email" style='width:270px;'   ></div>
    <div style='clear:both'></div> 
    <div style='margin-top:20px;  float:right;'>

     <input type='image' src='{$php5WebPath}/images/reset.jpg'  style='border:0; padding:0; width:98px; height:33px;'>  
   </div>  
      
  </form>

 </div> 
 
</td>

<td style='width:150px;'></td>

<td valign=top width=426 valign=top>
<div style='padding:0px 0px; 10px 0px;'>
<img src='{$php5WebPath}/images/new.jpg'>  

{literal}
<script>
function checkform()
{
var str= document.getElementById('dnick').innerHTML;
var n=str.search("yes"); 

if (n>1)
return true;

return false;

}
</script>
{/literal}
<form action='{$action}' method=post id="signupForm" class="cmxform" onSubmit="return checkform();">


  
  <div class=label>Email Address : <font color=red>*</font></div>
  <div class=input>
    <div >
          <div style=''>
                   
                        <input type='text' style='float:left;' size=36 maxlength=240 name='email'  class="required email" value="" id='nick' onKeyup=checkEmail() >
                        <div id='dnick' style='float:left; padding:0px 5px 0px 5px; '></div> 
          </div>  
    
  </div>
  <div style='clear:both;height:5px;'></div> 
  
  <div class=label>Password : <font color=red>*</font></div>
  <div class=input><input type='password' size=36 maxlength=15 name='password' id='password'    class="required"  value="" ></div>
  <div style='clear:both'></div>   

  <div class=label>Confirm Password : <font color=red>*</font></div>
  <div class=input><input type='password' size=36 maxlength=15 name='password2' id='password2'     class="required"  value="" ></div>
  <div style='clear:both'></div>   
   
    <div style='margin-top:20px;  float:right;'>

     <input type='image' src='{$php5WebPath}/images/create.jpg'  style='border:0; padding:0; width:164px; height:32px;'>  
   </div> 

</form>
</div>
 
</td>
</tr>
</table>


</div>