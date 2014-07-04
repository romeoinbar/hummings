<div style='padding:8px 0px;'>
<div style="color:#444;   font-size:20px;   font-family:'Times New Roman', Times, serif';  "  ><i>Welcome {$user->surname} {$user->name}</i></div>
<div style=' font-size:18px; padding:25px 0px 5px 0px; border-bottom:6px solid #efefef;'>
<div style=' color#999;' class=header1>MY DETAILS</div>
</div>


		<div class="box">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="50%" valign="top"><p><strong>Title:</strong> {$user->title}</p>
            <p><strong>Surname:</strong> {$user->surname}</p>
            <p><strong>Given name:</strong> {$user->name}</p>
            <p><strong>Gender:</strong> {$gender}
      
             
    
             </p>
            <p><strong>Birthdate:  </strong>{$user->show_dob()}</p>
            <p><strong>Mobile Number:</strong> {$user->pre_telephone1} {$user->mid_telephone1} {$user->telephone1}</p>
            <p><strong>Work Number:</strong> {$user->pre_telephone2} {$user->mid_telephone2} {$user->telephone2}  </p>
            <p><strong>Fax Number:</strong> {$user->pre_fax} {$user->mid_fax} {$user->fax}   </p></td>
            <td valign="top">
             <p><strong>Company:</strong> {$user->company}</p>
            <p><strong>Block / Unit:</strong> {$user->block}  {$user->unit}   </p>
            <p><strong>Building:</strong> {$user->building}</p>
            <p><strong>Street:</strong> {$user->address1} </p>
            <p><strong>Postal Code:</strong> {$user->postcode}</p>
            <p><strong>City:</strong> {$user->city}</p>
            <p><strong>State:</strong> {$user->state}</p>
            <p><strong>Country:</strong> {$user->country}</p>
                 
            </td>
          </tr>
        </table>
		</div>
        
</div>
<form>


<br/>
<a href='{$url_edit_accont}'  class=gray_btn > Edit</a> &nbsp; &nbsp; <a href='{$url_change_password}'  class=gray_btn > Change Password</a>

</form>

