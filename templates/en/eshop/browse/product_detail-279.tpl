

<div style='margin:0px; padding:0px 15px 0px 15px; border:0px solid red;'>
<table border=0 width=99%>
<tr>
 <td valign=top><table border=0><tr><td><div style=' text-align:center; border:0px solid #ccc; padding:10px;'>{$resized_image}</div></td></tr>
                <tr><td>{$addon_image}</td></tr>
  <tr><td><div style="padding-top:5px;padding-left:0px">
<span class='st_facebook_hcount' displayText='Facebook'></span>
<span class='st_twitter_hcount' displayText='Tweet'></span>
<span class='st_sharethis_hcount' displayText='ShareThis'></span>
</div></td></tr></table>
 </td>
 <td width=10></td>
 <td width="40%">
    <table border=0 ><tr><td>
     <h1 style='color:#000'>{$name}</h1>
     <div> Reference: <b>{$sku}</b></div>
     <div style='padding-top:15px; font-size:12px;'>
        <h2>{$price}</h2> <br /> (with GST {$gst_price})
     </div>
     </td>
  	<td valign="top">{$rating_product}
		</td></tr></table>
     <div style='padding-top:15px; width:100%; cursor:pointer2;' onClick2=showhide('review'); ></div>
     <div style='margin-top:5px; background:#faf6ea; padding:15px; border:0px solid #ccc; '>
       <h2>Item Description </h2><br/><br/>
       {$description}
     </div>   
 <form action='{$url_add}' method=post>    
<input type='hidden' name='product_id' value='{$product_id}'>
        {$addon}


     <div style='margin-top:15px; '>
       <b>Quantity :</b> 
       <select name=qty >
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
       </select>
       <br/>
       Availability : {$lead_time} <br/>{$show_lead_time}
     </div>   
     <br/>
     {$button}
           
 </td>
 <td valign=top width="30%">{$related}</td>
 </tr>

</table>
</div>
</form>