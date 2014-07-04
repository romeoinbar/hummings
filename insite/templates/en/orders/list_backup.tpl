<div style='padding:15px; margin:10px auto; border:1px solid #ccc; width:90%;'>
<h1>Order History</h1>
<table>
 <tr>
  <td> 
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
{$page}
<div id="container">
  <div id="tabs">
    <ul>
      <li><a href="#tab-1">New({$count})</a></li>
      <li><a href="#tab-2">Processed({$count2})</a></li>     
      <li><a href="#tab-3">Cancelled({$count3})</a></li>      
      <li><a href="#tab-4">Resurrect({$count4})</a></li>      
       <li><a href="#tab-5">Completed({$count5})</a></li>  
    </ul>
    <div id="tab-1"> 
    <p>    
     <table width=100% border=0 cellpadding="5">
     <tr>
       <th width="60" align=center>
     <select name="channel" onchange="filterChannel(this.value,0);">
     <option value="-1">Channel</option>
     <option value="0">PC</option>
     <option value="1">Mobile</option>
     </select>
     </th>  
      <th width="100" align=left>Order ID</th>       	
       	  
      <th width="100" align=center>Order <br />
        Date & Time </th>       
      <th align=left>Name</th>      
      <th width="120" align=left>Phone</th>     
      <th width="100" align=left>Payment Status</th>     
      <th width="90"  align=center>Order Status</th>
      <th width="80"></th>
      <th width="60"></th> 
      {foreach from=$rows item=row}      
      <form action='{$row->url_change_status}' method=post>
      <tr id="{if $row->kindof==0}pc{else}mobile{/if}0">
      	<td width="60" align="center">{if $row->kindof==0}
        PC
        {else}
        Mobile
        {/if}</td>
        <td width="100"><a href='{$row->detail_link}'>{$row->display_id}</a></td>       	                      
        <td width="100" align="center">{$row->order_date}</td>       
        <td>{$row->name}</td>        	  
        <td width=120 align=right>{$row->telephone1}</td>        
        <td width="100" align=center><!--{$row->s_payment_status} - -->
     <strong>{$row->payment_terms}</strong></td>        	  
        <td width="90"  align=center>
          <strong>
            {$row->s_order_status}
            </strong>    
        </td>
        <td width="80"   align=right><input type=submit value='Change Status'></td>
        <td width="60"><a href="{$row->url_delete}" onClick="return confirm('Confirm delete this order?')" >Delete</a></td>                             		    
     </tr>
      <tr id="{if $row->kindof==0}pc{else}mobile{/if}0">
      	<td colspan="9" align="left">
        <table width="1000" border="0" cellspacing="0" cellpadding="5" style="width:1000px; margin-left:65px;">
      	  <tr>
      	    <td height="22" style="background-color:#f9c7e1; padding:3px;"><strong>Recipients</strong></td>
      	    <td width="100" height="22" style="background-color:#f9c7e1;"><strong>Postal Code</strong></td>
      	    <td width="200" style="background-color:#f9c7e1;"><strong>Order item </strong></td>
      	    <td width="50" style="background-color:#f9c7e1;"><strong>Order quantity</strong></td>
      	    <td width="150" style="background-color:#f9c7e1;"><strong>Delivery date</strong></td>
      	    <td width="150" height="22" style="background-color:#f9c7e1;"><strong>Delivery status in SAP</strong></td>
    	    </tr>
            {foreach from=$row->saps item=sap}
      	  <tr>
      	    <td height="22" valign="top" style="background-color:#fff; padding:3px;">{$sap->shipto_name}</td>
      	    <td width="100" height="22" valign="top" style="background-color:#fff;">{$sap->shipto_postcode}</td>
      	    <td height="22" colspan="2" valign="top" style="background-color:#fff;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      	      {foreach from=$sap->products item=product}
              <tr>
      	        <td>{$product->name} (<strong>{$product->sku}</strong>)</td>
      	        <td width="50">{$product->qty}</td>
    	        </tr>
                {/foreach}
    	      </table></td>
      	    <td width="150" height="22" valign="top" style="background-color:#fff;">{$sap->delivery_time}<br />
      	      {$sap->from_date} - {$sap->to_date}</td>
      	    <td width="150" height="22" valign="top" style="background-color:#fff; text-align:center;">{$sap->status_in_sap}</td>
    	    </tr>
            {/foreach}
    	  </table>
          </td>
        </tr>
          <tr id="{if $row->kindof==0}pc{else}mobile{/if}0">
          <td colspan="9" align="center"><hr size="1" color="#fff"></td>
          </tr>
      </form>          
     {/foreach}    
    </table>
    </p>    
    </div>
    <div id="tab-2"> 
     <p>    
	<table border=0 width=100%>
     <tr>
       <th width="100" align=left>
     <select name="channel" onchange="filterChannel(this.value,2);">
     <option value="-1">Channel</option>
     <option value="0">PC</option>
     <option value="1">Mobile</option>
     </select>
     </th>  
      <th width="100" align=left>Order ID</th>       	
       	  
      <th width="150" align=left>Order Date & Time </th>       
      <th width="150" align=left>Name</th>      
      <th width="150" align=left>Phone</th>     
      <th align=left>Payment Status</th>     
      <th width="90"  align=center>Order Status</th>
      <th width="80"></th>
      <th width="60"></th> 
      {foreach from=$rows2 item=row}     
      <form action='{$row->url_change_status}' method=post>
      <tr id="{if $row->kindof==0}pc{else}mobile{/if}2">
      	<td>{if $row->kindof==0}
        PC
        {else}
        Mobile
        {/if}</td>
        <td width="100"><a href='{$row->detail_link}'>{$row->display_id}</a></td>       	                      
        <td width="150">{$row->order_date}</td>       
        <td width="150">{$row->name}</td>        	  
        <td align=right width=150>{$row->telephone1}</td>        
        <td align=center><!--{$row->s_payment_status} - -->
     <strong>{$row->payment_terms}</strong></td>        	  
        <td width="90"  align=center>
          <strong>
            {$row->s_order_status}
            </strong>    
        </td>
        <td width="80"   align=right><input type=submit value='Change Status'></td>
        <td width="60"><a href="{$row->url_delete}" onClick="return confirm('Confirm delete this order?')" >Delete</a></td>                             		    
     </tr>
       <tr id="{if $row->kindof==0}pc{else}mobile{/if}0">
      	<td colspan="9" align="left">
        <table width="1000" border="0" cellspacing="0" cellpadding="5" style="width:1000px; margin-left:65px;">
      	  <tr>
      	    <td height="22" style="background-color:#f9c7e1; padding:3px;"><strong>Recipients</strong></td>
      	    <td width="100" height="22" style="background-color:#f9c7e1;"><strong>Postal Code</strong></td>
      	    <td width="200" style="background-color:#f9c7e1;"><strong>Order item </strong></td>
      	    <td width="50" style="background-color:#f9c7e1;"><strong>Order quantity</strong></td>
      	    <td width="150" style="background-color:#f9c7e1;"><strong>Delivery date</strong></td>
      	    <td width="150" height="22" style="background-color:#f9c7e1;"><strong>Delivery status in SAP</strong></td>
    	    </tr>
            {foreach from=$row->saps item=sap}
      	  <tr>
      	    <td height="22" valign="top" style="background-color:#fff; padding:3px;">{$sap->shipto_name}</td>
      	    <td width="100" height="22" valign="top" style="background-color:#fff;">{$sap->shipto_postcode}</td>
      	    <td height="22" colspan="2" valign="top" style="background-color:#fff;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      	      {foreach from=$sap->products item=product}
              <tr>
      	        <td>{$product->name} (<strong>{$product->sku}</strong>)</td>
      	        <td width="50">{$product->qty}</td>
    	        </tr>
                {/foreach}
    	      </table></td>
      	    <td width="150" height="22" valign="top" style="background-color:#fff;">{$sap->delivery_time}<br />
      	      {$sap->from_date} - {$sap->to_date}</td>
      	    <td width="150" height="22" valign="top" style="background-color:#fff; text-align:center;">{$sap->status_in_sap}</td>
    	    </tr>
            {/foreach}
    	  </table>
          </td>
        </tr>
     <tr id="{if $row->kindof==0}pc{else}mobile{/if}0">
          <td colspan="9" align="center"><hr size="1" color="#fff"></td>
          </tr>
      </form>    
     {/foreach}    
    </table>
    </p>         
    </div>   
    <div id="tab-3"> 
     <p>    
	<table border=0 width=100%>
     <tr>
       <th width="100" align=left>
     <select name="channel" onchange="filterChannel(this.value, 3);">
     <option value="-1">Channel</option>
     <option value="0">PC</option>
     <option value="1">Mobile</option>
     </select>
     </th>  
      <th width="100" align=left>Order ID</th>       	
       	  
      <th width="150" align=left>Order Date & Time </th>       
      <th width="150" align=left>Name</th>      
      <th width="150" align=left>Phone</th>     
      <th align=left>Payment Status</th>     
      <th  align=center>Order Status</th>
      <th width="80"></th>
      <th width="60"></th> 
      {foreach from=$rows3 item=row}    
      <form action='{$row->url_change_status}' method=post>
      <tr id="{if $row->kindof==0}pc{else}mobile{/if}3">
      	<td>{if $row->kindof==0}
        PC
        {else}
        Mobile
        {/if}</td>
        <td width="100"><a href='{$row->detail_link}'>{$row->display_id}</a></td>       	                      
        <td width="150">{$row->order_date}</td>       
        <td width="150">{$row->name}</td>        	  
        <td align=right width=150>{$row->telephone1}</td>        
        <td align=center><!--{$row->s_payment_status} - -->
     <strong>{$row->payment_terms}</strong></td>        	  
        <td  align=center>
          <strong>
            {$row->s_order_status}
            </strong>    
        </td>
        <td width="80"   align=right><input type=submit value='Change Status'></td>
        <td width="60"><a href="{$row->url_delete}" onClick="return confirm('Confirm delete this order?')" >Delete</a></td>                             		    
     </tr>
       <tr id="{if $row->kindof==0}pc{else}mobile{/if}0">
      	<td colspan="9" align="left">
        <table width="1000" border="0" cellspacing="0" cellpadding="5" style="width:1000px; margin-left:65px;">
      	  <tr>
      	    <td height="22" style="background-color:#f9c7e1; padding:3px;"><strong>Recipients</strong></td>
      	    <td width="100" height="22" style="background-color:#f9c7e1;"><strong>Postal Code</strong></td>
      	    <td width="200" style="background-color:#f9c7e1;"><strong>Order item </strong></td>
      	    <td width="50" style="background-color:#f9c7e1;"><strong>Order quantity</strong></td>
      	    <td width="150" style="background-color:#f9c7e1;"><strong>Delivery date</strong></td>
      	    <td width="150" height="22" style="background-color:#f9c7e1;"><strong>Delivery status in SAP</strong></td>
    	    </tr>
            {foreach from=$row->saps item=sap}
      	  <tr>
      	    <td height="22" valign="top" style="background-color:#fff; padding:3px;">{$sap->shipto_name}</td>
      	    <td width="100" height="22" valign="top" style="background-color:#fff;">{$sap->shipto_postcode}</td>
      	    <td height="22" colspan="2" valign="top" style="background-color:#fff;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      	      {foreach from=$sap->products item=product}
              <tr>
      	        <td>{$product->name} (<strong>{$product->sku}</strong>)</td>
      	        <td width="50">{$product->qty}</td>
    	        </tr>
                {/foreach}
    	      </table></td>
      	    <td width="150" height="22" valign="top" style="background-color:#fff;">{$sap->delivery_time}<br />
      	      {$sap->from_date} - {$sap->to_date}</td>
      	    <td width="150" height="22" valign="top" style="background-color:#fff; text-align:center;">{$sap->status_in_sap}</td>
    	    </tr>
            {/foreach}
    	  </table>
          </td>
        </tr>
     <tr id="{if $row->kindof==0}pc{else}mobile{/if}0">
          <td colspan="9" align="center"><hr size="1" color="#fff"></td>
          </tr>
      </form>  
     {/foreach}    
    </table>
    </p> 
    </div>
    <div id="tab-4"> 
     <p>    
	<table border=0 width=100%>
     <tr>
       <th width="100" align=left>
     <select name="channel" onchange="filterChannel(this.value, 4);">
     <option value="-1">Channel</option>
     <option value="0">PC</option>
     <option value="1">Mobile</option>
     </select>
     </th>  
      <th width="100" align=left>Order ID</th>       	
       	  
      <th width="150" align=left>Order Date & Time </th>       
      <th width="150" align=left>Name</th>      
      <th width="150" align=left>Phone</th>     
      <th align=left>Payment Status</th>     
      <th  align=center>Order Status</th>
      <th width="80"></th>
      <th width="60"></th> 
      {foreach from=$rows4 item=row}     
      <form action='{$row->url_change_status}' method=post>
      <tr id="{if $row->kindof==0}pc{else}mobile{/if}4">
      	<td>{if $row->kindof==0}
        PC
        {else}
        Mobile
        {/if}</td>
        <td width="100"><a href='{$row->detail_link}'>{$row->display_id}</a></td>       	                      
        <td width="150">{$row->order_date}</td>       
        <td width="150">{$row->name}</td>        	  
        <td align=right width=150>{$row->telephone1}</td>        
        <td align=center><!--{$row->s_payment_status} - -->
     <strong>{$row->payment_terms}</strong></td>        	  
        <td  align=center>
          <strong>
            {$row->s_order_status}
            </strong>    
        </td>
        <td width="80"   align=right><input type=submit value='Change Status'></td>
        <td width="60"><a href="{$row->url_delete}" onClick="return confirm('Confirm delete this order?')" >Delete</a></td>                             		    
     </tr>
       <tr id="{if $row->kindof==0}pc{else}mobile{/if}0">
      	<td colspan="9" align="left">
        <table width="1000" border="0" cellspacing="0" cellpadding="5" style="width:1000px; margin-left:65px;">
      	  <tr>
      	    <td height="22" style="background-color:#f9c7e1; padding:3px;"><strong>Recipients</strong></td>
      	    <td width="100" height="22" style="background-color:#f9c7e1;"><strong>Postal Code</strong></td>
      	    <td width="200" style="background-color:#f9c7e1;"><strong>Order item </strong></td>
      	    <td width="50" style="background-color:#f9c7e1;"><strong>Order quantity</strong></td>
      	    <td width="150" style="background-color:#f9c7e1;"><strong>Delivery date</strong></td>
      	    <td width="150" height="22" style="background-color:#f9c7e1;"><strong>Delivery status in SAP</strong></td>
    	    </tr>
            {foreach from=$row->saps item=sap}
      	  <tr>
      	    <td height="22" valign="top" style="background-color:#fff; padding:3px;">{$sap->shipto_name}</td>
      	    <td width="100" height="22" valign="top" style="background-color:#fff;">{$sap->shipto_postcode}</td>
      	    <td height="22" colspan="2" valign="top" style="background-color:#fff;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      	      {foreach from=$sap->products item=product}
              <tr>
      	        <td>{$product->name} (<strong>{$product->sku}</strong>)</td>
      	        <td width="50">{$product->qty}</td>
    	        </tr>
                {/foreach}
    	      </table></td>
      	    <td width="150" height="22" valign="top" style="background-color:#fff;">{$sap->delivery_time}<br />
      	      {$sap->from_date} - {$sap->to_date}</td>
      	    <td width="150" height="22" valign="top" style="background-color:#fff; text-align:center;">{$sap->status_in_sap}</td>
    	    </tr>
            {/foreach}
    	  </table>
          </td>
        </tr>
        <tr id="{if $row->kindof==0}pc{else}mobile{/if}0">
          <td colspan="9" align="center"><hr size="1" color="#fff"></td>
          </tr>
      </form>    
     {/foreach}    
    </table>
    </p> 
    </div>
     <div id="tab-5"> 
     <p>    
	<table border=0 width=100%>
     <tr>
       <th width="100" align=left>
     <select name="channel" onchange="filterChannel(this.value, 5);">
     <option value="-1">Channel</option>
     <option value="0">PC</option>
     <option value="1">Mobile</option>
     </select>
     </th>  
      <th width="100" align=left>Order ID</th>       	
       	  
      <th width="150" align=left>Order Date & Time </th>       
      <th width="150" align=left>Name</th>      
      <th width="150" align=left>Phone</th>     
      <th align=left>Payment Status</th>     
      <th  align=center>Order Status</th>
      <th width="80"></th>
      <th width="60"></th> 
      {foreach from=$rows5 item=row}      
      <form action='{$row->url_change_status}' method=post>
      <tr id="{if $row->kindof==0}pc{else}mobile{/if}5">
      	<td>{if $row->kindof==0}
        PC
        {else}
        Mobile
        {/if}</td>
        <td width="100"><a href='{$row->detail_link}'>{$row->display_id}</a></td>       	                      
        <td width="150">{$row->order_date}</td>       
        <td width="150">{$row->name}</td>        	  
        <td align=right width=150>{$row->telephone1}</td>        
        <td align=center><!--{$row->s_payment_status} - -->
     <strong>{$row->payment_terms}</strong></td>        	  
        <td  align=center>
          <strong>
            {$row->s_order_status}
            </strong>    
        </td>
        <td width="80"   align=right><input type=submit value='Change Status'></td>
        <td width="60"><a href="{$row->url_delete}" onClick="return confirm('Confirm delete this order?')" >Delete</a></td>                             		    
     </tr>
       <tr id="{if $row->kindof==0}pc{else}mobile{/if}0">
      	<td colspan="9" align="left">
        <table width="1000" border="0" cellspacing="0" cellpadding="5" style="width:1000px; margin-left:65px;">
      	  <tr>
      	    <td height="22" style="background-color:#f9c7e1; padding:3px;"><strong>Recipients</strong></td>
      	    <td width="100" height="22" style="background-color:#f9c7e1;"><strong>Postal Code</strong></td>
      	    <td width="200" style="background-color:#f9c7e1;"><strong>Order item </strong></td>
      	    <td width="50" style="background-color:#f9c7e1;"><strong>Order quantity</strong></td>
      	    <td width="150" style="background-color:#f9c7e1;"><strong>Delivery date</strong></td>
      	    <td width="150" height="22" style="background-color:#f9c7e1;"><strong>Delivery status in SAP</strong></td>
    	    </tr>
            {foreach from=$row->saps item=sap}
      	  <tr>
      	    <td height="22" valign="top" style="background-color:#fff; padding:3px;">{$sap->shipto_name}</td>
      	    <td width="100" height="22" valign="top" style="background-color:#fff;">{$sap->shipto_postcode}</td>
      	    <td height="22" colspan="2" valign="top" style="background-color:#fff;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      	      {foreach from=$sap->products item=product}
              <tr>
      	        <td>{$product->name} (<strong>{$product->sku}</strong>)</td>
      	        <td width="50">{$product->qty}</td>
    	        </tr>
                {/foreach}
    	      </table></td>
      	    <td width="150" height="22" valign="top" style="background-color:#fff;">{$sap->delivery_time}<br />
      	      {$sap->from_date} - {$sap->to_date}</td>
      	    <td width="150" height="22" valign="top" style="background-color:#fff; text-align:center;">{$sap->status_in_sap}</td>
    	    </tr>
            {/foreach}
    	  </table>
          </td>
        </tr>
     <tr id="{if $row->kindof==0}pc{else}mobile{/if}0">
          <td colspan="9" align="center"><hr size="1" color="#fff"></td>
          </tr>
      </form>  
     {/foreach}    
    </table>
    </p> 
    </div>
  </div>
</div>
</div>   
{literal}
<script language="javascript">
function filterChannel(channel, id){
	if (channel==0){
		$("tr#mobile"+id).hide();
		$("tr#pc"+id).show();
	}
	if (channel==1){
    $("tr#pc"+id).hide();
    $("tr#mobile"+id).show();

	}
  if (channel==-1){
    $("tr#mobile"+id).show();
    $("tr#pc"+id).show();
  }
}
</script>
{/literal} 