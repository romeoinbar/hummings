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
      <div class="pagetitle icon-48-module"><h2>Manager: Ratings</h2></div>

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
          <div class="actionbar-list" id="actionbar">
<ul>
<li id="actionbar-trash">
<a href="#" class="actionbar"  onClick="javascript:checkItem('delete', '{$link_category}');">
<span class="icon-32-trash">
</span>
Delete
</a>
</li>

<li class="divider">
</li>

</ul>
<div class="clr"></div>
</div>    </div>
  
      <div class="clr"></div>
    </div>

    <!-- Beginning of Actual Content -->
    <div id="element-box">
      <p id="skiptargetholder"><a id="skiptarget" class="skip" tabindex="-1"></a></p>

      <!-- The main component -->
      <form name="frmAdmin" action="{$action}" method="post">
  <fieldset id="filter-bar">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><legend class="element-invisible">Filter:</legend>
    <div class="filter-search">
      <label class="filter-search-lbl" for="filter_search">Filter:</label>
      <input type="text" name="s_name" value="{$s_name|escape}"  title="Search in module title." />
      <button type="submit">Search</button>
    </div>     </td>
    <td><div>Sort by: 
<select name="sort_by" onchange="document.frmAdmin.action='{$url_list}';document.frmAdmin.submit();">
	<option value="date_desc" {if $sort_by=='date_desc'}selected="selected"{/if}>Date DESC</option>
  <option value="date_asc" {if $sort_by=='date_asc'}selected="selected"{/if}>Date ASC</option>  
  <option value="helpful" {if $sort_by=='helpful'}selected="selected"{/if}>Helpful</option>
  <option value="report_abuse" {if $sort_by=='report_abuse'}selected="selected"{/if}>Report Abuse</option>
</select>
</div></td>
  </tr>
</table>
  </fieldset>
  <div class="clr"> </div>
  <table class="adminlist" id="modules-mgr">
    <thead>
      <tr>
        <th class="checkmark-col">
          <input type="checkbox" name="checkall-toggle" value="" title="Check All" onclick="checkAll(this);"  />
        </th>
        <th class="width-20">
          <a href="#">Date</a>        </th>
        <th width="150" class="title">
          <a href="#">Product Name</a>        </th>
        <th align="left" class="title"><a href="#">Comment</a></th>
                <th class="width-5">
          <a href="#" >Vote</a>        </th>
                <th class="width-5"><a href="#">Helpful</a></th>
                <th class="width-5"><a href="#">Report Abuse</a></th>
          <th class="width-5">
          Published        </th>
      </tr>
    </thead>

    <tbody>
    {if $ratings}  
    {foreach from=$ratings item=rating}
     <tr {if $rating.row} class="row1" {else} class="row0" {/if}>
        <tr>
          <td class="center">
          <input type="checkbox" id="cid{$rating.idx}" name="cid[{$rating.rating_vote_id}]" value="{$rating.rating_vote_id}"  title="Checkbox for row 1" />        </td>
        <td class="center"><a href="{$rating.link}">{$rating.created_on}</a>
          </td>
        <td width="150" class="center">
                                
              <a href="{$rating.url_product}">{$rating.product_name}</a>
                            </td>
        <td align="left" class="center">{$rating.comment}</td>
                <td class="center">{$rating.vote}</td>
                <td class="center">{$rating.helpful}</td>
                <td class="center">{$rating.report_abuse}</td>
                <td class="center">{$rating.published}</td>
      </tr>
      {/foreach}
      {else}
      {/if}  
    </tbody>
  </table>

    

  <!--<div class="containerpg"><div class="pagination">

<div class="button2-right off"><div class="start"><span>Start</span></div></div><div class="button2-right off"><div class="prev"><span>Prev</span></div></div>
<div class="button2-left"><div class="page"><span>1</span><a href="#" title="2" onclick="document.adminForm.limitstart.value=20; Joomla.submitform();return false;">2</a><a href="#" title="3" onclick="document.adminForm.limitstart.value=40; Joomla.submitform();return false;">3</a>
</div></div><div class="button2-left"><div class="next"><a href="#" title="Next" onclick="document.adminForm.limitstart.value=20; Joomla.submitform();return false;">Next</a></div></div><div class="button2-left"><div class="end"><a href="#" title="End" onclick="document.adminForm.limitstart.value=40; Joomla.submitform();return false;">End</a></div></div>


<div class="limit">Page 1 of 3</div>



<input type="hidden" name="limitstart" value="0" />
<div class="clr"></div></div></div>-->
<div class="limit">{$paging}</div>
  <input type="hidden" value="{$total}" name="total"  />
  <input type="hidden" value="" name="task"  />
</form>


      <div class="clr"></div>
    </div><!-- end of element-box -->

    <noscript>
      Warning! JavaScript must be enabled for proper operation of the Administrator backend.    </noscript>

    <div class="clr"></div>

  </div><!-- end of content -->
  
</div>

