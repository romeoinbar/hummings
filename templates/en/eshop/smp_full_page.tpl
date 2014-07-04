<div id="content">
  <img src="{$php5WebPath}/images/home-categories.gif" /><br />  
  <div id="home_wrap" style="width:100%;" width="100%">
  {if $categories}
	<div class="home">
      <ul>
      	{foreach from=$categories item=category}
          <li class="cat_images">
          	<table width="100%">
            <tr>
            	<td width="10%" >&nbsp;</td>
            	<td width="20%" class="imgtd"><img src="{$category.image}" /></td>
              <td width="70%"><a href="{$category.url}">{$category.name}</a></td>
            <tr>
            </table>
          </li>
        {/foreach}
    </ul>
  </div><!--/home-->
  {/if}
</div>  
