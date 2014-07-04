<div id="content">
  <div class="pagetitle icon-48-menu"><h2>Menu: [Edit]</h2></div>
<a href='javascript:history.back(-1);'><div class=close> </div></a><div style='clear:both;'></div>
<form action="{$action}" method="post" id="vForm" class="cmxform" enctype='multipart/form-data'>
<input type="hidden" name="menuid" value="{$rs_menu->menu_id}" />
<div class="forms">
	 <div class=label>Type:</div>
  <div class=input>
    <select name="type" size="1" id="type" onchange="selectItem(this.value);">
      <option value="product" {if $rs_menu->type=="product"}selected="selected"{/if}>Product category</option>
      <option value="content" {if $rs_menu->type=="content"}selected="selected"{/if}>Content management</option>
    </select>
    <select name="itemid" size="1" id="itemid">    
    {if $rs_menu->type=="product"}
    {$str_pro}
    {else}
    {$str_content}
    {/if}
    </select>
  </div>
  <div class=label>Parent Item:</div>
  <div class=input>
    <select name="parent_id" size="1" id="parent_id">
      <option value="0" selected="selected">Top</option>
      {foreach from=$rows item=row}
      <option value="{$row->menu_id}" {if $row->menu_id==$rs_menu->parent_id}selected="selected"{/if}>{$row->title}</option>
      {/foreach}
    </select>
  </div>
   <div class=label>Title:</div>
  <div class=input><input name='title' type='text' id="title" value="{$rs_menu->title}"  size=50 maxlength=50> </div>
   <div class=label>Column:</div>
  <div class=input><input name='columns' type='text' size=10 maxlength=50 id="columns" value="{$rs_menu->columns}"> </div>
   <div class=label>Order:</div>
  <div class=input><input type='text' name='sorting'  size=10 maxlength=50 id="sorting" value="{$rs_menu->sorting}"> </div>
  <div class=label>Publish:</div>
  <div class=input><input name="publish" type="radio" value="1" {if $rs_menu->publish==1} checked="checked"{/if} /> 
  Yes 
    <input name="publish" type="radio" value="0" {if $rs_menu->publish==0} checked="checked"{/if}/>
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
			$("input#itemid").focus();
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
