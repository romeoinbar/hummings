

        <form action='{$url_change_status}' method=post>
   	    <tr>
	      <td><a href='{$detail_link}'>{$display_id}</a></td>
		  <td></td>		
	      <td>{$sales_doc_type}</td>
		  <td></td>		          
	      <td>{$order_date}</td>
		  <td></td>
	      <td>{$name}</td>
		  <td></td>		  
	      <td align=right width=90>{$telephone1}</td>
	      <td width=40></td>
 	      <td align=center>{$s_order_status}</td>
		  <td></td>		  
	      <td  align=right>{$s_payment_status} 
          <select name="payment_terms">
          <option value="PF">PayPal Fail</option>
          <option value="PP">PayPal Success</option>
          <option value="IC">Enets Internet Charged</option>
          <option value="CC">Enets Payment Fail</option>
          </select></td>
	      <td></td> 			
	      <td   align=right><input type=submit value='Change Status'></td>            
	      <td></td> 	         
          <td><a href={$url_delete} onClick="return confirm('Confirm delete this order?')" >Delete</a></td>                             		    
	   </tr>
         </form>      
