<div style='paddinng:5px; border:0px solid #ccc; margin-bottom:10px;'>
<table>
	<tr>
	  <td width=100 height=100 rowspan=10 align=center valign=middle><a href='$url_detial' class=tooltip rel=tooltip title='{$obj->image(200,200,$obj->image)}' >{$obj->image(70,70,$obj->image)}</a>
                <br/>
      {$addon_image}              
      </td>	
      <td><b>{$obj->name}</b><br />
          <font size=1>{$obj->sku}</font><br />
          <table>
            <tr>
              <td>Qty</td>
              <td></td>
              <td>{$qty}</td>
            </tr>         
            <tr>
              <td>Rate</td>
              <td></td>
              <td>{$rate}</td>
            </tr>   
            <tr>
              <td>Total Rate</td>
              <td></td>
              <td>{$total_rate}</td>
            </tr>                        
          </table> 
          
      </td>	
    </tr>


	</tr>
</table>    
</div>