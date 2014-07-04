<table width=400>
<th>from time</th>
<th>to time</th>
<th>surchage</th>
<th>lead time</th>

{foreach from=$rows item=row}
<tr>
  <td>{$row.from_time}</td>
  <td>{$row.to_time}</td>
  <td>{$row.surchage}</td>
  <td>{$row.lead_time}</td>    
  <td><a href='index.php?o=delivery&t=insite&task=edit&id={$row.delivery_time_id}'>EDIT</a></td>    
  <td><a href='index.php?o=delivery&t=insite&task=delete&id={$row.delivery_time_id}'>DELETE</a></td>     
</tr>    
{/foreach}

</table>
