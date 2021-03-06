{literal}
<script>
 function checkItem(task, action) 
 {
   frm = document.frmAdmin;
   total = frm.total.value;
   check = false;
   a = confirm('Do you want to delete?');
   if(a) {
     for(i = 1; i <= total; i++) {
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
<style>
form {
	margin: 0;
	padding: 0;
}
</style>
{/literal} 
<!-- Content Area -->
<div id="content"> 
  
  <!-- Component Title -->
  <div class="pagetitle icon-48-module">
    <h2>Manager: USER GROUP</h2>
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
  <div class="actionbar-box">
    <div class="module">
      <h3>Toolbar</h3>
      <div class="actionbar-list">
        <ul>
        	<li id="actionbar-popup-new">
            <a class="modal" href="#" onClick="window.location.href='{$link_import}'" >
            <span class="icon-32-new">
            </span>
            Import
            </a>
          </li>
          <li id="actionbar-popup-new">
            <a class="modal" href="#" onClick="window.location.href='{$link_export}'" >
            <span class="icon-32-new">
            </span>
            Export
            </a>
          </li>          
          <li id="actionbar-popup-new">
          <a class="modal" href="#" onClick="window.location.href='{$link_create}'" >
          <span class="icon-32-new">
          </span>
          New
          </a>
          </li>
          <li id="actionbar-trash"> <a href="#" class="actionbar"  onClick="javascript:checkItem('delete', '{$link_category}');"> <span class="icon-32-trash"> </span> Delete </a> </li>
          <li class="divider"> </li>
        </ul>
        <div class="clr"></div>
      </div>
    </div>
    <div class="clr"></div>
  </div>
  
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
            <th class="checkmark-col"> <!--<input type="checkbox" name="checkall-toggle" value="" title="Check All"  onclick="checkAll(this);"  />-->
            </th>
            <th class="width-20"> <a href="#">ID</a> </th>
            <th class="width-60"> <a href="#" >Name</a> </th>
            <th class="width-20"> <a href="#" >Total</a> </th>
          </tr>
        </thead>
        <tbody>
        
        {if $categories}  
        {foreach from=$categories item=category}
          <tr {if $category.row} class="row1" {else} class="row0" {/if}>
        
        
          <td class="center"><input type="checkbox" id="cid{$category.idx}" name="cid[{$category.id}]" value="{$category.id}" title="Checkbox for row 1" /></td>
          <td class="center">{$category.id}</td>
          <td class="center"><a href="{$category.link}">{$category.name}</a></td>
          <td class="center">{$category.total}</td>
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
