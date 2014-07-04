<p class="pathway"><a href="{$php5WebPath}">Home</a> - {$pathway->category_name}</p>
 <div class="articles_block">              
   {foreach from=$articles item=article}
  <div><a href="{$article->url}" class="article_link">{$article->title}</a></div>
  <div class="article_desc">{$article->introtext}</div>
 
  <div class="article_line" align="right"><a href="{$article->url}" class="more_news">More...</a></div>
   {/foreach} 
</div>   
<div class="clr">&nbsp;</div>