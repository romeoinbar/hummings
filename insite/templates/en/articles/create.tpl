<div id="content">
  <div class="pagetitle icon-48-article-add"><h2>Article: [New]</h2></div>
<a href='javascript:history.back(-1);'><div class=close> </div></a><div style='clear:both;'></div>
<form action="{$action}" method="post" id="vForm" name="vForm" class="cmxform" enctype='multipart/form-data'>
<div class="forms">	
  <div class=label>Category:</div>
  <div class=input>
    <select name="category_id" size="1" id="category_id">   
       <option value="0" selected="selected">Select Category</option>
      {foreach from=$cats item=cat}
      <option value="{$cat->content_category_id}">{$cat->category_name}</option>
      {/foreach}
    </select>
  </div>
   <div class=label>Title:</div>
  <div class=input><input type='text' name='title'  size=80 id="title"> </div>
   <div class=label>IntroText:</div>
  <div class=input>{fckeditor name='introtext' id='introtext' value='' height='150' toolbar='Basic'}</div>
   <div class=label>FullText:</div>
  <div class=input>{fckeditor name='fulltext' id='fulltext' value='' height='300' toolbar='Basic'}</div>
   <div class=label>Order:</div>
  <div class=input><input type='text' name='sorting'  size=10 maxlength=50 id="sorting"> </div>
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
		var oEditor = FCKeditorAPI.GetInstance('introtext');	  
	   var oEditor1 = FCKeditorAPI.GetInstance('fulltext');	 
		if ($("select#category_id").val()==0){
			alert("Please select category!");
			$("input#category_id").focus();
		} else if ($("input#title").val()==""){
			alert("Please enter the title");
			$("input#title").focus();
		} else if (oEditor.GetXHTML()==''){
			alert("Please enter the introtext");
			  oEditor.Focus();
		} else if (oEditor1.GetXHTML()==''){
			alert("Please enter the fulltext");
			  oEditor1.Focus();
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
