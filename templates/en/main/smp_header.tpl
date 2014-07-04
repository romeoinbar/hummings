<title>{$title}</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />		
		<meta name="robots" content="INDEX,FOLLOW" />
<meta name="description" content="{$description}" />

		<meta name="keywords" content="{$keywords}" />
<link rel="StyleSheet" href="{$php5WebPath}/templates/en/css/mobile.css" type="text/css">
<script src="{$php5WebPath}/htmls/js/validate/jquery.js" type="text/javascript"></script>
<script src="{$php5WebPath}/htmls/js/lightbox/jquery-1.7.2.min.js"></script>
<script src="{$php5WebPath}/htmls/js/slider/slides.min.jquery.js"></script>
<script src="{$php5WebPath}/htmls/js/run_jquery.js" type="text/javascript"></script>   
<link rel="stylesheet" type="text/css" media="screen" href="{$php5WebPath}/templates/en/css/validate/screen.css" />
<script src="{$php5WebPath}/htmls/js/validate/jquery.validate.js" type="text/javascript"></script>
<!-- Calendar -->    
<link rel="stylesheet" type="text/css" href="http://www.hummings.com/htmls/calendar/tcal.css" />
<script type="text/javascript" src="{$php5WebPath}/htmls/calendar/tcal1.js"></script> 
<script type="text/javascript">
var jWebPath = '{$php5WebPath}/';
</script>
<link rel="stylesheet" href="{$php5WebPath}/templates/en/css/blueberry.css" />
<script src="{$php5WebPath}/includes/js/jquery.blueberry.js"></script>
{literal}
<script type="text/javascript">var switchTo5x=true;</script>
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
<script type="text/javascript">stLight.options({publisher: "c51f9231-b206-4d79-a356-1b6ae56e1642"}); </script>
<script type="text/javascript">
$(window).load(function() {
	$('.blueberry').blueberry();	
});
$(document).ready(function() {			
	document.documentElement.style.overflowX = 'hidden';	
});		
</script>   
{/literal}
<div><a href="{$php5WebPath}/mobile-cart"><img src="{$php5WebPath}/images/top-banner.gif" width="100%" /></a></div>
<div style="text-align:center;">
<ul id="nav">
	<li class="first">
  	<a href="{$link_category2}">
			Categories
		</a>
  </li>
	<li class="mid">&nbsp;</li>  
	<li class="first">
  	<a href="{$link_promotion}">
			Promotion
		</a>
  </li>
  <li class="mid">&nbsp;</li>    
	<li class="first">
  	<a href="{$link_cart}">
			<img src="{$php5WebPath}/images/icon-cart.gif" /> Cart
		</a>
  </li>
</ul>
</div>
<div class="clr"></div>
<div class="search">
  <form name="searchForm" method="post" action="{$link_search}">
  <table cellpadding="0" cellspacing="0"><tbody><tr><td width="4"></td><td width="25"><div class="search_icon"></div></td>
  <td><div class="searchbg"><input name="search" value="" class="input_search" type="text" placeholder="Search by keyword or product code"></div></td>
  <td width="16"><div class="search_right"></div></td><td width="30"><input name="Search" class="btn_go" value="" type="submit"></td><td width="12"></td></tr></tbody></table>
  </form>
</div>
