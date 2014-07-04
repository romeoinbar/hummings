<div id="content">
  <div class="pagetitle icon-48-article-add">
    <h2>Campaign: [New]</h2></div>
<a href='javascript:history.back(-1);'><div class=close> </div></a><div style='clear:both;'></div>
<form action="{$action}" method="post" id="vForm" name="vForm" class="cmxform" enctype='multipart/form-data'>
<div class="forms">	  
   <div class=label>Campaign name:</div>
  <div class=input><input type='text' name='campaign_name'  size=80 id="campaign_name"> </div>
   <div class=label>Subject:</div>
  <div class=input><input type='text' name='subject'  size=80 id="subject"> </div>
  <div class=label>Started date:</div>
  <div class=input><input type='text' name='started_date'  size=20 id="started_date"> <img src="{$php5WebPath}/images/cal.gif"  onclick="cal.select(document.forms['vForm'].started_date,'anchor1','MM/dd/yyyy'); return false;" name="anchor1" id="anchor1" align="absmiddle" /> </div>
   <div class=label>Finished date:</div>
  <div class=input><input type='text' name='finished_date'  size=20 id="finished_date"> <img src="{$php5WebPath}/images/cal.gif"  onclick="cal.select(document.forms['vForm'].finished_date,'anchor1','MM/dd/yyyy'); return false;" name="anchor1" id="anchor1" align="absmiddle" /></div>
   <div class=label>Content:</div>
  <div class=input>{fckeditor name='content' id='content' value='' height='150' toolbar='Basic'}</div>   
  <div class=label>Publish:</div>
  <div class=input><input name="publish" type="radio" value="1" checked="checked" /> 
  Yes 
    <input name="publish" type="radio" value="0" />
  No</div>
  <div class="clr"></div>
  <input type='button' value='Save' id="btn_submit">
</div>
<input type="hidden" name="url" value="{$link_upload}"  />
</form>
</div>
{literal}
<script language="javascript">
$(document).ready(function() {
	$('input#btn_submit').click(function() {
		var oEditor = FCKeditorAPI.GetInstance('content');	  
	   
		if ($("input#campaign_name").val()==""){
			alert("Please enter campaign name!");
			$("input#campaign_name").focus();
		} else if ($("input#subject").val()==""){
			alert("Please enter subject!");
			$("input#subject").focus();
		} else if (oEditor.GetXHTML()==''){
			alert("Please enter the content!");
			  oEditor.Focus();
		} else {
			alert("Successfully!");
			$("form#vForm").submit();
		}
	});
});
</script>
{/literal}
<script language="javascript">
function selectItem(param){ldelim}
	if (param=="product"){ldelim}
		$("#itemid").html('{$str_pro}');	
	{rdelim} else {ldelim}
		$("#itemid").html('{$str_content}');
	{rdelim}	
	
}
</script>
