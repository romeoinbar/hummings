
<ul id="nav">
{foreach from=$menus item=menu}
    {if $menu->is_sub==0}
        <li class="first"><a href="{$menu->url}"><b class="">{$menu->title}</b></a></li>
    {else}
	<li class="sub"><a href="{$menu->url}"><b class="">{$menu->title}</b></a>
		<ul class="{$menu->type}" {if $menu->type=='product'} style="width:{$menu->width}px;"{/if}>
        	{foreach from=$menu->subs item=sub}
			<li {if $menu->type=='product'}class="columns"{/if}><a href="{$sub->url}">{$sub->title}</a></li>		
            {/foreach}	
		</ul>
	</li>
    {/if}
{/foreach}
</ul>
<div class="clr">&nbsp;</div>
<div class="line5"></div>
