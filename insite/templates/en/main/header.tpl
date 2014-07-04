<head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta name="generator" content="Humming! - Shopping cart" />
  <title>Hummings - Administration</title>

	<link rel="stylesheet" type="text/css" href="{$php5WebPath}/htmls/calendar/tcal.css" />
	<script type="text/javascript" src="{$php5WebPath}/htmls/calendar/tcal.js"></script>   
  
  <script src="{$php5WebPath}/includes/js/global.js" type="text/javascript"></script>
  <script src="{$php5WebPath}/includes/js/jquery/jquery.js" type="text/javascript"></script>
  <script src="{$php5WebPath}/insite/templates/system/js/mootools-core.js" type="text/javascript"></script>
  <script src="{$php5WebPath}/insite/templates/system/js/core.js" type="text/javascript"></script>
  <script src="{$php5WebPath}/insite/templates/system/js/mootools-more.js" type="text/javascript"></script>
<!-- Load system style CSS -->
<link rel="stylesheet" href="{$php5WebPath}/insite/templates/system/css/system.css" type="text/css" />

<!-- Load Template CSS -->
<link href="{$php5WebPath}/insite/templates/hathor/css/template.css" rel="stylesheet" type="text/css" />

<!-- Load additional CSS styles for colors -->
<link href="{$php5WebPath}/insite/templates/hathor/css/colour_standard.css" rel="stylesheet" type="text/css" />

<!-- Load additional CSS styles for rtl sites -->

<!-- Load specific language related css -->

<!-- Load additional CSS styles for bold Text -->

<!-- Load additional CSS styles for Internet Explorer -->
<!--[if IE 8]>
	<link href="insite/templates/hathor/css/ie8.css" rel="stylesheet" type="text/css" />
<![endif]-->
<!--[if IE 7]>
	<link href="insite/templates/hathor/css/ie7.css" rel="stylesheet" type="text/css" />
<![endif]-->
<!--[if lte IE 6]>
	<link href="insite/templates/hathor/css/ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->

<!-- Load Template JavaScript -->
<script type="text/javascript" src="{$php5WebPath}/insite/templates/hathor/js/template.js"></script>

<link href="{$php5WebPath}/insite/templates/system/css/style.css" rel="stylesheet" type="text/css" />
<link href="{$php5WebPath}/insite/templates/system/css/forms.css" rel="stylesheet" type="text/css" />
<link href="{$php5WebPath}/templates/en/eshop/css/tooltip.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" media="screen" href="{$php5WebPath}/templates/en/eshop/css/validate/screen.css" />
<script src="{$php5WebPath}/templates/en/eshop/js/jquery.js" type="text/javascript"></script>
<script src="{$php5WebPath}/templates/en/eshop/js/validate/jquery.validate.js" type="text/javascript"></script>

<script src="{$php5WebPath}/insite/templates/en/main/run_js.js" type="text/javascript"></script>
<script src="{$php5WebPath}/includes/js/jquery/ajaxfileupload.js" type="text/javascript"></script>
<script src="{$php5WebPath}/includes/js/CalendarPopup.js" type="text/javascript"></script>
{literal}
<script>
var cal = new CalendarPopup();
</script>
{/literal}

{literal}
<script type="text/javascript">

$(document).ready(function(){
$('#tabs div').hide();
$('#tabs div:first').show();
$('#tabs ul li:first').addClass('active');
$('#tabs ul li a').click(function(){ 
$('#tabs ul li').removeClass('active');
$(this).parent().addClass('active'); 
var currentTab = $(this).attr('href'); 
$('#tabs div').hide();
$(currentTab).show();
return false;
});
});
</script>
<style type="text/css">
#tabs {
	font-size: 90%;
	margin: 20px 0;
}
#tabs ul {
	float: left;
	background: #fff;
	width: 700px;
	padding-top: 4px;
}
#tabs li {
	font-size:14px;	
	list-style: none;
}
* html #tabs li {
	display: inline;
}
#tabs li, #tabs li a {
	float: left;
}
#tabs ul li.active {
	border-top:5px #c40161 solid;	
	background: #ffeaf5;
}
#tabs ul li.active a {
	color: #333333;
}
#tabs div {
	background: #ffeaf5;
	clear: both;
	padding: 15px;
	min-height: 200px;
}
#tabs div h3 {
	margin-bottom: 12px;
}
#tabs div p {
	line-height: 150%;
}
#tabs ul li a {
	text-decoration: none;
	padding: 8px;
	color: #000;
	font-weight: bold;
}

-->
</style>
{/literal}

</head>
