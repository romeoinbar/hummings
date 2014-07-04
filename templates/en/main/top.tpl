<div id="header">
	<div class="inner_body">
		<div class="block1">
        	<div class="blockmenu"><img src="{$php5WebPath}/images/line1.png" width="3" height="16" align="absmiddle" /><a href="{$php5WebPath}" class="menu">Home</a><img src="{$php5WebPath}/images/line2.png" width="1" height="16" align="absmiddle" /><a href="#" class="menu">Sign up or Log in</a><img src="{$php5WebPath}/images/line1.png" width="3" height="16" align="absmiddle" /></div>
          <div class="notification">Ealies Delivery: Today, Between 2pm and 5pm</div>
        </div>
        <div class="block2"><img src="{$php5WebPath}/images/logo.png" width="305" height="94" /></div>
        <div class="block3">
        <div style="float:left; margin-top:5px; width:20px;"><img src="{$php5WebPath}/images/line1.png" width="3" height="16" align="absmiddle" /></div>
        <div class="searchbox"><input name="" type="text"  value="Search" class="textinput"/>
          <input type="image" name="imageField" id="imageField" src="{$php5WebPath}/images/btn_search.png" align="absmiddle" />
        </div>
        <div style="float:left;margin-top:5px; margin-left:20px;"><img src="{$php5WebPath}/images/line1.png" width="3" height="16" align="absmiddle" /></div>
        <div class="clr"></div>
        <div class="account_menu" style="font-weight:normal;"><a href="#">My Account</a><img src="{$php5WebPath}/images/line4.png" align="absmiddle" /><a href="#">Order Tracking</a><img src="{$php5WebPath}/images/line4.png" align="absmiddle" /><a href="#">Customer Service</a><img src="{$php5WebPath}/images/line4.png" align="absmiddle" /><a href="#">Sign In for Rewards</a></div> 
        </div>
        
    </div>
</div>
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
<div class="clr"></div>
<div class="line5"></div>
