<div id="content">
  <div class="pagetitle icon-48-article"><h2>Articles manager</h2></div>
  <div> <input type='button' id="btn_add" value='Add Article' class="button" onclick="javascript:window.location.href='{$link_add}'"></div>
	<table class="adminlist">
    <form method="post" action="{$link_order}" id="vForm">	    
		<tr>
			<th width="20"  class="title">#ID</th>
			<th class="title">&nbsp;</th>
			<th width="8%" nowrap="nowrap"  class="title">Order<a href="javascript:$('form#vForm').submit();" rel="tooltip" title="Save Order"><img src="{$php5WebPath}/images/filesave.png" alt="Save Order"  /></a></th>
			<th width="20%" class="title">Category</th>
			<th width="10%" class="title">Author</th>
			<th width="10%" class="title">Date</th>
		<th width="5%"  class="title" nowrap="nowrap">Published</th>
        <th width="100"  class="title" nowrap="nowrap"></th>
		</tr>	
        {assign var="class" value="row0"}
        {foreach from=$rows item=row}	
        	
<tr class="{$class}">
			<td>{$row->content_id}</td>
			<td nowrap="nowrap">{$row->title}</td>
			<td><input type="text" name="order[]" size="5" value="{$row->sorting}"  style="text-align: center" /></td>
			<td>
          {$row->category_name}
      </td>
			<td>{$row->created_by}</td>
			<td width="10%">{$row->created_date}</td>		
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
        <tr class="row1">
  <td colspan="8" align="center">No article.</td>
  </tr>
        {/foreach}
        <input type="hidden" name="list" value="{$list}" />
        </form>
	</table>
</div>


