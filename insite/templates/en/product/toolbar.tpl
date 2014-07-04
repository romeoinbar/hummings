<div class=toolbar style='margin-bottom:5px;'>

<table>

 <tr>
  <td valign=middle> 
    <form  action='{$action}' method=post>
    <div class=list></div>
      {$select_category}
      <input type='hidden' name='set_global' value='1'>
  
       <input type='checkbox' name='show_sub_categories' value='1' {$checked}>     
      <a rel="tooltip" title="show sub categories">
        <div class=tooltip_mark style='margin=left:0px;'>
        </div>
      </a>        
      
      &nbsp; &nbsp; &nbsp; &nbsp;
      <input type='text' name='search' value='' onClick=this.value='' > 
       <a rel="tooltip" title="search by SKU or Name">
        <div class=tooltip_mark style='margin=left:0px;'>
        </div>
      </a>                
      <input type=submit value='Show Products' name='press'>
    </form>
   </td> 
   <td width=30></td>
   <td>
<a href='{$add_url}' rel="tooltip" title="add new entry"><div class=add_entry></div></a>    
   </td>


   </td>  
   <td>
   
   </td>
   </tr>
 </table>  


</div>
