<div id="content">
  <div class="pagetitle icon-48-article">
  <h2>Campaign manager</h2></div>
  <div> <input type='button' id="btn_add" value='Add Campaign' class="button" onclick="javascript:window.location.href='{$link_add}'"></div>
	<table class="adminlist">
    <form method="post" action="{$link_order}" id="vForm">	    
		<tr>
			<th width="40"  class="title">#ID</th>
			<th width="200" class="title">Campaign name</th>
			<th nowrap="nowrap"  class="title">Subject</th>
			<th width="150" nowrap="nowrap"  class="title">Products</th>
			<th width="100" class="title">Started date</th>
			<th width="100" class="title">Finished date</th>
		<th width="80"  class="title" nowrap="nowrap">Published</th>
        <th width="100"  class="title" nowrap="nowrap"></th>
		</tr>	
        {assign var="class" value="row0"}
        {foreach from=$rows item=row}	
        	
<tr class="{$class}">
			<td width="40">{$row->campaign_id}</td>
			<td width="200" nowrap="nowrap">{$row->campaign_name}</td>
			<td><strong>{$row->subject}</strong><br />
			<div style="color:#B30F75; font-size:11px;"><strong>URL: {$row->url}</strong></div>
            </td>
			<td width="150" align="center"><div style="font-size:18px; text-align:center;"><strong>{$row->product}</strong> product(s)</div>
            <div style="font-size:11px;  text-align:center;">
            {if $row->product>0}
            <a href="javascript:void(0);" onclick = "document.getElementById('light{$row->campaign_id}').style.display='block';" style="color:#F00;">More detail &raquo;</a> | 
            {/if}
            <a href="{$row->link_addproduct}" style="color:#F00;">Add products</a></div>
            {if $row->product>0}
            <div id="light{$row->campaign_id}" class="white_content">
            <div style="text-align:right;"><a href = "javascript:void(0)" onclick = "document.getElementById('light{$row->campaign_id}').style.display='none';" style="color:#ff6600;">Close x</a></div>
            <div><a href="{$row->link_addproduct}" style="color:#F00;">Add products</a> to Campaign #ID: <strong>{$row->campaign_id} - {$row->campaign_name}</strong></div>
            <div>Total: {$row->product} product(s)</div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="adminlist" style="margin-top:10px; margin-bottom:10px;">
              <tr>
                <td><strong>SKU</strong></td>
                <td><strong>Product name</strong></td>
                <td><strong>Price</strong></td>
                <td><strong>Discount</strong></td>	
              </tr>
              {foreach from=$row->product_list item=pro}
              <tr class="row0">
                <td>{$pro->sku}</td>
                <td>{$pro->name}</td>
                <td>{$pro->price}</td>
                <td>{$pro->discount}</td>
              </tr>
              {/foreach}
            </table>

            </div>
            {/if}
            </td>
			<td width="100">{$row->started_date}</td>
			<td width="100">{$row->finished_date}</td>		
      <td width="80" align="center">
            {if $row->publish==1}
            Yes
            {else}
            <span style="color:#999;">No</span>
            {/if}
        </td>	
        <td width="100" align="center">
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


