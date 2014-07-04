<div id="content">
  <div class="pagetitle icon-48-menu"><h2>Article: [Edit]</h2></div>
<a href='javascript:history.back(-1);'><div class=close> </div></a><div style='clear:both;'></div>
<form action="{$action}" method="post" id="vForm" class="cmxform" enctype='multipart/form-data'>
<input type="hidden" name="contentid" value="{$content->content_id}" />
<div class="forms">
	 <div class=label>Category:</div>
  <div class=input>
    <select name="category_id" size="1" id="category_id">        
      {foreach from=$cats item=cat}
      <option value="{$cat->content_category_id}" {if $cat->content_category_id==$content->category_id}selected="selected"{/if}>{$cat->category_name}</option>
      {/foreach}
    </select>
  </div> 
   <div class=label>Title:</div>
  <div class=input><input type='text' name='title'  size=80 id="title" value="{$content->title}"></div>
   <div class=label>IntroText:</div>
  <div class=input>{fckeditor name='introtext' id='introtext' value=$content->introtext height='150' toolbar='Basic'}</div>
   <div class=label>FullText:</div>
  <div class=input>{fckeditor name='fulltext' id='fulltext' value=$content->fulltext height='300' toolbar='Basic'}</div>
   <div class=label>Order:</div>
  <div class=input><input type='text' name='sorting'  size=10 maxlength=50 id="sorting" value="{$content->sorting}"> </div>
  <div class=label>Publish:</div>
  <div class=input><input name="publish" type="radio" value="1" {if $content->publish==1} checked="checked"{/if} /> 
  Yes 
    <input name="publish" type="radio" value="0" {if $content->publish==0} checked="checked"{/if}/>
  No</div>
  <div class="clr"></div>
  <input type='button' value='Save' class="button" id="btn_submit">
</div>

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
