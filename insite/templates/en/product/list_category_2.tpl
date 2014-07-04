<tr>
  <td>{$category}</td>
  <td>{$row->show_product_type($row->product_type)}</td>    
  <td>{$row->sku} ({$row->product_id})</td>
  <td>{$prefix}{$row->name}</td>

  <td>{$row->price}{$discount_price}</td>  
  <td>{$select_publish}</td>  
  <td>{$select_availability}</td>       
  <td><input type='hidden' name='id{$i}' value={$id_value}>
      <input type='hidden' name='pid{$i}' value={$pid_value}>
      <input type=text value='{$sorting_value}' size=4  maxlength=4 class='required number' name='sorting{$i}'>
  </td>  

       
  <td><a href='{$edit_link}'>EDIT</a></td>    
  <td><a href='{$delete_link}'>DELETE</a></td>     
</tr>    
