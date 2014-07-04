<div id="content">
  <div class="pagetitle icon-48-menu">
    <h2>Campaign: [Add products]</h2></div>
<a href='{$link_return}'><div class=close> </div></a><div style='clear:both;'></div>
<form action="{$action}" method="post" id="vForm" class="cmxform" enctype='multipart/form-data'>
<input type="hidden" name="id" value="{$campaign->campaign_id}" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="35%" valign="top">
    <h3>Campaign</h3>
    <table class="adminlist" style="margin-top:15px;">
      <tr class="row0">
        <td width="150" height="25"><strong>Campaign ID:</strong></td>
        <td height="25">#{$campaign->campaign_id}</td>
      </tr>
      <tr class="row0">
        <td width="150" height="25"><strong>Campaign name:</strong></td>
        <td height="25">{$campaign->campaign_name}</td>
      </tr>
      <tr class="row0">
        <td height="25" colspan="2"><strong>Started date:</strong> {$campaign->started_date} &nbsp;&nbsp;&nbsp;&nbsp;<strong>Finished date:</strong> {$campaign->finished_date}</td>
      </tr>
      <tr class="row0">
        <td width="150" height="25"><strong>Subject:</strong></td>
        <td height="25">{$campaign->subject}</td>
      </tr>
      <tr class="row0">
        <td width="150" height="25"><strong>Content:</strong></td>
        <td height="25">{$campaign->content}</td>
      </tr>
      <tr class="row0">
        <td width="150" height="25"><strong>Publish:</strong></td>
        <td height="25"> {if $campaign->publish==1}
          Yes
          {else} <span style="color:#999;">No</span> {/if}</td>
      </tr>
    </table></td>
    <td width="10" valign="top">&nbsp;</td>
    <td valign="top"><h3>Product list</h3>
    <div style="height:400px; overflow:auto; margin-top:15px; margin-bottom:15px;">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="adminlist">
  <tr>
    <td width="40" align="center">&nbsp;</td>
    <td width="60"><strong>SKU</strong></td>
    <td><strong>Product name</strong></td>
    <td width="70"><strong>Price</strong></td>
    <td width="80"><strong>Discount</strong></td>
  </tr>
  {foreach from=$pros item=pro}
  <tr class="{$pro->style}">
    <td width="40" align="center"><input name="product[]" type="checkbox" id="product[]" value="{$pro->product_id}" {$pro->checked}/></td>
    <td width="60">{$pro->sku}</td>
    <td>{$pro->name}</td>
    <td width="70">{$pro->price}</td>
    <td width="80"><input name="discount{$pro->product_id}" type="text" id="discount{$pro->product_id}" size="10" value="{$pro->discount}" /></td>
  </tr>
  {/foreach}
</table>
    </div>
    <span class="forms">
    <input type='button' value='Save list' id="btn_submit" />
    </span></td>
  </tr>
</table>
</form>
</div>
{literal}
<script language="javascript">
$(document).ready(function() {
	$('input#btn_submit').click(function() {	
		alert("Add products successfully!");	
		$("form#vForm").submit();		
	});
});
</script>
{/literal}

