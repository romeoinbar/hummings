<div class="inner_body">
	<div id="news">
	  <p class="pathway"><a href="{$php5WebPath}">Home</a> &raquo; {$pathway->category_name}</p>
      <div class="inner">              
           {foreach from=$articles item=article}
          <div class="small_header"><a href="{$article->url}">{$article->title}</a></div>
          <p>{$article->introtext}</p>
          <p></p>
          <p class="line_news" align="right"><a href="{$article->url}" class="more_news">More...</a></p>
           {/foreach} 
      </div>
    </div>
  	<div class="clr">&nbsp;</div>