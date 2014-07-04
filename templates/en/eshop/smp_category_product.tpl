<img src="{$php5WebPath}/images/promotionbar.gif" /><br />
<div style="padding-top:5px;padding-left:23px">Home - Categories - <span style="color:#b8076c">{$category_name}</span></div>
<hr />
<section class="cataloglist">
{if $products}
<ul class="clearof">
<li>
{foreach from=$products item=product}	
<div class="box">
<div class="frame"><a href="{$product.url}"><img src="{$product.image}" alt="" class="imgborder catalogimg"></a></div>
<div class="bg price">{$product.name}</div>
<div class="bg price"><span title="" class="vmicon ratingbox" style="display:inline-block;width:70px;">
    <span class="stars-orange" style="width:{$product.ratings}px"></span>
  </span></div> 
<div class="bg price"><span style="color:#b8076c">{$product.price}</span></div>
</div>
{/foreach}
</li></ul>
{/if}
</section>
<hr />