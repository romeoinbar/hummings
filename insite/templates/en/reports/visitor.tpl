<div id="content">
  <div class="pagetitle icon-48-menu">
  <h2>Visitor report</h2></div>
  <div>
  <table width="100%" border="0" cellspacing="0" cellpadding="5">
  <form action="" method="post" name="frmFilter">
  <tr>
    <td width="80">From:</td>
    <td width="300"><input type="text" name="start_date" maxlength="10" value="{$start_date|escape}" class="textinput1" style="width:100px" />
  &nbsp;<img src="{$php5WebPath}/images/cal.gif"  onclick="cal.select(document.forms['frmFilter'].start_date,'anchor1','MM/dd/yyyy'); return false;" name="anchor1" id="anchor1" align="absmiddle" /> &nbsp;&nbsp;&nbsp;&nbsp;To
  <input type="text" name="end_date" maxlength="10" value="{$end_date|escape}" class="textinput1" style="width:100px" />
  &nbsp;<img src="{$php5WebPath}/images/cal.gif" onclick="cal.select(document.forms['frmFilter'].end_date,'anchor2','MM/dd/yyyy'); return false;" name="anchor2" id="anchor2" align="absmiddle" /></td>
    <td><input type='submit' id="btn_add" value='Search' class="button"/></td>
  </tr>
  <tr>
    <td height="50" colspan="2"><input type="button" name="button" id="button" value="DOWNLOAD TO CSV" class="button_class" onclick="window.location.href='{$link_export}'"  /></td>
    <td height="50">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3">{$display_chart}</td>    
  </tr>
  </form>
</table>
  </div>
</div>


