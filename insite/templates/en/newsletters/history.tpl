{literal} 
<script>
 function checkItem(task, action) 
 {
	 frm = document.frmAdmin;
	 total = frm.total.value;
	 check = false;
	 a = confirm('Do you want to delete?');
	 if(a) {
		 for(i = 1; i < total; i++) {
			 id = document.getElementById('cid' + i);
			 if (id.checked) {
				 check = true;
				 break;
			 }
		 }
		 
		 if (!check) {
			 alert('Please select item to delete!!!');
			 return false;
		 } 
		 frm.action = action;
		 frm.task.value = task;
		 frm.submit();
	 }
 }
 function checkAll(chkAll) 
 {
   frm = document.frmAdmin;
   total = frm.total.value;
	 if(chkAll.checked) {
		 for(i = 1; i <= total; i++) {
			 id = document.getElementById('cid' + i);
			 id.checked = true;
		 }
	 } else {
		 for(i = 1; i <= total; i++) {
			 id = document.getElementById('cid' + i);
			 id.checked = false;
		 }
		 
	 }
 }  
</script> 
{/literal} 
<!-- Content Area -->
<div id="content"> 
  
  <!-- Component Title -->
  <div class="pagetitle icon-48-module">
    <h2>Manager: Newsletter History</h2>
  </div>
  
  <!-- System Messages -->
  
  <div id="system-message-container"> {if $msg}
    <dl id="system-message">
      <dt class="message">Message</dt>
      <dd class="message message">
        <ul>
          <li>{$msg}</li>
        </ul>
      </dd>
    </dl>
    {/if} </div>
  
  <!-- Sub Menu Navigation -->
  <div class="subheader">
    <h3 class="element-invisible">Sub Menu</h3>
    <div id="no-submenu"></div>
  </div>
  
  <!-- Toolbar Icon Buttons -->
  
  <!-- Beginning of Actual Content -->
  <div id="element-box">
    <p id="skiptargetholder"><a id="skiptarget" class="skip" tabindex="-1"></a></p>
    <form name="frmAdmin" action="{$action}" method="post">
      <fieldset id="filter-bar">
        <legend class="element-invisible">Filter:</legend>
        <div class="filter-search">
          <label class="filter-search-lbl" for="filter_search">Filter:</label>
          <input type="text" name="s_name" value="{$s_name|escape}"  title="Search in module title." />
          <button type="submit">Search</button>
        </div>
      </fieldset>
      <div class="clr"> </div>
      <table class="adminlist">
        <thead>
          <tr>
            <th class="checkmark-col"> <input type="checkbox" name="checkall-toggle" value="" title="Check All" onclick="checkAll(this);" />
            </th>
            <th class="width-20"> <a href="#">Send Date</a> </th>
            <th class="width-20"> <a href="#" >Subject</a> </th>
            <th class="width-20"> <a href="#">IP</a> </th>
            <th class="width-20"> <a href="#">ID</a> </th>
          </tr>
        </thead>
        <tbody>
        
        {if $categories}  
        {foreach from=$categories item=category}
          <tr {if $category.row} class="row1" {else} class="row0" {/if}>
          <td class="center"><input type="checkbox" id="cid{$category.idx}" name="cid[{$category.id}]" value="{$category.id}" title="Checkbox for row 1" /></td>
          <td class="center">{$category.date}</td>
          <td class="center">{$category.action}</td>
          <td class="center">{$category.ip}</td>
          <td class="center">{$category.id}</td>
        </tr>
        {/foreach}
        {else}
        {/if}
          </tbody>
        
      </table>
      <div class="limit">{$paging}</div>
      <input type="hidden" value="{$total}" name="total"  />
      <input type="hidden" value="" name="task"  />
    </form>
    <div class="clr"></div>
  </div>
  <!-- end of element-box -->
  
  <noscript>
  Warning! JavaScript must be enabled for proper operation of the Administrator backend.
  </noscript>
  <div class="clr"></div>
</div>
<!-- end of content --> 
