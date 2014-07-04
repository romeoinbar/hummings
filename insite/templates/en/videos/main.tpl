<div id="content">
  <div class="pagetitle icon-48-mediamanager">
    <h2>Video Blogs</h2></div>
  <div> <input type='button' id="btn_add" value='Add Video' class="button" onclick="javascript:window.location.href='{$link_add}'"></div>
	<table class="adminlist">
    <form method="post" action="{$link_order}" id="vForm">	    
		<tr>
			<th width="20"  class="title">#</th>
			<th width="200" class="title">Description</th>
			<th width="100"  class="title">Type</th>
			
			<th width="8%" nowrap="nowrap"  class="title">Order<a href="javascript:$('form#vForm').submit();" rel="tooltip" title="Save Order"><img src="{$php5WebPath}/images/filesave.png" alt="Save Order"  /></a></th>
			<th width="20%" class="title">Path</th>
		  <th width="80"  class="title" nowrap="nowrap">Published</th>
        <th width="100"  class="title" nowrap="nowrap"></th>
		</tr>	
        {assign var="class" value="row0"}
        {foreach from=$rows item=row}		
<tr class="{$class}">
			<td>{$row->video_id}</td>
			<td nowrap="nowrap">{$row->desc}</td>
			<td>{$row->type}</td>			
			<td><input type="text" name="order[]" size="5" value="{$row->sorting}"  style="text-align: center" /></td>
			<td style="font-size:11px;"><a href="#" onclick="window.open('{$php5WebPath}/images/{$row->video_path}', 'mywindow','menubar=0,resizable=0,width=325,height=280,scrollbar=0')">{$row->video_path}</a></td>
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
  <td colspan="7" align="center">No item.</td>
  </tr>
        {/foreach}
        <input type="hidden" name="list" value="{$list}" />
        </form>
	</table>
</div>


