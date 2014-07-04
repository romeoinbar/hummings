<div id="content">
  <div class="pagetitle icon-48-mediamanager">
    <h2>Video Blog: [New]</h2></div>
<a href='javascript:history.back(-1);'><div class=close> </div></a><div style='clear:both;'></div>
<form action="{$action}" method="post" name="vForm" id="vForm" class="cmxform" enctype='multipart/form-data'>
<div class="forms">
	 <div class=label>Type:</div>
  <div class=input>
    <select name="type" size="1" id="type">
      <option value="file">Files</option>
      <option value="youtube">Youtube.com</option>
    </select>    
  </div>  
  <div id="file_block">
       <div class=label>Video path:</div>
      <div class=input>
           <input name="file1" type="file" class="textfield" id="file1" />
                <input type="button" name="btnUpload" value="Upload" onClick="return ajaxFileUpload('{$php5WebPath}/images', 'videos');" class="button_class"  /><a rel="tooltip" title="Width=325px; Height=280px"><div class=tooltip_mark style='margin=left:0px;'></div></a> 
            <input name="video_path" type="hidden" value="" />           
            <div id="imagehtml"></div>           
         
      </div>  
  </div>
  <div id="embed_block">
      <div class=label>Add Embed:</div>
      <div class=input>
        <textarea name="embed" cols="50" rows="5" id="embed"></textarea>
         <a rel="tooltip" title="Add Embed"><div class=tooltip_mark style='margin=left:0px;'></div></a> 
      </div>    
  </div>
   <div class=label>Description:</div>
  <div class=input>
    <textarea name="desc" cols="50" rows="5" id="desc"></textarea>
  </div>  
   <div class=label>Order:</div>
  <div class=input><input type='text' name='sorting'  size=10 maxlength=50 id="sorting"> </div>
  <div class=label>Publish:</div>
  <div class=input><input name="publish" type="radio" value="1" checked="checked" /> 
  Yes 
    <input name="publish" type="radio" value="0" />
  No</div>
  <div class="clr"></div>
  <input type="hidden" name="url" value="{$path_upload_file}"  />
  <input type='button' value='Save' class="button" id="btn_submit">
</div>

</form>
</div>
<script language="javascript">
var path_video = "{$php5WebPath}";
</script>
{literal}
<script language="javascript">
$(document).ready(function() {
	$("a[rel=external]").attr('target', '_blank');
	$('#embed_block').hide();
	$('#file_block').show();	
	$('select#type').change(function() {
		if ($("select#type").val()=='file'){
			$('#embed_block').hide();
			$('#file_block').show();			
		} else {
			$('#file_block').hide();
			$('#embed_block').show();
		}
		
	});
});
</script>
<script>
function ajaxFileUpload(path_image, foldername)
{
  var frm, btn;
  frm = document.vForm;
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
                      btn.disabled = false;
                      id = document.getElementById("imagehtml");
					  frm.video_path.value= foldername + "/" + data.msg;
                      if(id) {
                        id.innerHTML = "<a href='#' onclick='window.open(\""+ path_video + "/images/"+frm.video_path.value +"\", \"mywindow\",\"menubar=1,resizable=1,width=325,height=280,scrollbar=yes\")'>"+ frm.video_path.value +"</a> [<a href='javascript:delVideo();'>DELETE</a>]";
                      }                     
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
function delVideo(){
	document.getElementById("imagehtml").innerHTML = '';
	document.vForm.video_path.value = '';
	document.vForm.file1.value='';
	
}
$('input#btn_submit').click(function() {
	if (($("select#type").val()=='file')&&(document.vForm.video_path.value=="")){		
		alert("Please select video path!");
		$("input#files1").focus();
	} else if (($("select#type").val()=='youtube')&&(document.vForm.embed.value=="")){
		alert("Please enter embed.");
		$("textarea#embed").focus();
	} else if ($("textarea#desc").val()==""){
		alert("Please enter description.");
		$("textarea#desc").focus();
	} else {
		alert("Successfully!");
		$("form#vForm").submit();
	}
});
</script>
{/literal}
