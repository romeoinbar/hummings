<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::: Motul rewards :::</title>
<link href="{$php5WebPathAD}/templates/css/main.css" rel="stylesheet" type="text/css" />
<link href="{$php5WebPathAD}/templates/css/menu.css" rel="stylesheet" type="text/css" />
<script src="{$php5WebPath}/includes/js/jquery/jquery.js" type="text/javascript"></script>
<script src="{$php5WebPath}/includes/js/global.js" type="text/javascript"></script>
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
                      frm.image.value= foldername + "/" + data.msg;
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
{literal}
<script type="text/javascript">
$(window).load(function () {
	$('select#type_id').val(3);
	$('span#l_workshop').show();
	$('span#v_workshop').show();
});
$(document).ready(function(){
	$('select#type_id').change(function() {
		 if ($(this).val()!=3){
			$('span#l_workshop').hide();
			$('span#v_workshop').hide();
		 } else {
			 $('span#l_workshop').show();
			 $('span#v_workshop').show();
		 }
	});	
});
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
</head>
<body>

{include_php file="$php5RootAdminPath/modules/main/header.php"}
<div style="padding:10px;">
           <div class="header">Create account manager</div>           
           <div class="outer-form">      
           <table width="100%" border="0" cellspacing="0" cellpadding="5">
           <form action="{$action}" name="frmAddUser" id="frmAddUser" method="post" enctype="multipart/form-data">
              <tr>
                <td align="right">&nbsp;</td>
                <td>&nbsp;</td>
                <td align="right">&nbsp;</td>
                <td align="right"><input type="button" value="{$_BACK}" class="button_class" onclick="redirectToUrl('{$link_list_user}')"/></td>
              </tr>
              <tr>
                <td width="100" align="right">{$_USER_TYPE}</td>
                <td>
                  <select name="type_id" id="type_id">
                 {html_options options=$user_type selected=3}
                </select> 
                  *</td>
                <td align="right"><span id="l_workshop">{$_WORKSHOP}</span></td>
                <td>
                <span id="v_workshop">
                <select name="dealer_id" id="dealer_id">
                {html_options options=$dealer}
                </select> *
                </span>
                </td>
              </tr>
              <tr>
                <td width="100" align="right">{$_NAME}</td>
                <td><input name="name" type="text" class="textinput" id="name" />
                  *</td>
                <td align="right">{$_DESIGNATION}</td>
                <td><input name="designation" type="text" class="textinput" id="designation" /></td>
              </tr>
              <tr>
                <td width="100" align="right">{$_EMAIL}</td>
                <td><input name="email" type="text" class="textinput" id="email" />
                  *</td>
                <td align="right">{$_UNIT}</td>
                <td><input name="unit" type="text" class="textinput" id="unit" onkeypress="return isNumberKey(event)" /></td>
              </tr>
              <tr>
                <td width="100" align="right">{$_PASSWORD}</td>
                <td><input name="pass" type="password" class="textinput" id="pass" />
                *</td>
                <td align="right">{$_CONTACT_NUMBER}</td>
                <td><input name="telephone" type="text" class="textinput" id="telephone" /></td>
              </tr>
              <tr>
                <td width="100" align="right">{$_VERIFY_PASSWORD}</td>
                <td><input name="pass2" type="password" class="textinput" id="pass2" />
                  *</td>
                <td align="right">{$_MOBILE}</td>
                <td><input name="phone" type="text" class="textinput" id="phone" /></td>
              </tr>
              <tr>
                <td width="100" align="right">{$_IMAGE}</td>
                <td>
                <input name="file1" type="file" class="textfield" id="file1" />
                <input type="button" name="btnUpload" value="Upload" onClick="return ajaxFileUpload('{$php5WebPath}/images', 'avatar');" class="button_class"  />
            		<input name="image" type="hidden" value="{$image}" />
            		<div id="imagehtml"></div>
								</td>
                <td align="right">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td width="100" align="right" valign="top">{$_REMARKS}</td>
                <td colspan="3">
                <textarea name="remark" cols="45" rows="5" class="textarea_field" id="remark"></textarea></td>
              </tr>
              <tr>
                <td width="100" align="right">&nbsp;</td>
                <td colspan="3"><input type="submit" value="{$_CREATE}" class="button_class" id="btn_submit"/> <input type="reset" value="{$_RESET}" class="button_class"/></td>
              </tr>
              <input type="hidden" name="url" value="{$path_upload_file}"  />
              <input type="hidden" name="taskTemp" value="add"  />
              </form>
            </table>
</div>
         </div>    
 {include_php file="$php5RootAdminPath/modules/main/footer.php"}  
</body>
</html>
