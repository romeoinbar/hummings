
<div style='padding:15px; margin:10px auto; border:1px solid #ccc; width:90%;'>
<h1>Order History</h1>
<table>
 <tr>
  <td>
   <form action={$url_list} method=post>
   <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="150">Order Status :</td>
    <td width="100" align="right">{$ts_order_status}      </td>
    <td width="100" align="right"><input type='submit' value="show" /></td>
    </tr>
</table>
   </form>  
   <form action={$url_list} method=post>
   <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="150">Search by phone number:</td>
    <td><input type='text' value='{$phone}' name='phone' ></td>
    <td width="100">&nbsp;</td>
  </tr>
  <tr>
    <td>Search by Order ID</td>
    <td><input name='orderID' type='text' id="orderID" value='{$orderID}' /></td>
    <td align="right"><input type='submit' value="search" /></td>
  </tr>
   </table>    
   </form>
  </td>
 </tr>
   
</tr> 
</table>
<!--<div id="container">
  <div id="tabs">
    <ul>
      <li><a href="#tab-1">PC site</a></li>
      <li><a href="#tab-2">Mobile site</a></li>      
    </ul>
    <div id="tab-1">
      <h3>This is a really simple tabbed interface</h3>
        </div>
    <div id="tab-2">
      <h3>Tab 2</h3>      
    </div>   
  </div>
</div>-->
{$page}
 <table border=0 width=900>
  <th align=left>Order ID</th>
  <th></th>  	
  <th align=left>Doc Type</th>
  <th></th>  	  
  <th align=left>Date</th>
  <th></th>  
  <th align=left>Name</th>
  <th></th>  
  <th align=right>Phone</th>
  <th></th>  
  <th align=left>Order Status</th>
  <th></th>  
  <th  align=right>Payment Status</th>      
  <th></th>   

