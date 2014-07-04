<tr>
    
  <td><input type='hidden' name='id{$i}' value={$row.message_id}> {$prefix}{$row.message}</td>
  <td><input type=text value='{$row.sorting}' size=4  maxlength=4 class='required number' name='sorting{$i}'></td>  
  <td><a href='{$edit_link}'>EDIT</a></td>    
  <td><a href='{$delete_link}'>DELETE</a></td>     
</tr>    
