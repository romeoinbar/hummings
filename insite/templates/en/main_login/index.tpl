<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-gb" lang="en-gb" dir="ltr" >
<head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta name="generator" content="Humming! - Shopping cart" />
  <title>Hummings - Administration</title>
  {literal}
  <style type="text/css">
html { display:none }
  </style>
  {/literal}
  <script src="{$php5WebPath}/insite/templates/system/js/mootools-core.js" type="text/javascript"></script>
  <script src="{$php5WebPath}/insite/templates/system/js/core.js" type="text/javascript"></script>
  {literal}
  <script type="text/javascript">
function keepAlive() {	var myAjax = new Request({method: "get", url: "index.php"}).send();} window.addEvent("domready", function(){ keepAlive.periodical(840000); });
window.addEvent('domready', function () {if (top == self) {document.documentElement.style.display = 'block'; } else {top.location = self.location; }});
  </script>
  {/literal}

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
<!--[if IE 7]>
	<link href="templates/hathor/css/ie7.css" rel="stylesheet" type="text/css" />
<![endif]-->
<!--[if lte IE 6]>
	<link href="templates/hathor/css/ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->

<!-- Load Template JavaScript -->
<script type="text/javascript" src="templates/hathor/js/template.js"></script>

</head>
<body id="login-page">
	<div id="containerwrap">

		<!-- Header Logo -->
		<div id="header">
			<h1 class="title">Administration</h1>
		</div><!-- end header -->

		<!-- Content Area -->
		<div id="content">

			<!-- Beginning of Actual Content -->
      {$main}
      
			<!-- end element-box -->

		<noscript>
			Warning! JavaScript must be enabled for proper operation of the Administrator backend.		</noscript>

		</div><!-- end content -->
		<div class="clr"></div>
	</div><!-- end of containerwrap -->

	<!-- Footer -->
	<div id="footer">
		<p class="copyright">hummings.com
				</p>
	</div>
</body>
</html>
