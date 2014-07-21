{literal}
<script>

function ajaxFileUpload(path_image, folder)
{
  var frm, btn;
  frm = document.frmEditUser;
  btn = frm.btnUpload;
  btn.disabled = true;
  btn.value = 'Uploading...';
  $.ajaxFileUpload
  (
      {
          url: frm.url.value,
          secureuri:false,
          folder:folder,
          fileElementId:'file1',
          dataType: 'json',
          success: function (data, status)
          {
              if(typeof(data.error) != 'undefined')
              {
                  if(data.error != '')
                  {
                      btn.disabled = false;
                      alert(data.error);
                  }
                  else
                  {
                      //alert(data.msg);
                      btn.disabled = false;
                      id = document.getElementById("imagehtml");
                      if(id) {
                        id.innerHTML = "<img src='"+ path_image + "/" + folder + "/" + data.msg + "' width=50 height=50 />  <input type='button' name='btnDel' onclick='delImg();' value='DELETE' class='button_class'  />";
                      }
                      frm.photo.value=folder + "/" +data.msg;
                      alert('Upload file successfully!');
                  }
              }
              btn.value = 'Upload';
          },
          error: function (data, status, e)
          {
              btn.disabled = false;
              btn.value = 'Upload';
              alert(e);
          }
      }
  )
  
  return false;

}
function delImg(){
	document.getElementById("imagehtml").innerHTML = '';
	document.frmNews.photo.value = '';
}
</script>
{/literal}
<script language="javascript">
$(document).ready(function() {ldelim}		 
	// Validation	
	$('input#btn_submit').click(function() {ldelim}		
	   var email_list = [{$email_list}];			
	   if ($('input#name').val()==''){ldelim}
		   alert('{$_MSS_NAME}');
		   $('input#name').focus();
		   return false;
	   {rdelim} else if ($('input#email').val()==''){ldelim}
		   alert('{$_MSS_EMAIL}');
		   $('input#email').focus();
		   return false;
	   {rdelim} else if (!isValidEmail($('input#email').val())){ldelim}
		   alert('{$_MSS_EMAIL1}');
		   $('input#email').focus();
		   return false;
	   {rdelim} else if (jQuery.inArray($('input#email').val(), email_list)!=-1){ldelim}		   
		   alert('{$_MSS_EMAIL2}');
		   $('input#email').focus();
		   return false;
	  {rdelim} else if ($('input#pass').val()!=$('input#pass2').val()){ldelim}
		   alert('{$_MSS_PASSWORD1}');
		   $('input#pass2').focus();
		   return false;
	   {rdelim} else {ldelim}	   		   		
		   $('form#frmEditUser').submit();		   
	   {rdelim}
	{rdelim});

});
</script>
<script language="javascript">
function viewCountries()
{ldelim}
  var frm, btn;	
	$.get("{$link_country}", {ldelim} {rdelim},
   function(data){ldelim}
     $("#contactArea").html(data);
   {rdelim});	

  return false;	
{rdelim}
</script>
<script src="{$php5WebPath}/includes/js/jquery/country.js" type="text/javascript"></script>
<!-- Content Area -->

<div id="content"> 
  
  <!-- Component Title -->
  <div class="pagetitle icon-48-module">
    <h2>Manager: EDIT USER</h2>
  </div>
  
  <!-- System Messages -->
  
  <div id="system-message-container"> {if $msg}
    <dl id="system-message">
      <dt class="message">Message</dt>
      <dd class="message message">
        <ul>
          <li>{$msg}</li>
        </ul>
      </dd>
    </dl>
    {/if} </div>
  
  <!-- Sub Menu Navigation -->
  <div class="subheader">
    <h3 class="element-invisible">Sub Menu</h3>
    <div id="no-submenu"></div>
  </div>
  
  <!-- Beginning of Actual Content -->
  <div id="element-box">
    <p id="skiptargetholder"><a id="skiptarget" class="skip" tabindex="-1"></a></p>   
           <table width="100%" border="0" cellspacing="0" cellpadding="5">
           <form action="{$link_save_user}" name="frmEditUser" id="frmEditUser" method="post" enctype="multipart/form-data">
           <input type="hidden" name="user_id" value="{$row->id}" />         
              <tr>
                <td colspan="3" align="right"><input type="button" value="Back" class="button_class" onclick="redirectToUrl('{$link_list_user}')"/></td>
              </tr>
              <tr>
                <td width="50%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                  <tr>
                    <td width="100" align="right">Type</td>
                    <td><select name="type_id" id="type_id">
                      
                 {html_options options=$user_type selected=$row->type_id}
                
                    </select>
*</td>
                  </tr>
                  <tr>
                    <td width="100" align="right">Name</td>
                    <td><input name="name" type="text" class="textinput" id="name" value="{$row->name}" />
*</td>
                  </tr>
                  <tr>
                    <td width="100" align="right">New password</td>
                    <td><input name="pass" type="password" class="textinput" id="pass" />
*</td>
                  </tr>
                  <tr>
                    <td width="100" align="right">Verify password</td>
                    <td><input name="pass2" type="password" class="textinput" id="pass2" />
*</td>
                  </tr>
                  <tr>
                    <td width="100" align="right">Country</td>
                    <td><select name="country_id" id="country_id" style="width:200px">
        	{html_options options=$countries selected=$row->country_id}
                    </select>
                   <br /> 
                          <div id="backgroundPopup"></div>   
                    </td>
                  </tr>
                </table></td>
                <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                  <tr>
                    <td width="100" align="right">Mobile</td>
                    <td><input name="phone" type="text" class="textinput" id="phone" value="{$row->phone}" /></td>
                  </tr>
                  <tr>
                    <td width="100" align="right">Email</td>
                    <td><input name="email" type="text" class="textinput" id="email" value="{$row->email}" />
*</td>
                  </tr>
                  <tr>
                    <td width="100" align="right" valign="top"></td>
                    <td valign="top">
                    
                    </td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="3" align="right" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                  <tr>
                    <td width="100" align="right" valign="top">Remarks</td>
                    <td><textarea name="remarks" cols="40" rows="5" class="textarea_field" id="remarks">{$row->remarks}</textarea></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td colspan="3" align="center"><input type="submit" value="Save" class="button_class" id="btn_submit"/> <input type="reset" value="Reset" class="button_class"/></td>
              </tr>
              <input type="hidden" name="url" value="{$path_upload_file}"  />
              </form>
            </table>           
    <div class="clr"></div>
  </div>
  <!-- end of element-box -->
  
  <noscript>
  Warning! JavaScript must be enabled for proper operation of the Administrator backend.
  </noscript>
  <div class="clr"></div>
</div>
<!-- end of content -->