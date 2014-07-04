<?php


$user = new User();

       
/////////////////////////////////////////////////////////////////////

$main_content .= "
<div style='padding-top:15px;'>
<h1>Order History</h1>
<br/>
";

    $main_content .= "<table border=0>
  <th align=left>Order ID</th>
  <th></th>  	
  <th align=left>Name</th>
  <th></th>  
  <th align=left>To</th>
  <th></th>  
  <th align=right>Date</th>
  <th></th>  
  <th align=left>Qty</th>
  <th></th>  
  <th  align=right>Total rate</th>      
  <th></th>         
  ";
  

      $query = "SELECT * FROM #__order ORDER BY order_date DESC ";
      $php5DB_en->setQuery( $query );  
      $ds = $php5DB_en->loadAssocList();
	  
			   
	  foreach ( $ds as $d)
	  {	  	  

        
	           
		$detail_link  = sefBuild($php5WebPath, 'index.php?o=eshop&m=orders&task=detail&id=' . $d['order_id'] , 1); 
		$display_id = sprintf("%06s",$d['order_id'] );
		
        $main_content .= "
   	    <tr>
	      <td><a href='$detail_link'>$display_id</a></td>
		  <td></td>		
	      <td>$to</td>
		  <td></td>
	      <td>$name</td>
		  <td></td>		  
	      <td align=right width=90 align=right>". price_tag($rate)."</td>
	      <td width=40></td>
	      <td align=center>$qty</td>
		  <td></td>		  
	      <td  width=90 align=right>". price_tag($total_rate)."</td>
	      <td></td> 			  		    
	   </tr>
	"; 			   	   


	  }
	  

  

  

    $main_content .= "
	   	   	   
	   <tr>
	     <td colspan=13> &nbsp; </td>
	   </tr>

  </table>
	";

	  
$main_content .= "
<input type=button value=' Back ' onClick=history.back(-1);  class=button >

</div>";


?>