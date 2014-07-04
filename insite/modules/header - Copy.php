<head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta name="generator" content="Humming! - Shopping cart" />
  <title>Hummings - Administration</title>
<link href="<?php echo $root_url ; ?>/insite/templates/system/css/style.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $root_url ; ?>/insite/templates/system/css/forms.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $root_url ; ?>/templates/en/eshop/css/tooltip.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" media="screen" href="<?php echo $root_url ; ?>/templates/en/eshop/css/validate/screen.css" />
<script src="<?php echo $root_url ; ?>/templates/en/eshop/js/jquery.js" type="text/javascript"></script>
<script src="<?php echo $root_url ; ?>/templates/en/eshop/js/validate/jquery.validate.js" type="text/javascript"></script>




<script type="text/javascript" src="{<?php echo $php5WebPath;  ?>}/insite/templates/hathor/js/template.js"></script>
  <script src="<?php echo $php5WebPath;  ?>/includes/js/global.js" type="text/javascript"></script>
  <script src="<?php echo $php5WebPath;  ?>/insite/templates/system/js/mootools-core.js" type="text/javascript"></script>
  <script src="<?php echo $php5WebPath;  ?>/insite/templates/system/js/core.js" type="text/javascript"></script>
  <script src="<?php echo $php5WebPath;  ?>/insite/templates/system/js/mootools-more.js" type="text/javascript"></script>
<!-- Load system style CSS -->
<link rel="stylesheet" href="<?php echo $php5WebPath;  ?>/insite/templates/system/css/system.css" type="text/css" />

<!-- Load Template CSS -->
<link href="<?php echo $php5WebPath;  ?>/insite/templates/hathor/css/template.css" rel="stylesheet" type="text/css" />

<!-- Load additional CSS styles for colors -->
<link href="<?php echo $php5WebPath;  ?>/insite/templates/hathor/css/colour_standard.css" rel="stylesheet" type="text/css" />

</head>
<body id="minwidth" class="cpanel-page">
<div id="containerwrap">

	<!-- Header Logo -->
	<div id="header">

		<!-- Site Title and Skip to Content -->
		<div class="title-ua">
			<h1 class="title">Administration</h1>
			<div id="skiplinkholder"><p><a id="skiplink" href="#skiptarget">Skip to Main Content</a></p></div>
      	</div>

	</div><!-- end header -->

	<!-- Main Menu Navigation -->
	<div id="nav">
		<div id="module-menu">
			<h2 class="element-invisible">Main Menu</h2>
			<ul id="menu" >
<li class="node"><a href="#">Site</a><ul>
<li class="separator"><span></span></li>
<li><a class="icon-16-config" href="{$url_setting}">Global Configuration</a></li>
<li class="separator"><span></span></li>

<li class="separator"><span></span></li>
<li><a class="icon-16-logout" href="{$url_logout}">Logout</a></li>
</ul>
</li>
<li class="node">
  <a href="#">Menu</a>
</li>
<li class="node">
  <a href="#">Users</a>
    <ul>
       <li class="node"><a class="icon-16-user" href="{$url_user}">User Manager</a>
           <ul id="menu-com-users-users" class="menu-component">
              <li><a class="icon-16-newarticle" href="#">Add New User</a></li>
           </ul>
       <li ><a href="<?php echo sefBuild($php5WebPath, 'index.php?o=user&t=insite', 0) ?>">Eshop Users</a></li>
    <ul>
</ul>
</li>

</ul>
</li>

<li class="node">
 <a href="<?php echo sefBuild($php5WebPath, 'index.php?o=product&t=insite', 0) ?>">Products</a>
      <ul>
        <li >
           <a href="<?php echo sefBuild($php5WebPath, 'index.php?o=product&t=insite', 0) ?>">List by Product Category</a>
        </li>
       <li >
          <a href="#">List by Occasions</a>
       </li>      
       <li >
          <a href="#">Lsit by Custom categories</a>
       </li>         
      </ul> 
</li>
<li class="node">

      <a href="#">Define Listing Category</a>    
      <ul>
        <li >
           <a href="<?php echo sefBuild($php5WebPath, 'index.php?o=product_category&t=insite', 0) ?>">Product Category</a>
        </li>
       <li >
          <a href="<?php echo sefBuild($php5WebPath, 'index.php?o=occasions&t=insite', 0) ?>">Occasions</a>
       </li>      
       <li >
          <a href="<?php echo sefBuild($php5WebPath, 'index.php?o=collections&t=insite', 0) ?>">Custom categories</a>
       </li>         
      </ul>

</li>


<li class="node">
  <a href="<?php echo sefBuild($php5WebPath, 'index.php?o=delivery&t=insite', 0) ?>">Delivery</a>
</li>
<li class="node">
  <a href="#">Orders</a>
</li>
<li class="node">
  <a href="#">Coupon Code</a>
</li>
<li class="node">
  <a href="<?php echo sefBuild($php5WebPath, 'index.php?o=banner&t=insite', 0) ?>">Banner</a>
</li>

</ul>

		</div>
		<div class="clr"></div>
	</div><!-- end nav -->

<!-- Status Module -->
<div id="module-status">
  <span class="loggedin-users">0 Visitors</span><span class="backloggedin-users">1 Admin</span><span class="no-unread-messages"><a href="#">0</a></span>
  <span class="viewsite"><a href="#" target="_blank">View Site</a></span><span class="logout"><a href="{$php5WebPath}/admin/logout/">Log out</a></span>	
</div>
<br/>