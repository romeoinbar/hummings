<div id="content">

		<!-- Component Title -->
			<div class="pagetitle icon-48-cpanel"><h2>Manager PDPC Records</h2></div>

		<!-- System Messages -->
		
<div id="system-message-container">
</div>
<div id="no-submenu"></div>
<div class="clr"></div>

<div id="element-box">


  <form action="{$action}" method="post" name="frm" id="frm">
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
      <th class="title">Status</td>
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
      <td  class="center">{$row->user_status}</td>
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