<div id="content">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><div class="blueberry">
      <ul class="slides">
      {foreach from=$banners item=banner}
        <li><a href="{$banner->link}"><img src="{$php5WebPath}/{$banner->image}" border="0" /></a></li>       
      {/foreach}
      </ul>
    </div></td>
  </tr>
</table>

  <div style="background-color:#acaaad; height:30px; line-height:30px;">
  <marquee onmouseover="this.stop();" onmouseout="this.start();" scrollamount="1">
   {foreach from=$pros item=pro}
   <a href="{$pro->url}" class="pros_link">{$pro->title}</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   {/foreach}
  </marquee>
  </div>
  <div>
    <div style="float:left; width:50%;"><a href="{$link_category1}"><img src="{$php5WebPath}/images/home-occasions.gif" width="100%" alt=""></a></div>
    <div style="float:left; width:50%;"><a href="{$link_category2}"><img src="{$php5WebPath}/images/home-categories.gif" width="100%" alt=""></a></div>
  </div>
  <div class="clr"></div>
  <div style="padding-top:5px;padding-left:15px">

<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style ">
<a class="addthis_button_facebook_like" fb:like:layout="button_count" expr:addthis:url='http://www.facebook.com/HummingFlowersandGifts'></a>
<a class="addthis_button_tweet"  tw:counturl="http://www.hummings.com/mobile-cart"></a>
<a class="addthis_counter addthis_pill_style"></a>

</div>
{literal}
<script type="text/javascript">var addthis_config = {"data_track_addressbar":false};</script>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5153a18151048b19"></script>
{/literal}
</body>
</html>

</div>   
