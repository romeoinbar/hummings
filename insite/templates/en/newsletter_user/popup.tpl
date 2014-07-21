<div class="header">Choose a country</div>   
<div style="height:330px; overflow:auto;">  
<table width="100%" border="0" cellspacing="0" cellpadding="5" class="table_list">
  <tr>
    <td width="50" class="row_top_title">ID</td>
    <td class="row_top_title">Country name</td>
  </tr>
  {foreach from=$countries key=k item=v}
  <tr>
    <td width="50" class="row_item">{$k}</td>
    <td class="row_item"><a href="#" onClick="javascript:chooseCountry({$k}, '{$v}');">{$v}</a></td>
  </tr>
  {/foreach}
</table>
</div>
