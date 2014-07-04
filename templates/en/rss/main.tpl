{literal}
<style>
.hlcp1 ul {
list-style-type: none;
	margin: 0;
	padding: 0;
}


.hlcp1 ul li.ter {
	line-height: 2em;
	padding-top: 0;
	padding-bottom: 0;
}

.hlcp1 li.conversation {
	background: transparent url(images/RSSSubscribe.png) no-repeat 0 .5em;
	padding-left:22px;
}

</style>
{/literal}

<div class="inner_body">
	<div id="news">
	  <p class="pathway"><a href="{$php5WebPath}">Home</a> &raquo; RSS</p>
      <div class="inner">
				<h1>Humming News Center RSS Feeds</h1>
       {if $categories}
       <div class="hlcp1">
       	<ul>  
        {foreach from=$categories item=category}
        <li class="ter conversation"><a href="{$category.link}" target="_blank">{$category.name}</a></li>
        {/foreach}
        </ul>
       </div> 
      {/if}
      </div>
    </div>
  	<div class="clr">&nbsp;</div>

