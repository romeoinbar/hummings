<div id="content">
  <div class="pagetitle icon-48-content-categories"><h2>Content Category: [Edit]</h2></div>
<a href='javascript:history.back(-1);'><div class=close> </div></a><div style='clear:both;'></div>
<form action="{$action}" method="post" id="vForm" class="cmxform" enctype='multipart/form-data'>
<input type="hidden" name="catid" value="{$cat->content_category_id}" />
<div class="forms">	
	 <div class=label>Category type:</div>
  <div class=input>
  <select name="category_type">
	{html_options options=$cat_type selected=$cat->category_type}
</select>
</div>    
   <div class=label>Category name:</div>
  <div class=input><input name='category_name' type='text' id="title" value="{$cat->category_name}"  size=50 maxlength=50> </div>  
   <div class=label>Order:</div>
  <div class=input><input type='text' name='sorting'  size=10 maxlength=50 id="sorting" value="{$cat->sorting}"> </div>
  <div class=label>Publish:</div>
  <div class=input><input name="publish" type="radio" value="1" {if $cat->publish==1} checked="checked"{/if} /> 
  Yes 
    <input name="publish" type="radio" value="0" {if $cat->publish==0} checked="checked"{/if}/>
  No</div>
   <div class=label>Display in the bottom menu:</div>
  <div class=input><input name="show_bottom" type="radio" value="1" {if $cat->show_bottom==1} checked="checked"{/if} /> 
  Yes 
    <input name="show_bottom" type="radio" value="0" {if $cat->show_bottom==0} checked="checked"{/if}/>
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
		if ($("select#itemid").val()==0){
			alert("Please choose an item!");
			$("input#title").focus();
		} else if ($("input#title").val()==""){
			alert("Please enter the title");
			$("input#title").focus();
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
