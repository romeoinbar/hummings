<div style='float:left; width=500px; '>
<div style='margin-left:20px; '>
<table  >
<tr>
  <td width="260" valign=top>
   <p><b>Name</b> : </b> {$userBill->title} {$userBill->name} </p>
   <p><b>Company : </b> {$userBill->company} </p>   
   <p><b>Block / Unit : </b> {$userBill->block} {$userBill->unit}</p> 
   <p><b>Building : </b> {$userBill->building} </p>   
   <p><b>Street : </b> {$userBill->street} </p>      
   <p><b>Postal Code : </b> {$userBill->postcode} </p>   
   <p><b>City : </b> {$userBill->city} </p>      
   <p><b>State : </b> {$userBill->state} </p>   
   <p><b>Country : </b> {$userBill->country} </p> 
                     
  </td>
  <td width=16></td>
  <td width="" valign=top>
   <p><b>Email: </b> {$userBill->email} </p>   
   <p><b>Mobile Number : </b>{$userBill->pre_telephone1} {$userBill->mid_telephone1} {$userBill->telephone1} </p>      
   <p><b>Work Number : </b> {$userBill->pre_telephone2} {$userBill->mid_telephone2} {$userBill->telephone2} </p>   
   <p><b>Fax Number : </b> {$userBill->pre_fax} {$userBill->mid_fax} {$userBill->fax} </p>
        
  </td>
</tr>
</table>
</div>
</div>
