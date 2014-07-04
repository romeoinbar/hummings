  <div class=ctop_full></div>
<div class=cmid_full>
  <div style="padding:20px;"> <h2>Final Payment Stage</h2>
    <p>Please wait, your order is being processed and you will be redirected to the payment website.</p>
                <form method="POST" id="gateway_form" name="gateway_form" action="{$gateway_url}">
					{foreach key=key item=item from=$fields} 	
                  <input type="hidden" name="{$key}" value="{$item}" />
                  {/foreach}
                   
                    <p>If you are not automatically redirected to payment website within 5 seconds...<br/><br/>
                    <input type="submit" value="Click Here"></p>
                </form>          
                </div>
 </div>   
 <div class=cbot_full></div>
<script type='text/javascript'>
 	//document.forms["gateway_form"].submit();
</script>