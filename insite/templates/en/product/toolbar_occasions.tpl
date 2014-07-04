<div class=toolbar style='margin-bottom:5px;'>

<table>
 <th>By Product Category</th>
 <th></th>
 <th>By Occasions</th>
 <th></th>
 <th>By Events</th>
 <tr>
    <td>
     <a href={$list_url}>List By Product Category</a>
   </td>

   <td width=30></td>
  <td valign=middle> 
    <form  action='{$action}' method=post>
    <div class=list></div>
      {$select_occasions}
      <input type='hidden' name='set_global' value='1'>
       <input type='checkbox' name='show_sub_categories' value='1' {$checked}>     
      <a rel="tooltip" title="show sub categories">
        <div class=tooltip_mark style='margin=left:0px;'>
        </div>
      </a>           
      <input type=submit value='by occasions'>
    </form>
   </td> 

   <td width=30></td> 
   <td>
     <a href={$list_url_event}>List By Events</a> 
   </td>
   <td width=30></td>
   <td>
<a href='{$list_url}' rel="tooltip" title="show product's haven't assign with any category"><div class=exclamation></div></a> 
<a href='{$add_url}' rel="tooltip" title="add new entry"><div class=add_entry></div></a>    
   </td>  
   </tr>
 </table>  


</div>
