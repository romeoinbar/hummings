<a href='javascript:history.back(-1);'><div class=close>x</div></a><div style='clear:both;'></div>

<table width=400>
<th>Postcode from</th>
<th>Postcode to</th>
<th>Additional charge</th>
<ul>
{foreach from=$objs item=obj}
  <tr>
    <td>{$obj->postcode_from}</td>
    <td>{$obj->postcode_to}</td>    
  </tr>
{/foreach}
</ul>




</table>
