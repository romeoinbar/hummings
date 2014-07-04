<tr>
  <td>{$row.coupon_code}</td>

  <td>{$row.value}</td>
  <td>{$obj->show_type()}</td>  
  <td>{$obj->show_use()}</td>    
  <td>{$row.issue_date}</td>
  <td>{$row.redemption_date}</td>
  <td><a href='{$php5WebPath}/admin/user/main/edit/{$obj->redeem_by}'>{$obj->show_redeem_by()}</a></td>
  <td>
  {foreach from=$orders item=order}
    <a href='{$php5WebPath}/admin/orders/main/detail/{$order}/'>{$order}</a>
   {/foreach}

  
  
  </td>  
  <td><a href='{$edit_button}'>EDIT</a></td>    
  <td><a href='{$delete_button}'>DELETE</a></td>     
</tr>    
