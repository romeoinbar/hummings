<tr>
  <td>{$row.occasions_id}<input type='hidden' name='id{$i}' value={$row.occasions_id}></td>
  <td>{$prefix}{$row.name}</td>
  <td>{$row.publish}</td>
  <td><input type=text value='{$row.sorting}' size=4  maxlength=4 class='required number' name='sorting{$i}'></td>  
  <td><a href='{$edit_button}'>EDIT</a></td>    
  <td><a href='{$delete_button}'>DELETE</a></td>     
</tr>    
