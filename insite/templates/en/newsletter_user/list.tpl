{literal}
<script>
function updateStatus(id)
{
	frm = document.frmAdmin;
	frm.sid.value = id;
	frm.task.value = "save";
	frm.submit();
}
function deleteUser(id)
{
    a = confirm("Do you want to delete?");
    if(a) {
        frm = document.frmAdmin;
        frm.sid.value = id;
        frm.task.value = "delete";
        frm.submit();
    }
}

</script>
{/literal}
<div id="content">

		<!-- Component Title -->
			<div class="pagetitle icon-48-cpanel"><h2>Manage PDPC Records</h2></div>

		<!-- System Messages -->
<form action="{$action1}" method="post" name="frmAdmin" id="frmAdmin">
<div id="system-message-container">
</div>
<div id="no-submenu"></div>
  
<div class="clr"></div>
<input type="hidden" name="task" value="search" />
<input type="hidden" name="sid" value="" />

<div id="element-box">

  <fieldset id="filter-bar">
    <legend class="element-invisible">Search Users</legend>
		<div class="filter-search">
          Email: <input type="text" name="s_email" value="{$s_email|escape}"  title="Search in module title." />
		<span class="faux-label")>Status:&#160;</span>
        <select name="s_subscribe" id="s_subscribe">           
   <option value="0">Choose </option>
    {html_options options=$user_status selected=$s_subscribe}
   </select>
	<span class="faux-label")>Type:&#160;</span>
        <select name="s_type" id="s_type">           
    {html_options options=$user_type selected=$s_type}
   </select>             
          <button type="submit">Search</button>
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
      <th class="title">IP</td>
      <th class="title">Date</td>
      <th class="title">Subscribe by email</td>
      <th class="title">Opt In</td>
      <th class="title">Date and Time (Opt In)</td>
      <th class="title">Action</td>
    </tr>
    </thead> 
    <tbody>  
      {foreach from=$rows item=row} 
    <tr class="row0">
      <td >{$row->id}</td>        
      <td class="center">{$row->name}</td>
      <td  class="center">{$row->email}</td>
      <td  class="center">{$row->type}</td>  
      <td  class="center">{$row->ip}</td>
      <td  class="center">{$row->date}</td>
      <td  class="center">{if $row->subscribe == 1} 1 {else} 0 {/if}</td>
      <td  class="center">{if $row->subscribe_by_phone == 1} 1 {else} 0 {/if}</td>
      <td  class="center">{$row->phone_date}</td>
      <td  class="center"><a href="{$row->link_edit}">EDIT</a> | <a href="#"  onclick="javascript:deleteUser('{$row->id}');">DELETE</a></td>
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