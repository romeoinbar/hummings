<table width=1000  cellspacing=0  border=1>
<tr class={$class}>
  <td  width=50 align=left>{$row.product_category_id}<input type='hidden' name='id{$i}' value={$row.product_category_id}></td>
  <td  width=250 align=left>{$prefix}{$row.name}</td>
  <td  width=50 align=left>{$row.code}</td> 
  <td  width=150 align=left>{$obj->show_type($row.category_type)}</td>     
  <td  width=100 align=left>{$select_publish}</td>
  <td  width=100><input type=text value='{$row.sorting}' size=4  maxlength=4 class='required number' name='sorting{$i}'></td>  
  <td width=150><a href='{$remove_link}'>REMOVE PRODUCTS</a></td>    
  <td><a href='{$edit_link}'>EDIT</a></td>    
  <td><a href='{$delete_link}'>DELETE</a></td>     
</tr>    
</table>