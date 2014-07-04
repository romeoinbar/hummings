{literal}
<style>
	body, html {
		padding:0px;
		margin:0px;
		font-family:Arial, Helvetica, sans-serif;
		font-size:13pt;
		color:#414141;
	}
</style>
{/literal}
<html>
	<body>
{foreach from=$rows_order item=row_order}
<table width="696" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="33px" height="10px">&nbsp;</td>
    <td>&nbsp;</td>
    <td width="33px">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Dear {$row_order->name},</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><img src="{$php5WebPath}/images/email/top.jpg" ></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td style="font-family:Arial, Helvetica, sans-serif;font-size:16pt;color:#c10263"><b>Order Reference Number:  {$row_order->order_id}</b></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Kindly see below for information on your order:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>
    	<table width="100%" border="0" cellpadding="0" cellspacing="0">
      	<tr>
        	<td>
          	<table width="100%" border="0" cellpadding="0" cellspacing="0">
            {foreach from=$rows_item item=row_item}
            	<tr>
              	<td style="font-family:Arial, Helvetica, sans-serif;font-size:15pt;color:#c414141;background-color:#e4e4e5"><b>Order Information</b></td>
                <td>&nbsp;</td>
                <td style="font-family:Arial, Helvetica, sans-serif;font-size:15pt;color:#c414141;background-color:#e4e4e5"><b>Total Payable</b></td>
              </tr>
            	<tr>
              	<td>
                	<table width="100%" border="0" cellpadding="0" cellspacing="0">
                  	<tr>
                    	<td><span style="width:80px;height:100px"><img src="{$php5WebPath}/{$row_item->image}" width="80px" height="100px" /></span></td>
                      <td>
                      	<table width="100%" border="0" cellpadding="0" cellspacing="0">
                        	<tr>
                          	<td>Item Name</td>
                            <td>: {$row_item->item_name}</td>
                          </tr>
                        	<tr>
                          	<td>Qty</td>
                            <td>: {$row_item->qty}</td>
                          </tr>
                        	<tr>
                          	<td>Rate</td>
                            <td>: 0</td>
                          </tr>
                        	<tr>
                          	<td>Total Rate</td>
                            <td>: 0</td>
                          </tr>
                        	<tr>
                          	<td>Delivery Charge</td>
                            <td>: {$row_item->other_surcharge_amount}</td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                  </table>
                </td>
                <td>&nbsp;</td>
              	<td>
                	<table width="100%" border="0" cellpadding="0" cellspacing="0">
                  	<tr>
                      <td>
                      	<table width="100%" border="0" cellpadding="0" cellspacing="0">
                        	<tr>
                          	<td>Total price</td>
                            <td>: {$row_item->total}</td>
                          </tr>
                        	<tr>
                          	<td>Delivery</td>
                            <td>: </td>
                          </tr>
                        	<tr>
                          	<td>GST</td>
                            <td>: {$row_item->gst}</td>
                          </tr>
                        	<tr>
                          	<td>Total Payable</td>
                            <td>: 0</td>
                          </tr>
                        </table>
                      </td>
                      <td></td>
                    </tr>
                  </table>
                </td>
              </tr>
              {/foreach}
              {foreach from=$rows_delivery item=row_delivery}
            	<tr>
              	<td style="font-family:Arial, Helvetica, sans-serif;font-size:15pt;color:#c414141;background-color:#e4e4e5"><b>Delivery Information</b></td>
                <td>&nbsp;</td>
                <td style="font-family:Arial, Helvetica, sans-serif;font-size:15pt;color:#c414141;background-color:#e4e4e5"><b>Billing Information</b></td>
              </tr>
            	<tr>
              	<td>
                	<table width="100%" border="0" cellpadding="0" cellspacing="0">
                  	<tr>
                      <td>
                      	<table width="100%" border="0" cellpadding="0" cellspacing="0">
                        	<tr>
                          	<td>Name</td>
                            <td>: {$row_delivery->shipto_name}</td>
                          </tr>
                        	<tr>
                          	<td>Address</td>
                            <td>: {$row_delivery->shipto_address1}</td>
                          </tr>
                        	<tr>
                          	<td>Contact Number</td>
                            <td>: {$row_delivery->shipto_telephone1}</td>
                          </tr>
                        	<tr>
                          	<td>Delivery Date</td>
                            <td>: {$row_delivery->from_date}-{$row_delivery->to_date}</td>
                          </tr>
                        	<tr>
                          	<td>Delivery Time</td>
                            <td>: {$row_delivery->delivery_time}</td>
                          </tr>
                        	<tr>
                          	<td>Message</td>
                            <td>: {$row_delivery->message}</td>
                          </tr>
                        	<tr>
                          	<td>To</td>
                            <td>: {$row_delivery->to_message}</td>
                          </tr>                          
                        	<tr>
                          	<td>From</td>
                            <td>: {$row_delivery->from_message}</td>
                          </tr>                          
                         </table>
                      </td>
                    </tr>
                  </table>
                </td>
                <td>&nbsp;</td>
              	<td>
                	<table width="100%" border="0" cellpadding="0" cellspacing="0">
                  	<tr>
                      <td>
                      	<table width="100%" border="0" cellpadding="0" cellspacing="0">
                        	<tr>
                          	<td>Name</td>
                            <td>: {$row_order->name}</td>
                          </tr>
                        	<tr>
                          	<td>Email</td>
                            <td>: {$row_order->email}</td>
                          </tr>
                        	<tr>
                          	<td>Contact number</td>
                            <td>: {$row_order->contact_telephone1}</td>
                          </tr>
                        	<tr>
                          	<td>Payment </td>
                            <td>: card</td>
                          </tr>
                        </table>
                      </td>
                      <td></td>
                    </tr>
                  </table>
                </td>
              </tr>
              {/foreach}
            </table>
          </td>
          <td width="5px">&nbsp;</td>
          <td></td>
        </tr>
      </table>
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>
    	<table width="100%" border="0" cellpadding="0" cellspacing="0">
      	<tr>
        	<td>
          	<table width="100%" border="0" cellpadding="0" cellspacing="0">

            </table>
          </td>
          <td width="5px">&nbsp;</td>
          <td></td>
        </tr>
      </table>
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Should you require any assistance with regards to your order, please call +65 6844 2222 to speak to our customer service team during office hours or email us at: online@humming.com.sg</td>
    <td>&nbsp;</td>
  </tr> 
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Business hours: Monday to Friday  : 9.00am to 6.15pm 
                           Saturday                : 9.00am to 2.00pm</td>
    <td>&nbsp;</td>
  </tr>       
  <tr>
    <td>&nbsp;</td>
    <td><img src="{$php5WebPath}/images/email/footer.jpg" ></td>
    <td>&nbsp;</td>
  </tr>    
</table>
{/foreach}
	</body>
</html>
