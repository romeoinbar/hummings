<div style="width:312px; margin:auto; margin-top:10px; padding-left:8px;">
{foreach from=$rows item=row}
<div style='width:140px; height:200px; float:left; margin-right:10px;'>
  <div style="border:1px solid #ccc; padding:1px; margin-bottom:10px; text-align:center">{$row->image}</div>
  <div style="font-size:12px;">{$row->name}</div>    
  <div>{$row->rating}</div>
  <div style="font-weight:bold; color:#bb086e; font-size:13px;">{$row->price}</div>
</div>
{/foreach}
</div>
<div style="clear:both;"></div>