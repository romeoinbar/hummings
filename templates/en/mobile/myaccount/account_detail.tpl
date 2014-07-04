<div style="border-bottom:1px solid #ccc; padding:5px; padding-left:15px;"><a href="{$php5WebPath}/mobile-cart/" style="text-decoration:none;">Home</a> - <a href="{$url_my_account}" style="text-decoration:none;">My account</a> - <span style="color:#b84c86;">My details</span></div>
<div style="margin:15px;">
<div style='color:#757073; background-color:#fef2fa; height:35px; line-height:35px; padding-left:10px;'><strong>MY DETAILS</strong></div>
<p><strong>Title:</strong> {$user->title}</p>
<p><strong>Surname:</strong> {$user->surname}</p>
<p><strong>Given name:</strong> {$user->name}</p>
<p><strong>Gender:</strong> {$gender}</p>
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
<a href="{$url_edit_account}"><img src="{$php5WebPath}/images/btn_edit.png" border="0" /></a> <a href="{$url_change_password}"><img src="{$php5WebPath}/images/btn_changepass.png" border="0" /></a>
<div style="margin-right:15px; margin-top:10px; text-align:right;"><a href="{$url_my_account}" class="back_link">BACK</a></div>
</div>