<div align="center">
<ul class="category_list">
{if $cat_id!=25}
    {foreach from=$rows item=row}
    <li><a href="{$row->link}">{$row->title}</a></li>
    {/foreach}
{else}
	<div style="margin-top:10px; border-bottom:1px solid #ccc; padding-bottom:2px;">
	<a href="{$link_category}151"><img src="{$php5WebPath}/images/mobile_flower.jpg" width="271" height="75" /></a> <br />
    <a href="{$link_category}165"><img src="{$php5WebPath}/images/mobile_gift.jpg" width="271" height="75"/></a> <br />
    <a href="{$link_category}170"><img src="{$php5WebPath}/images/mobile_hammper.jpg" width="271" height="76"/></a>
    </div>
{/if}

</ul>
</div>