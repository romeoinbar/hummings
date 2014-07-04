<div id="content">
  <div class="pagetitle icon-48-category-add"><h2>Content Category: [New]</h2>
  </div>
<a href='javascript:history.back(-1);'><div class=close> </div></a><div style='clear:both;'></div>
<form action="{$action}" method="post" id="vForm" class="cmxform" enctype='multipart/form-data'>
<div class="forms">	 
	 <div class=label>Category type:</div>
  <div class=input>
  <select name="category_type">
	{html_options options=$cat_type selected=0}
</select>
</div>  
   <div class=label>Category name:</div>
  <div class=input><input type='text' name='category_name'  size=50 maxlength=50 id="category_name"> </div>    
   <div class=label>Order:</div>
  <div class=input><input type='text' name='sorting'  size=10 maxlength=50 id="sorting"> </div>
  <div class=label>Publish:</div>
  <div class=input><input name="publish" type="radio" value="1" checked="checked" /> 
  Yes 
    <input name="publish" type="radio" value="0" />
  No</div>
  <div class=label>Display in the bottom menu:</div>
  <div class=input><input name="show_bottom" type="radio" value="1"/> 
  Yes 
    <input name="show_bottom" type="radio" value="0" checked="checked"  />
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
		if ($("input#category_name").val()==""){
			alert("Please enter the category name");
			$("input#category_name").focus();
		} else {
			alert("Successfully!");
			$("form#vForm").submit();
		}
	});
});
</script>
{/literal}