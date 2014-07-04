<div class="inner_body">	
	<div id="news">
	  <p class="pathway"><a href="{$php5WebPath}">Home</a> &raquo; <a href="{$url_cat}">{$pathway->category_name}</a> &raquo; {$content->title}</p>
      <div class="inner">  
      		<div id="colums1">
			<div class="col1">     		  	   
               <p class="header">{$content->title}</p>     
               <p>{$content->fulltext}</p> 
              <!-- <div class="header1">Others</div>
               <div class="line_news"></div>
               {foreach from=$other_news item=other_new}
			  <p>&raquo; <a href="{$other_new->url}">{$other_new->title}</a></p>
              {/foreach}-->
             </div>
            <div class="col2">
            {foreach from=$right_menus item=right_menu}
               <div class="right_header">{$right_menu->category_name}</div>
                <p class="right_menu">
                {foreach from=$right_menu->other_contents item=content}
               <a href="{$content->url}" id="{$content->activemenu}">&raquo; {$content->title}</a>
                {/foreach}
               </p>
             {/foreach}
               </div>      
           
      </div>
    </div>
   
    </div>
<div class="clr">&nbsp;</div>