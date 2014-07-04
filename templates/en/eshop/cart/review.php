<div style='padding:0px;  margin-left:15px; border:1px soid #ccc; ' >

      <table width="100%" border="0"  cellspacing="0" cellpadding="10" style='background:#f7f7f7;'>
       <tr><td>   
          <table width="100%" border="0"  cellspacing="0" cellpadding="5">
            <tr class="">
              <td colspan=7><h2>DELIVERY DETAILS</h2></td>
            </tr>
             <tr class="">
              <td colspan=7><div style='border-top:3px solid #cc2076;'>&nbsp;</div></td>
            </tr>           
            <tr>
              <td valign=top style='padding-right:10px; border-right:1px solid #cc2076;'>             
              <P><strong>Name:</strong> {$obj->title} {$obj->name}</P>
              <P><strong>Company:</strong> {$obj->company}</P>             
              <P><strong>Block:</strong> {$obj->block}</P>  
              <P><strong>Unit:</strong> {$obj->unit} </P>  
              <P><strong>Building:</strong>  {$obj->building}</P>
              <P><strong>Street:</strong> {$obj->address1} {$obj->address2}</P>
              <P><strong>City:</strong> {$obj->city}</P>
              <P><strong>State:</strong> {$obj->state}</P>
              <P><strong>Postal Code:</strong> {$obj->postcode}</P>
              <P><strong>Country:</strong> {$obj->country}</P>
              <P></P>                            
              </td>
              <td >&nbsp;</td>
              <td valign=top style='padding-right:10px; border-right:1px solid #cc2076;'>
              <P><strong>E-Mail:</strong> {$obj->email}</P>
              <P><strong>Mobile Number:</strong> {$pre_telephone1}{$mid_telephone1}{$obj->telephone1}</P>
              <P><strong>Work Number:</strong> {$pre_telephone2}{$mid_telephone2}{$obj->telephone2}</P>
              <P><strong>Fax:</strong> {$pre_fax}{$mid_fax}{$obj->fax}</P>                         
              </td>
              <td >&nbsp;</td>              
              <td valign=top>
               <p><strong>Delivery Date:</strong> {$delivery_from_date} - {$delivery_to_date} </p>
               <p><strong>Delivery Time:</strong> {$dtime} </p>
               <p><strong>Delivery Instruction:</strong>  {$call_before_delivery} {$avoid_lunch}</p>
               <p><strong>Message To:</strong> {$message_receiver}  {$message_receiver2}  {$message_receiver3}</p>
               <p><strong>Message:</strong> 
                 {$message_content}<br/>
                 {$message_content2}<br/>
                 {$message_content3}<br/>
                 {$message_content4}<br/>
                 {$message_content5}<br/>
                 {$message_content6}<br/>     
               </p>
               <p><strong>Message From:</strong> {$message_sender} {$message_sender2} {$message_sender3}</p>               
              </td>
            </tr>                       
       
          </table>
 
        </td></tr>
        </table>
 


              

 
 
 
      
</div></div>
<div style='clear:both;'></div>