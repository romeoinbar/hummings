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
</script> 
{/literal}
	<!-- Content Area -->
	<div id="content">

		<!-- Component Title -->
			<div class="pagetitle icon-48-module"><h2>Manager: Ratings</h2></div>

		<!-- System Messages -->
		
<div id="system-message-container">
</div>

		<!-- Sub Menu Navigation -->
		<div class="subheader">
							<h3 class="element-invisible">Sub Menu</h3>
						<div id="no-submenu"></div>
		
			 					</div>

		<!-- Toolbar Icon Buttons -->
		<div class="toolbar-box">
					<div class="module">
					<h3>Toolbar</h3>
					<div class="toolbar-list" id="toolbar">
<ul>
<li class="button" id="toolbar-popup-new">
<a class="modal" href="http://localhost:8080/Joomla_2.5.4/administrator/index.php?option=com_modules&amp;view=select&amp;tmpl=component">
<span class="icon-32-new">
</span>
New
</a>
</li>

<li class="button" id="toolbar-trash">
<a href="#" class="toolbar"  onClick="javascript:checkItem('delete', '{$link_category}');">
<span class="icon-32-trash">
</span>
Delete
</a>
</li>

<li class="divider">
</li>

</ul>
<div class="clr"></div>
</div>		</div>
	
			<div class="clr"></div>
		</div>

		<!-- Beginning of Actual Content -->
		<div id="element-box">
			<p id="skiptargetholder"><a id="skiptarget" class="skip" tabindex="-1"></a></p>

			<!-- The main component -->
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

	<table class="adminlist" id="modules-mgr">
		<thead>
			<tr>
				<th class="checkmark-col">
					<input type="checkbox" name="checkall-toggle" value="" title="Check All" onclick="Joomla.checkAll(this)" />
				</th>
				<th class="title">
					<a href="#">Product Name</a>				</th>
                <th class="width-5">
					<a href="#" >Rates</a>				</th>
				<th class="width-20">
					<a href="#">Rating Count</a>				</th>
        <th class="width-20">
					<a href="#">Rating</a>				</th>
			</tr>
		</thead>

		<tbody>
      {if $ratings}  
      {foreach from=$ratings item=rating}
					<tr class="row0">
				<td class="center">
					<input type="checkbox" id="cb0" name="cid[]" value="27" onclick="Joomla.isChecked(this.checked);" title="Checkbox for row 1" />				</td>
				<td>
																<a href="/Joomla_2.5.4/administrator/index.php?option=com_modules&amp;task=module.edit&amp;id=27">
							{$rating.product_id}</a>
														</td>
                <td class="center">{$rating.rates}</td>
				<td class="center">{$rating.ratingcount}
									</td>
                <td class="order">{$rating.rating}
									</td>
			</tr>
      {/foreach}
      {else}
      {/if}  
  	</tbody>
	</table>

		

	<div class="containerpg"><div class="pagination">

<div class="button2-right off"><div class="start"><span>Start</span></div></div><div class="button2-right off"><div class="prev"><span>Prev</span></div></div>
<div class="button2-left"><div class="page"><span>1</span><a href="#" title="2" onclick="document.adminForm.limitstart.value=20; Joomla.submitform();return false;">2</a><a href="#" title="3" onclick="document.adminForm.limitstart.value=40; Joomla.submitform();return false;">3</a>
</div></div><div class="button2-left"><div class="next"><a href="#" title="Next" onclick="document.adminForm.limitstart.value=20; Joomla.submitform();return false;">Next</a></div></div><div class="button2-left"><div class="end"><a href="#" title="End" onclick="document.adminForm.limitstart.value=40; Joomla.submitform();return false;">End</a></div></div>
<div class="limit">Page 1 of 3</div>
<input type="hidden" name="limitstart" value="0" />
<div class="clr"></div></div></div>
  <input type="hidden" value="{$total}" name="total"  />
  <input type="hidden" value="" name="task"  />
</form>


			<div class="clr"></div>
		</div><!-- end of element-box -->

		<noscript>
			Warning! JavaScript must be enabled for proper operation of the Administrator backend.		</noscript>

		<div class="clr"></div>

	</div><!-- end of content -->
  
</div>

