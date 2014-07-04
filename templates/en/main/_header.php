<head>
<title>{$title}</title>
<link rel="shortcut icon" href="{$php5WebPath}/favicon.ico">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />		
		<meta name="robots" content="INDEX,FOLLOW" />
<meta name="description" content="{$description}" />

		<meta name="keywords" content="{$keywords}" />
{$meta_product}
{$extra_header}

<!--
<link href='http://fonts.googleapis.com/css?family=Tienne' rel='stylesheet' type='text/css'>
-->
<link href="{$php5WebPath}/htmls/css/forms.css" rel="stylesheet" type="text/css" />
<link href="{$php5WebPath}/htmls/css/style.css" rel="stylesheet" type="text/css" />
<link href="{$php5WebPath}/htmls/css/template_main.css" rel="stylesheet" type="text/css" />

	<link rel="stylesheet" type="text/css" href="{$php5WebPath}/htmls/calendar/tcal.css" />
	<script type="text/javascript" src="{$php5WebPath}/htmls/calendar/tcal.js"></script> 
    
{literal}
<script type="text/javascript">var switchTo5x=true;</script>
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
<script type="text/javascript">stLight.options({publisher: "0542119a-0882-4678-8cd1-08db63c860c6"}); </script>
{/literal}
    <script src="{$php5WebPath}/htmls/js/validate/jquery.js" type="text/javascript"></script>
    <script src="{$php5WebPath}/htmls/js/validate/jquery.metadata.js" type="text/javascript"></script>

    <!--  slider  -->
	<link rel="stylesheet" href="{$php5WebPath}/htmls/css/banner/global.css">

	<script src="{$php5WebPath}/htmls/js/slider/slides.min.jquery.js"></script>
    <!--  end slider  -->

    <!--  lightbox  -->
	<link rel="stylesheet" href="{$php5WebPath}/htmls/css/lightbox/lightbox.css" type="text/css" media="screen" />
    <script src="{$php5WebPath}/htmls/js/lightbox/lightbox.js"></script>    
    <!--  lightbox    -->
   
    <!-- validate -->
    <link rel="stylesheet" type="text/css" media="screen" href="{$php5WebPath}/htmls/css/validate/screen.css" />
    <script src="{$php5WebPath}/htmls/js/validate/jquery.validate.js" type="text/javascript"></script>    
    <!-- validate -->
    
    <!-- tooltip -->
    <link href="{$php5WebPath}/htmls/css/tooltip.css" rel="stylesheet" type="text/css" />
    <!-- tooltip  -->

<script>
var jWebPath="{$php5WebPath}/";

</script>

    <script src="{$php5WebPath}/htmls/js/run_jquery.js" type="text/javascript"></script>   
  
<link href="{$php5WebPath}/templates/{$language}/css/news.css" rel="stylesheet" type="text/css" />
<link href="{$php5WebPath}/templates/{$language}/css/mainmenu.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="{$php5WebPath}/includes/js/mainmenu.js"></script>

</head>

<body onLoad="{$bodyscript}" > 
<div class=div_center>

<div id="header">
	<div class="inner_body">
		<div class="block1">
        	<div class="blockmenu" style='margin-left:10px;'><img src="{$php5WebPath}/images/line1.png" width="3" height="16" align="absmiddle" /><a href="{$php5WebPath}" class="menu">Home</a><img src="{$php5WebPath}/images/line2.png" width="1" height="16" align="absmiddle" />
            {if $displlay_information==""}
            <a href="{$signup_link}" class="menu">Sign up or Log in</a>
            {else}
            {$displlay_information}
            {/if}
            <img src="{$php5WebPath}/images/line2.png" width="1" height="16" align="absmiddle" /><a href="{$url_my_account}" class="menu">My Account</a>
            <img src="{$php5WebPath}/images/line1.png" width="3" height="16" align="absmiddle" /></div>
             <div class="clr"></div>
          <div style="margin-top:50px; margin-left:25px;"><a href="{$php5WebPath}"><img src="{$php5WebPath}/images/humming.png" border="0" /></a></div>
        </div>
        <div class="block2"><a href="{$php5WebPath}"><img src="{$php5WebPath}/images/logo.png" width="305" height="94" border="0" /></a></div>
        
        <div class="block3">

{literal}
<script>
   function search_in(input)
   {
	   if (input.value=='Search Gift')
	     input.value='';
   }
   function search_out(input)
   {
	   if (input.value=='')
	     input.value='Search Gift';
   }
   function search_go()
   {

	   if (document.getElementById('search_input').value=='Search Gift') 
	   {
	     alert('Please key in some text');
		 return false;
	   }
	   else
	      document.getElementById('search_form').submit();
   }
   
</script>
{/literal}
        
        <div style='float:right; margin-right:-30px;'>
          <div style=''>
              <div style="float:right; margin-top:5px; width:20px; padding-left:5px;"><img src="{$php5WebPath}/images/line1.png" width="3" height="16" align="absmiddle" /></div>
              <div class="searchbox" style="float:right; padding-left:5px; ">
                 <form action='{$link_search}' method=post id=search_form>
                        <input type=text class=textinput id=search_input name=search value='Search Gift' onFocus=search_in(this) onblur=search_out(this); style='font-size:11px;'>

                   <input type="image" name="imageField" id="imageField" src="{$php5WebPath}/images/btn_search.png" align="absmiddle" style="border:none; width:29px; height:27px;" />
                 </form>
             </div>
             <div style="float:right;margin-top:5px; margin-left:20px; padding-right:5px;"><img src="{$php5WebPath}/images/line1.png" width="3" height="16" align="absmiddle" /></div>
          </div>
          
           
        </div>

        <div class="clr" style='clear:both; height:0px;'></div>
        <div class="notification" style='float:right; margin-top:20px; margin-right:-10px;'>{$earliest_delivery}</div>     
         <div class="clr" style='clear:both; height:0px;'></div>       
        <div style=' margin-right:-10px;'>{$top_menu}</div>
        </div>        
    </div>
</div>
  
<div class="clr">&nbsp;</div>
{$main_menu}
<div style='clear:both;'></div>
   <div class=sep></div>
    {$breadcrumb}   
</div>
<div class=div_center>