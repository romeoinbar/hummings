<div id="content">

		<!-- Component Title -->
			<div class="pagetitle icon-48-cpanel"><h2>Manager Users</h2></div>

		<!-- System Messages -->
		
<div id="system-message-container">
</div>
<div id="no-submenu"></div>
<div class="clr"></div>

<div id="element-box">


  <form action="" method="post" name="frm" id="frm">
  <fieldset id="filter-bar">
    <legend class="element-invisible">Search Users</legend>
      <div class="filter-search">
        <input type="button" value="Add Item" class="button_class" onclick="redirectToUrl('{$link_add_user}')"/>
      </div>
      <div class="filter-select">
        <span class="faux-label")>Type:&#160;</span>
        <select name="type_id" id="type_id" onchange="redirectToUrl('{$link_list_user}list/'+this.value)">           
   <option value="0">Choose type</option>
    {html_options options=$user_type selected=$type_id}
   </select>
      </div>
   </fieldset>   
   <div class="clr"> </div>   

   <table class="adminlist">
   <thead>
    <tr>
      <th align="center"  class="title">ID#</td>        
      <th class="title">Name</td>
      <th class="title">Email</td>
      <th class="title">Type</td>
      <th class="title">Action</td>
    </tr>
    </thead> 
    <tbody>  
      {foreach from=$rows item=row} 
    <tr class="row0">
      <td >{$row->id}</td>        
      <td class="center"><a href="{$link_view_user}{$row->id}">{$row->name}</a></td>
      <td  class="center">{$row->email}</td>
      <td  class="center">{$row->user_type}</td>
      <td  class="center"><a href="{$link_edit_user}{$row->id}">EDIT</a><br />          
        <a href="javascript:;" onclick="delItem('{$link_del_user}{$row->id}', '{$row->mss}')">DELETE</a></td>
    </tr>
    {foreachelse}
    <tr>
      <td  colspan="5" class="center">No user.</td>
     </tr>
     {/foreach}
     </tbody>
  </table>

<div class="containerpg"><div class="pagination">
  <div class="limit">{$paging}</div>
</div></div>
  </form> 
</div>
     
  <noscript>
    Warning! JavaScript must be enabled for proper operation of the Administrator backend.		</noscript>
  <div class="clr"></div>

</div><!-- end content -->