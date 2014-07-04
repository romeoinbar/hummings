<tr >
  <td valign=top style='padding-bottom:10px;'>{$row->show_categories($row->product_id)}</td>
  <td valign=top>{$row->show_product_type($row->product_type)}</td>    
  <td valign=top> {$row->sku} ({$row->product_id})</td>
  <td valign=top>{$prefix}{$row->name}</td>

  <td valign=top>{$row->price}{$discount_price}</td>  
  <td valign=top>{$select_publish}</td>  
  <td valign=top>{$select_availability}</td>           
  <td valign=top><a href='{$edit_link}'>EDIT</a></td>    
  <td valign=top><a href='{$delete_link}'>DELETE</a></td>     
</tr>    
