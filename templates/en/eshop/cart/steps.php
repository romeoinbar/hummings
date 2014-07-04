{if $step neq '4'}
&nbsp;&nbsp;&nbsp;* Welcome to checkout process. Here you will key in shipping address for each recipients. If you want to manage your cart, click <a href='{$url_cart}'>here</a> to go back to previous step.<br/>
{/if}
<div style='padding:10px 10px 0px 5px;'>
{if $step eq '1'}
    <img src='{$php5WebPath}/images/step1_2.jpg'>
{else}
    <a href='{$url_shipping_address}'><img src='{$php5WebPath}/images/step1_1.jpg' border=0></a>
{/if}

{if $step eq '2'}
    <img src='{$php5WebPath}/images/step2_2.jpg'>
{else}

    {if $done_step1 eq '1'}    
    <a href='{$url_billing_address}'><img src='{$php5WebPath}/images/step2_1.jpg'></a>
    {else}
    <img src='{$php5WebPath}/images/step2_1.jpg'>
    {/if}
    

{/if}


{if $step eq '3'}
    <img src='{$php5WebPath}/images/step3_2.jpg'>
{else}
    
    {if $done_step2 eq '1'}    
    <a href='{$url_review}'><img src='{$php5WebPath}/images/step3_1.jpg'></a>
    {else}
    <img src='{$php5WebPath}/images/step3_1.jpg'>
    {/if}    
    
{/if}

{if $step eq '4'}
    <img src='{$php5WebPath}/images/step4_2.jpg'>
{else}
    <img src='{$php5WebPath}/images/step4_1.jpg'>
{/if}
</div>