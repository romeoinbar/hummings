<a href='{$list_url}'><div class=close> </div></a><div style='clear:both;'></div>
<form action='{$action}' method=post id="vForm" class="cmxform" enctype='multipart/form-data'>
<input type=hidden name=coupon_id value='{$obj->coupon_id}'>
<div class=forms >

       <div onClick="show_frame('{$base_url}/admin/coupon/assign_product/edit/{$obj->coupon_id}',1)"  class=assign_button > 
             Assign Product 
       </div> 
       
       <div onClick="show_frame('{$base_url}/admin/coupon/assign_category/edit/{$obj->coupon_id}',1)"  class=assign_button > 
             Assign Category 
       </div> 
       
       
<br/>*You cannot asign by product and assign by category at once. Once you choose assign by category, data of assigned product will be cleared.<br/>              
<div style='clear:both;'></div>
<div id="frameContainer"></div>  
  <div class=label>Coupon Code</div>
  <div class=input><input name=coupon_code type='text' size=12 class=required value='{$obj->coupon_code}'></div>
  
  <div class=label>Use</div>
  <div class=input>{$obj->show_use()} <span id="use_other" {if (($obj->use==1) && ($obj->use==0))}style="display:none;"{/if}><input name="use_other" type='text' size=12  {if (($obj->use!=1) && ($obj->use!=0))}value='{$obj->use}'{/if}> Times</span></div>
  <div class=label>Redeemed</div>
  <div class=input> {$obj->redeemed} times</div>
  <div class=label>Discount</div>
  <div class=input><input name=value type='text' size=10 class=required value='{$obj->value}'>{$s_discount_type}
                   <a rel="tooltip" title="1=publish, 0=unpublish"><div class=tooltip_mark style='margin=left:0px;'></div></a> 
  </div>
  
  <div class=label>Min Purchase</div>
  <div class=input><input name=min_purchase type='text' size=10 class=required value='{$obj->min_purchase}'></div>

  <div class=label>Free Delivery</div>
  <div class=input><input name=free_delivery type='checkbox'  value=1 {$free_delivery_checked} /></div>
      
  <div class=label>Issue Date</div>
  <div class=input><input type='text' name='issue_date'  value='{$obj->issue_date}' size=10 > </div>
  <div class=label>Expiry date</div>
  <div class=input><input type='text' name='expiry_date'  value='{$obj->expiry_date}' size=10><a rel="tooltip" title="yyyy-mm-dd, 0000-00-00 = no expiry date"><div class=tooltip_mark></div></a> </div>

  <div style='clear:both;'></div>


<!--
  <div class=label>Issued By</div>
  <div class=input>{$obj->issued_by}</div>
  
  <div style='clear:both;'></div>
  
  <div class=label>Redeem By</div>
  <div class=input>{$obj->redeem_by}</div>
  <div style='clear:both;'></div>
-->
  
  <div class=label>Redemption Date</div>
  <div class=input><input type='text' name='redemption_date'  value='{$obj->redemption_date}' size=10>
  <a rel="tooltip" title="yyyy-mm-dd, 0000-00-00 = active, can be used on front end"><div class=tooltip_mark></div></a> 
  </div>
     
  
  <div style='clear:both;'></div>
  
<div>
     <input type='submit' value='Edit' class="button">
  
  </div>

</form>
{literal}
<script language="javascript">
	
	function chooseTimes(){
		if ($("#use").val()==2){
			$("#use_other").show();
		} else {
			$("#use_other").hide();
		}
	}
</script>
{/literal}