
<script src="{$php5WebPath}/includes/js/jquery/ajaxfileupload.js" type="text/javascript"></script>
{literal}
<script>

function ajaxFileUpload(path_image, foldername)
{
  var frm, btn;
  frm = document.frmAddUser;
  btn = frm.btnUpload;
  btn.disabled = true;
  btn.value = 'Uploading...';
  $.ajaxFileUpload
  (
      {
          url: frm.url.value,
          secureuri:false,
          folder:foldername,
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
                        id.innerHTML = "<img src='"+ path_image + "/" + foldername + "/" + data.msg + "' width=50 height=50 />";
                      }
                      frm.photo.value= foldername + "/" + data.msg;
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
	  {rdelim} else if ($('input#pass').val()==''){ldelim}
		   alert('{$_MSS_PASSWORD}');
		   $('input#pass').focus();
		   return false;
	   {rdelim} else if ($('input#pass').val()!=$('input#pass2').val()){ldelim}
		   alert('{$_MSS_PASSWORD1}');
		   $('input#pass2').focus();
		   return false;
	   {rdelim} else {ldelim}
		   $('form#frmAddUser').submit();		   
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
<div id="content">

		<!-- Component Title -->
			<div class="pagetitle icon-48-cpanel"><h2>Add Users</h2></div>

		<!-- System Messages -->
		
<div id="system-message-container">
</div>
<div id="no-submenu"></div>
<div class="clr"></div>

<div id="element-box">
 <form action="{$link_save_user}" name="frmAddUser" id="frmAddUser" method="post" enctype="multipart/form-data">
        <div class="filter-search">
        <input type="button" value="Back" class="button_class" onclick="redirectToUrl('{$link_list_user}')"/>
      </div>
		<fieldset class="adminform">
			<legend>User Details</legend>
				<ul class="adminformlist">
          <li><label id="jform_name-lbl" for="jform_name" class="hasTip required" title="Name::Enter the Type of the user">Type<span class="star">&#160;*</span></label>				<select name="type_id" id="type_id">
        
   {html_options options=$user_type selected=2}
  
      </select></li>
          <li><label id="jform_username-lbl" for="jform_username" class="hasTip required" title="Name::Enter the Type of the user">Name<span class="star">&#160;*</span></label>				<input name="name" type="text" class="inputbox required" id="name" /></li>
          <li><label id="jform_username-lbl" for="jform_username" class="hasTip required" title="Name::Enter the Password of the user">Password<span class="star">&#160;*</span></label>				<input name="pass" type="password" class="textinput" id="pass" /></li>
          <li><label id="jform_username-lbl" for="jform_username" class="hasTip required" title="Name::Enter the Type of the user">Confirm password<span class="star">&#160;*</span></label>				<input name="pass2" type="password" class="textinput" id="pass2" /></li>
          <li><label id="jform_username-lbl" for="jform_username" class="hasTip required" title="Name::Enter the Country of the user">Country<span class="star">&#160;*</span></label>				<select name="country_id" id="country_id" style="width:200px">                    
{html_options options=$countries selected=$country_id}
          </select></li>
          <li><label id="jform_username-lbl" for="jform_username" class="hasTip required" title="Name::Enter the Type of the user">Mobile<span class="star">&#160;*</span></label>				<input name="phone" type="text" class="textinput" id="phone" /></li>
          <li><label id="jform_username-lbl" for="jform_username" class="hasTip required" title="Name::Enter the Type of the user">Email<span class="star">&#160;*</span></label>				<input name="email" type="text" class="textinput" id="email" /></li>
          <li><label id="jform_username-lbl" for="jform_username" class="hasTip required" title="Name::Enter the Type of the user">Upload Photo<span class="star">&#160;*</span></label>				 <input name="file1" type="file" class="textfield" id="file1" />
        <input type="button" name="btnUpload" value="Upload" onclick="return ajaxFileUpload('{$php5WebPath}/images', 'avatar');" class="button_class"  />
        <input name="photo" type="hidden" value="" />
<div id="imagehtml"></div></li>
          <li><label id="jform_username-lbl" for="jform_username" class="hasTip required" title="Name::Enter the Type of the user">Remark<span class="star">&#160;*</span></label>				<textarea name="remarks" cols="45" rows="5" class="textarea_field" id="remarks"></textarea></li>
          
        </ul> 
  </fieldset>
       <div class="filter-search">
        <input type="submit" value="Create" class="button_class" id="btn_submit"/> <input type="reset" value="Reset" class="button_class"/>
      </div>  
  <input type="hidden" name="url" value="{$path_upload_file}"  />
  </form>
</div>
     
  <noscript>
    Warning! JavaScript must be enabled for proper operation of the Administrator backend.		</noscript>
  <div class="clr"></div>

</div><!-- end content -->