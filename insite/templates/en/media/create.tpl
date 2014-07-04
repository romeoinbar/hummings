<script language="javascript">
var path_video = "{$php5WebPath}";
</script>
{literal}
<style>
form {
	margin: 0;
	padding: 0;
}
</style>
<script>
function ajaxFileUpload(frm, path_image, foldername, file, imagehtml)
{
  var frm, btn;
  //frm = document.frmAdmin;
  //btn = frm.btnUpload;
  //btn.disabled = true;
  //btn.value = 'Uploading...';
  $.ajaxFileUpload
  (
      {
          url: document.frmAdmin.url.value,
          secureuri:false,
          folder:foldername,
          fileElementId:file,
          dataType: 'json',
          success: function (data, status)
          {
              if(typeof(data.error) != 'undefined')
              {
                  if(data.error != '')
                  {
                      //btn.disabled = false;
                      alert(data.error);
                  }
                  else
                  {
                      //btn.disabled = false;
                      id = document.getElementById(imagehtml);
					  					frm.video_path.value= foldername + "/" + data.msg;
                      if(id) {
                        id.innerHTML = "<a href='#' onclick='window.open(\""+ path_video + "/images/"+frm.video_path.value +"\", \"mywindow\",\"menubar=1,resizable=1,width=325,height=280,scrollbar=yes\")'>"+ frm.video_path.value +"</a>";
                      }                     
                      //alert('Upload file successfully!');
                  }
              }
              //btn.value = 'Upload';
          },
          error: function (data, status, e)
          {
              //btn.disabled = false;
              //btn.value = 'Upload';
              alert(e);
          }
      }
  )
  
  return false;

}
function checkAllUpload(path_image, foldername)
{
	if(document.frmAdmin1.chk1.checked) {
		ajaxFileUpload(document.frmAdmin1, path_image, foldername, 'file1', 'imagehtml1');
	}
	if(document.frmAdmin2.chk2.checked) {
		ajaxFileUpload(document.frmAdmin2, path_image, foldername, 'file2', 'imagehtml2');
	}
	if(document.frmAdmin3.chk3.checked) {
		ajaxFileUpload(document.frmAdmin3, path_image, foldername, 'file3', 'imagehtml3');
	}
	if(document.frmAdmin4.chk4.checked) {
		ajaxFileUpload(document.frmAdmin4, path_image, foldername, 'file4', 'imagehtml4');
	} 
	if(document.frmAdmin5.chk5.checked) {
		ajaxFileUpload(document.frmAdmin5, path_image, foldername, 'file5', 'imagehtml5');
	}
}
</script>
{/literal} 
<!-- Content Area -->

<div id="content"> 
  
  <!-- Component Title -->
  <div class="pagetitle icon-48-module">
    <h2>Manager: UPLOAD IMAGES</h2>
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
  
  <!-- Toolbar Icon Buttons -->
  <div class="actionbar-box">
    <div class="module">
      <h3>Toolbar</h3>
      <div class="actionbar-list" id="actionbar">
        <ul>
          <li id="actionbar-apply"> <a href="#" onclick="javascript:checkAllUpload('{$php5WebPath}/images', '{$folder}');" class="actionbar"> <span class="icon-32-apply"> </span> Upload </a> </li>
          <li id="actionbar-cancel"> <a href="{$link_return}" class="actionbar"> <span class="icon-32-cancel"> </span> Close </a> </li>
        </ul>
        <div class="clr"></div>
      </div>
    </div>
    <div class="clr"></div>
  </div>
  
  <!-- Beginning of Actual Content -->
  <div id="element-box">
    <p id="skiptargetholder"><a id="skiptarget" class="skip" tabindex="-1"></a></p>
    <form name="frmAdmin1" action="{$action}" method="post">
      <div class=input>
        <input type="checkbox" value="1" name="chk1" />&nbsp; <input name="file1" type="file" class="textfield" id="file1" />
          
          <input name="video_path" type="hidden" value="" />           
          <div id="imagehtml1"></div>           
      </div>
    </form>
    <form name="frmAdmin2" action="{$action}" method="post">  
      <div class=input>
         <input type="checkbox" value="1" name="chk2" />&nbsp; <input name="file1" type="file" class="textfield" id="file2" />
          
          <input name="video_path" type="hidden" value="" />           
          <div id="imagehtml2"></div>           
      </div>
    </form>
    <form name="frmAdmin3" action="{$action}" method="post">
      <div class=input>
         <input type="checkbox" value="1" name="chk3" />&nbsp; <input name="file1" type="file" class="textfield" id="file3" />
          
          <input name="video_path" type="hidden" value="" />           
          <div id="imagehtml3"></div>           
      </div>
    </form>
    <form name="frmAdmin4" action="{$action}" method="post">
      <div class=input>
         <input type="checkbox" value="1" name="chk4" />&nbsp; <input name="file1" type="file" class="textfield" id="file4" />
           
          <input name="video_path" type="hidden" value="" />           
          <div id="imagehtml4"></div>           
      </div>
    </form>
    <form name="frmAdmin5" action="{$action}" method="post">
      <div class=input>
         <input type="checkbox" value="1" name="chk5" />&nbsp; <input name="file1" type="file" class="textfield" id="file5" />
          
          <input name="video_path" type="hidden" value="" />           
          <div id="imagehtml5"></div>           
      </div>
    </form>
    <form name="frmAdmin" action="{$action}" method="post">
      <input type="hidden" name="url" value="{$path_upload_file}"  /> 
    </form>
    <div class="clr"></div>
  </div>
  <!-- end of element-box -->
  
  <noscript>
  Warning! JavaScript must be enabled for proper operation of the Administrator backend.
  </noscript>
  <div class="clr"></div>
</div>
<!-- end of content -->