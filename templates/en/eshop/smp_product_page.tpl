<div style="padding-top:5px;padding-left:23px">Home - Categories - <span style="color:#b8076c">{$name}</span></div>
<hr />
<form action='{$url_add}' method=post>    
<table width="100%" cellpadding="5" cellspacing="0">
	<tr>
  	<td width="180" align="center">
     <img src="{$image}" width="160" />
	<div style="width:90px; margin:auto;">{$rating}</div>
    </td>
    <td valign="top"> 
     <h1 style='color:#b8076c; margin-bottom:5px;'>{$name}</h1>
     <div style="color:#333; margin-bottom:10px; font-size:12px;"><strong>{$sku}</strong></div>     
     <div style='color:#b8076c; margin-bottom:5px; font-size:13px;'><strong>{$price}</strong></div>
     <div style="margin-bottom:10px; font-size:12px;">{$description}</div>
     <div style="margin-bottom:10px; font-size:12px;">Qty <select name=qty >
        <option value=1>1</option>
        <option value=2>2</option>
        <option value=3>3</option>
        <option value=4>4</option>
        <option value=5>5</option>
        <option value=6>6</option>
        <option value=7>7</option>
        <option value=8>8</option>
        <option value=9>9</option>
        <option value=10>10</option>
       </select></div>
		<div> Availability : {$lead_time} <br/>{$show_lead_time}</div>
       <input type='hidden' name='product_id' value='{$product_id}'>
       <div style="margin-bottom:5px; font-size:12px;">
       {if $addons!=""}
       <p style="color:#b8076c;"><strong>Add ons:</strong></p>
       {$addons}
       <input name="total_addon" value="{$total_addon}" type="hidden">
       {/if}</div>
		
       <div>{$button}
       <!--<input type="image" src="{$php5WebPath}/images/btn-buy.gif" style="border:none;" />--></div>

    </td>

   </tr>

 </table>

 </form>