{literal} 
<script>
 function checkItem(task, action) 
 {
	 frm = document.frmFilter;
	 frm.action = action;
	 frm.task.value = task;
	 frm.submit();	 
 }

</script> 
{/literal} 
<!-- Content Area -->

<div id="content"> 
  
  <!-- Component Title -->
  <div class="pagetitle icon-48-module">
    <h2>Export: Orders</h2>
  </div>
  
  <!-- System Messages -->
  
<div id="system-message-container">
{if $msg}
<dl id="system-message">
<dt class="message">Message</dt>
<dd class="message message">
	<ul>
		<li>{$msg}</li>
	</ul>
</dd>
</dl>
{/if}
</div>

  
  <!-- Sub Menu Navigation -->
  <div class="subheader">
    <h3 class="element-invisible">Sub Menu</h3>
    <div id="no-submenu"></div>
  </div>
  <!-- Beginning of Actual Content -->
  <div id="element-box">
    <p id="skiptargetholder"><a id="skiptarget" class="skip" tabindex="-1"></a></p>
    <table width="100%" border="0" cellspacing="0" cellpadding="5">
      <form action="" method="post" name="frmFilter">
      <tr>
        <td width="80">From:</td>
        <td width="300"><input type="text" name="start_date" maxlength="10" value="{$start_date|escape}" class="textinput1" style="width:100px" />
      &nbsp;<img src="{$php5WebPath}/images/cal.gif"  onclick="cal.select(document.forms['frmFilter'].start_date,'anchor1','MM/dd/yyyy'); return false;" name="anchor1" id="anchor1" align="absmiddle" /> &nbsp;&nbsp;&nbsp;&nbsp;To
      <input type="text" name="end_date" maxlength="10" value="{$end_date|escape}" class="textinput1" style="width:100px" />
      &nbsp;<img src="{$php5WebPath}/images/cal.gif" onclick="cal.select(document.forms['frmFilter'].end_date,'anchor2','MM/dd/yyyy'); return false;" name="anchor2" id="anchor2" align="absmiddle" /></td>
        <td><input type='submit' id="btn_add" value='Search'></td>
      </tr>
      <tr>
        <td height="50" colspan="2"><input type="button" name="button" id="button" value="DOWNLOAD TO EXCEL" class="button_class" onclick="javascript:checkItem('export','');" /></td>
        <td height="50">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="3">{$display_chart}</td>    
      </tr>
      <input type="hidden" value="search" name="task" />
      </form>
    </table>     
    <div class="clr"></div>
  </div>
  <!-- end of element-box -->
  
  <noscript>
  Warning! JavaScript must be enabled for proper operation of the Administrator backend.
  </noscript>
  <div class="clr"></div>
</div>
<!-- end of content -->

</div>
