<!-- Content Area -->

<div id="content"> 
  
  <!-- Component Title -->
  <div class="pagetitle icon-48-module">
    <h2>Import: Orders</h2>
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
{literal}
<script>
 function checkFile() 
 {
	  var s = document.getElementById('file_source'); 
		if(null != s && '' == s.value) {
			alert('Define file name'); 
			s.focus(); 
			return false;
		}
		return true;
 }
</script> 
{/literal}
  
  <!-- Beginning of Actual Content -->
  <div id="element-box">
    <p id="skiptargetholder"><a id="skiptarget" class="skip" tabindex="-1"></a></p>
      <form name="frmAdmin" action="{$action}" method="post" enctype="multipart/form-data" onSubmit="return checkFile();">
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
          {if $arrMsg}
            {foreach from=$arrMsg item=item}
            <div style="color:#F00;">{$item}</div>
            {/foreach}
          {/if}
          <tr>
            <td>
              <table cellpadding="5" cellspacing="5" width="98%" border="0">
                <tr>
                  <td width="20%">Source Excel file to import:</td>
                  <td><input type="file" name="file_source" id="file_source" ></td>          
                  <td align="right"></td>
                </tr>
                <tr>
                  <td></td>
                  <td><input type="Submit" name="Go" value="Import it" class="button_class"></td>          
                  <td align="right"></td>
                </tr>
              </table>
           </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table>          
      <input type="hidden" value="{$total}" name="total"  />
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

</div>
