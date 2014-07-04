<div style="border-bottom:1px solid #ccc; padding:5px; padding-left:15px;"><a href="{$php5WebPath}/mobile-cart/" style="text-decoration:none;">Home</a> - <a href="{$url_my_account}" style="text-decoration:none;">My account</a> - <span style="color:#b84c86;">Update account</span></div>
<div style='margin:15px;'>
<form action={$action} method=post class=cmxform id="vForm2">
<div style='color:#757073; background-color:#fef2fa; height:35px; line-height:35px; padding-left:10px;'><strong>UPDATE ACCOUNT</strong></div>

<br/>


   <div class=label2><strong>Title</strong>:*</div>
   <div class=input>{$title}</div> 
     <div style='clear:both; height:5px;'></div> 
  <div class=label2><strong>Surname:*</strong></div>
  <div class=input><input type='text' size=25 maxlength=40 name='surname'  class="required in  in " value="{$user->surname}" ></div>
  <div style='clear:both; height:5px;'></div> 
  
  <div class=label2><strong>Given Name:*</strong></div>
  <div class=input><input type='text' size=25 maxlength=40 name='name'  class="required in " value="{$user->name}"></div>
   <div style='clear:both; height:5px;'></div> <div class=label2><strong>Gender:</strong></div>
  <div class=input>{$gender}</div>
   <div style='clear:both; height:5px;'></div> <div class=label2><strong>Birthdate:</strong></div>
  <div class=input>{$day} {$month}
  </div>
   <div style='clear:both; height:5px;'></div> <div class=label2><strong>Email:</strong></div>
  <div class=input>
  {$user->email}
  </div>
   <div style='clear:both; height:5px;'></div> <div class=label2><strong>Mobile Number:*</strong></div>
  <div class=input>      
    <input type='text' size=16 maxlength=16 name='telephone1'   style='width:100%;'  value="{$user->telephone1}" class='in required digits' placeholder="NUMBER"   >  
  </div>
   <div style='clear:both; height:5px;'></div> <div class=label2><strong>Work Number :</strong></div>
  <div class=input>     
   <input type='text' size=16 maxlength=16 name='telephone2'  style='width:100%;'  value="{$user->telephone2}" class='in digits'  placeholder="NUMBER">
   </div>
   <div style='clear:both; height:5px;'></div> <div class=label2><strong>Fax :</strong></div>
  <div class=input>  
  <input type='text' size=16 maxlength=16 name='fax'  style='width:100%;'  value="{$user->fax}" class='in digits'  placeholder="NUMBER">
  </div>
   <div style='clear:both; height:5px;'></div> <div class=label2><strong>Company :</strong></div>
  <div class=input><input type='text' size=30 maxlength=40 name='company'  value="{$user->company}"class='textinput'  ></div>
   <div style='clear:both; height:5px;'></div> <div class=label2><strong>Block / Unit :</strong></div>
  <div class=input><input type='text' size=13 maxlength=10 name='block'  value="{$user->block}" class='textinput' > <input type='text' size=13 maxlength=10 name='unit'  value="{$user->unit}" class='textinput'  ></div>
   <div style='clear:both; height:5px;'></div> <div class=label2><strong>Building :</strong></div>
  <div class=input><input type='text' size=30 maxlength=40 name='building'  class="textinput"  value="{$user->building}"  ></div>
   <div style='clear:both; height:5px;'></div> <div class=label2><strong>Street :*</strong></div>
  <div class=input><input type='text' size=30 maxlength=40 name='address1'  class="required in "  value="{$user->address1}"  >
  </div>
  
  <div class=label2></div>  
  <div class=input>  
  <input type='text' size=30 maxlength=40 name='address2'  class="textinput"  value="{$user->address2}"  >
  </div>
   <div style='clear:both; height:5px;'></div> <div class=label2><strong>Postal code :*</strong></div>
  <div class=input><input type='text' size=10 maxlength=6 name='postcode'  value="{$user->postcode}"   class="required in digits" ></div>
   <div style='clear:both; height:5px;'></div> <div class=label2><strong>City / State :</strong></div>
  <div class=input><input type='text' size=13 maxlength=40 name='city'  value="{$user->city}" class='textinput' > <input type='text' size=13 maxlength=40 name='state'  value="{$user->state}" class='textinput' ></div>
   <div style='clear:both; height:5px;'></div> <div class=label2><strong>Country :</strong></div>
  <div class=input>{$country}</div>  
   <div style='clear:both; height:5px;'></div> <i>*mandatory fields</i>

<div>
   <div style='margin-top:10px; padding-top:10px; border-top:1px solid #ccc;'>
   <table>
  <tr>
    <td><input type=checkbox name='newsletter' {$checked} value=1> </td>
    <td></td>
    <td> Keep me posted on the latest promotions</td>
  </tr>
</table>
<br/>
     <input type=image src='{$php5WebPath}/images/save.jpg' style='width:143px; height:24px;'  onClick=clear_placeholder() > &nbsp; &nbsp;
   </div>  
  </div>

</form>
<div style="margin-right:15px; margin-top:10px; text-align:right;"><a href="{$url_my_account}" class="back_link">BACK</a></div>
</div>


{literal}
<script type="text/javascript">
function clear_placeholder ()
{
	
{/literal}	

   el = document.getElementById('pre_telephone1');
   if (el.value == 'Country code')
   el.value='';	
   el = document.getElementById('mid_telephone1');
   if (el.value == 'Area code')
   el.value='';	   
   el = document.getElementById('telephone1');
   if (el.value == 'Number')
   el.value='';	   
   
   el = document.getElementById('pre_telephone2');
   if (el.value == 'Country code')
   el.value='';	
   el = document.getElementById('mid_telephone2');
   if (el.value == 'Area code')
   el.value='';	   
   el = document.getElementById('telephone2');
   if (el.value == 'Number')
   el.value='';	   
   
   el = document.getElementById('pre_fax');
   if (el.value == 'Country code')
   el.value='';	
   el = document.getElementById('mid_fax');
   if (el.value == 'Area code')
   el.value='';	   
   el = document.getElementById('fax');
   if (el.value == 'Number')
   el.value='';	      
   
{literal}   
}
</script>
<!--[if IE]>
<script type="text/javascript">
function add_placeholder (id, placeholder)
{
	var el = document.getElementById(id);
	el.placeholder = placeholder;

    el.onfocus = function ()
    {
		if(this.value == this.placeholder)
		{
			this.value = '';

		}
    };

    el.onblur = function ()
    {
		if(this.value.length == 0)
		{
			this.value = this.placeholder;

		}
    };

	el.onblur();
}

// Add right before </body> or inside a DOMReady wrapper
{/literal}

add_placeholder('pre_telephone1', 'Country code');
add_placeholder('mid_telephone1', 'Area code');
add_placeholder('telephone1', 'Number');

add_placeholder('pre_telephone2', 'Country code');
add_placeholder('mid_telephone2', 'Area code');
add_placeholder('telephone2', 'Number');

add_placeholder('pre_fax', 'Country code');
add_placeholder('mid_fax', 'Area code');
add_placeholder('fax', 'Number');
{literal}

</script>
<![endif]-->
{/literal}