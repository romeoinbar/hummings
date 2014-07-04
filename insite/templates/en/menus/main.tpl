<div id="content">
  <div class="pagetitle icon-48-menu"><h2>Menu Item Manager</h2></div>
  <div> <input type='button' id="btn_add" value='Add Menu' class="button" onclick="javascript:window.location.href='{$link_add}'"></div>
	<table class="adminlist">
    <form method="post" action="{$link_order}" id="vForm">	    
		<tr>
			<th width="20"  class="title">#</th>
			<th class="title">Menu Item </th>
			<th width="5%"  class="title">Column</th>
			
			<th width="8%" nowrap="nowrap"  class="title">Order<a href="javascript:$('form#vForm').submit();" rel="tooltip" title="Save Order"><img src="{$php5WebPath}/images/filesave.png" alt="Save Order"  /></a></th>
			<th width="20%" class="title">Type </th>
			<th width="10%" class="title">ItemID</th>
		<th width="5%"  class="title" nowrap="nowrap">Published</th>
        <th width="100"  class="title" nowrap="nowrap"></th>
		</tr>	
        {assign var="class" value="row0"}
        {foreach from=$rows item=row}		
<tr class="{$class}">
			<td>{$row->menu_id}</td>
			<td nowrap="nowrap">{$row->title}</td>
			<td>{$row->columns}</td>			
			<td><input type="text" name="order[]" size="5" value="{$row->sorting}"  style="text-align: center" /></td>
			<td>
            {if $row->type=="content"}
            Content management
            {else}
            Product category
            {/if}
      </td>
			<td><a href="javascript:;" rel="tooltip"  title="{$row->item_name}">{$row->itemid}</a></td>		
      <td align="center">
            {if $row->publish==1}
            Publish
            {else}
            <span style="color:#999;">Unpublish</span>
            {/if}
        </td>	
        <td align="center">
        <a href="{$row->link_edit}">EDIT</a> | <a href="{$row->link_del}" onclick="return confirm('Are you sure you want to delete?');">DELETE</a></td>	
	  </tr>
      	{if $class=="row1"}
        {assign var="class" value="row0"}
        {else}
        {assign var="class" value="row1"}
        {/if}
        {foreachelse}
        <tr class="row0">
  <td colspan="8" align="center">No item.</td>
  </tr>
        {/foreach}
        <input type="hidden" name="list" value="{$list}" />
        </form>
	</table>
</div>


