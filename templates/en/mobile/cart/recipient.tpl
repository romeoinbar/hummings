{literal}
<script type="text/javascript">	
$.metadata.setType("attr", "validate");
$(document).ready(function() {
	$("#vForm").validate();
});
</script>
<style type="text/css">
.block { display: block; }
form.cmxform label.error { display: none; }	
.hiddenCountry  { display: none; }	
</style>
{/literal}
<div style="margin-left:10px; margin-top:10px;"><a href="#" onclick="history.go(-1);" class="back_link">BACK</a></div>
<div align="center" style="margin-left:15px; margin-right:15px;">
	<div class="step1_hover">01 Recipient details</div>
    <div class="step2">02 Delivery details</div>
    <div class="step2">03 Billing details</div>
    <div class="step2">04 Review & pay</div>
    <div class="step2">05 Receipt</div>
</div>
<div class="clr"></div>
<div class="line"></div>
<div style="margin-left:10px; margin-right:10px;">
<table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <td width="90" class="header_cart">PRODUCT</td>
    <td class="header_cart">DESCRIPTION</td>
    <td width="40" align="center" class="header_cart">QTY</td>
    <td width="80" align="center" class="header_cart">PRICE</td>
  </tr>
  {foreach from=$items item=row}
  <tr>
    <td width="90" class="item_cart"><a href="{$row->url_detail}">{$row->image}</a></td>
    <td  class="item_cart"><div style="font-size:11px; font-weight:bold;color:#b9066e;">{$row->name}</div>
    <div style="font-size:12px;">{$row->sku}</div></td>
    <td width="40" align="center"  class="item_cart">{$row->form}</td>
    <td width="80" align="center"  class="item_cart" style="color:#b9066e; font-size:14px;"><strong>{$row->price}</strong></td>
  </tr>
  {foreach from=$row->addon item=addon}
  <tr>
    <td width="90" class="item_cart"><a href="{$row->url_detail}">{$addon->image}</a></td>
    <td  class="item_cart"><div style="font-size:11px; font-weight:bold;color:#b9066e;">{$addon->name}</div></td>
    <td width="40" align="center"  class="item_cart">{$addon->qty}</td>
    <td width="80" align="center"  class="item_cart" style="color:#b9066e; font-size:14px;"><strong>{$addon->price}</strong></td>
  </tr>
  {/foreach}
  {/foreach}
</table>
<form action='{$url_delivery}' method=post id='vForm' class='cmxform' >
<div style="font-size:14px; color:#b9066e; margin-bottom:10px; margin-top:10px;"><strong>Recipient Details</strong></div>
    <div style="margin-bottom:5px; font-size:12px;">Title:<span style="color:#F00;">*</span></div>
    <div  style="margin-bottom:5px;">{$title}</div>
    <div style="margin-bottom:5px; font-size:12px;">Surname:</div>
    <div style="margin-bottom:5px;"><input id="surname{$i}"  name="surname{$i}" type="text" value="{$obj->surname}" class="textinput" /></div>
    <div style="margin-bottom:5px; font-size:12px;">Name:</div>
    <div style="margin-bottom:5px;"><input  id="name{$i}"  name="name{$i}" type="text" class="required" value="{$obj->name}"/></div>
    <div style="margin-bottom:5px; font-size:12px;">E-Mail:<span style="color:#F00;">*</span></div>
    <div style="margin-bottom:5px;"> <input name="email{$i}" type="text" class="required email" value="{$obj->email}"/></div>
    <div style="margin-bottom:5px; font-size:12px;">Mobile Number:<span style="color:#F00;">*</span></div>
    <div style="margin-bottom:5px;"><input id="telephone1{$i}" name="telephone1{$i}" type="text" class="required digits" value="{$obj->telephone1}" placeholder="" /></div>
    <div style="margin-bottom:5px; font-size:12px;">Work Number: (optional)</div>
    <div style="margin-bottom:5px;"><input id="telephone2{$i}"  name="telephone2{$i}"  value="{$obj->telephone2}" class="textinput" placeholder=""  /></div>
    <div style="margin-bottom:5px; font-size:12px;">Fax Number: (optional)</div>
    <div style="margin-bottom:5px;"><input id="fax{$i}" name="fax{$i}"  class="textinput"  value="{$obj->fax}" placeholder=""  /></div>
    <div style="margin-bottom:5px; font-size:12px;">Company:</div>
    <div style="margin-bottom:5px;"><input id="company{$i}"   name="company{$i}" type="text" class="textinput"  value="{$obj->company}"/></div>
    <div style="margin-bottom:5px; font-size:12px;">Block / Unit:</div>
    <div style="margin-bottom:5px;"><div style="width:30%; float:left;"><input  id="block{$i}"  name="block{$i}" type="text" class="textinput" value="{$obj->block}"/></div><div style="float:right; width:69%;"><input id="unit{$i}"   name="unit{$i}" type="text" class="textinput" value="{$obj->unit}"/></div></div>
    <div style="clear:both; margin-bottom:5px;"></div>
    <div style="margin-bottom:5px; font-size:12px;">Building:</div>
    <div style="margin-bottom:5px;"><input  id="building{$i}"   name="building{$i}" type="text" class="textinput"  value="{$obj->building}"/></div>
    <div style="margin-bottom:5px; font-size:12px;">Street:<span style="color:#F00;">*</span></div>
    <div style="margin-bottom:5px;"><input id="address1{$i}"   name="address1{$i}" type="text" class="textinput required" value="{$obj->address1}"/></div>
    <div style="margin-bottom:5px; font-size:12px;">Postal Code:<span style="color:#F00;">*</span></div>
    <div style="margin-bottom:5px;"><input id="postcode{$i}"  name="postcode{$i}" type="text" class="required digits" maxlength=6 value="{$obj->postcode}"/></div>
    <div style="margin-bottom:5px; font-size:12px;">City / State:</div>
    <div style="margin-bottom:5px;">
    <div style="width:50%; float:left;"><input id="city{$i}"  name="city{$i}" type="text" class="textinput"  value="" readonly="readonly" /></div>
                        <div style="width:49%; float:right;"><input id="state{$i}"  name="state{$i}" type="text" value="" readonly="readonly" class="textinput" /></div></div>
                        <div style="clear:both; margin-bottom:5px;"></div>
    <div style="margin-bottom:5px; font-size:12px;">Country<span style="color:#F00;">*</span></div>
    <div style="margin-bottom:5px;"><input  type="text" value="Singapore" name="country{$i}"  class="textinput" /><span class="hiddenCountry">{$country}</span></div>
    <div style="margin-bottom:5px; font-size:12px;"><input type="checkbox" value="1" name="remember_address"  {$remember_checked} align="bottom"> Use this address for all gift deliveries</div>
    <div align="right"><input type="image" src="{$php5WebPath}/images/btn_continue.gif" style="border:none;" /></div>
</form>
</div>


