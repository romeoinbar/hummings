<div id="content">
  <div class="pagetitle icon-48-content-categories"><h2>Content Category</h2></div>
  <div> <input type='button' id="btn_add" value='Add Category' class="button" onclick="javascript:window.location.href='{$link_add}'"></div>
	<table class="adminlist">
    <form method="post" action="{$link_order}" id="vForm">	    
		<tr>
			<th width="20"  class="title">#</th>
			<th class="title">Category name </th>
			<th width="100" class="title">Category type</th>
			<th width="60" class="title">Display in the bottom menu</th>
			<th width="8%" nowrap="nowrap"  class="title">Order<a href="javascript:$('form#vForm').submit();" rel="tooltip" title="Save Order"><img src="{$php5WebPath}/images/filesave.png" alt="Save Order"  /></a></th>
		  <th width="80"  class="title" nowrap="nowrap">Published</th>
        <th width="100"  class="title" nowrap="nowrap"></th>
		</tr>	
        {assign var="class" value="row0"}
        {foreach from=$rows item=row}		
<tr class="{$class}">
			<td>{$row->content_category_id}</td>
			<td nowrap="nowrap">{$row->category_name} <strong>({$row->countitem item(s)})</strong></td>
			<td width="100" nowrap="nowrap">{$row->type}</td>
			<td width="60" nowrap="nowrap">{if $row->show_bottom==1}
            Yes
            {else}
            <span style="color:#999;">No</span>
            {/if}</td>
			<td><input type="text" name="order[]" size="5" value="{$row->sorting}"  style="text-align: center" /></td>
		<td width="80" align="center">
            {if $row->publish==1}
            Yes
            {else}
            <span style="color:#999;">No</span>
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
        {/foreach}
        <input type="hidden" name="list" value="{$list}" />
        </form>
	</table>
</div>


