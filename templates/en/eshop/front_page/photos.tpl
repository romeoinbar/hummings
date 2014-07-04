<div style='position:absolute; background:url({$php5WebPath}/images/photos/frame.png); width:332px; height:337px;'>
  <div style='position:absolute;'></div>
  <div style='padding:290px 15px 5px 15px;'> <i>{$description} </i>
    <div style='float:right; padding-top:10px;'> <b><a href='#' onclick="{$prev}">Prev</a> / <a href='#' onclick="{$next}">Next</a></b> </div>
  </div>
</div>
{if $link!=""}
<a href="{$link}"><img src="{$resized_image}" width="303" height="267" border="0" style="padding-top:17px; padding-left:15px;"/></a>
{else}
<img src="{$resized_image}" border="0" width="303" height="267" style="padding-top:17px; padding-left:15px;"/>
{/if}