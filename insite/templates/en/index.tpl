<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-gb" lang="en-gb" dir="ltr">
<!-- Footer -->
{$header}
<body id="minwidth-body">
<div id="containerwrap"> 
  <!-- Header Logo -->
  <div id="header"> 
    
    <!-- Site Title and Skip to Content -->
    <div class="title-ua">
      <h1 class="title">Administration</h1>
      <div id="skiplinkholder">
        <p><a id="skiplink" href="#skiptarget">Skip to Main Content</a></p>
      </div>
    </div>
  </div>
  <!-- end header --> 
  
  <!-- Main Menu Navigation -->
  <div id="nav">
    <div id="module-menu">
		{$menu}
    <div class="clr"></div>
  </div>
  <!-- end nav --> 
  
  <!-- Status Module -->
  <div id="module-status"> <span class="loggedin-users">0 Visitors</span><span class="backloggedin-users">1 Admin</span><span class="no-unread-messages"><a href="#">0</a></span> <span class="viewsite"><a href="#" target="_blank">View Site</a></span><span class="logout"><a href="{$php5WebPath}/admin/logout/">Log out</a></span> </div>
  <!-- main --> 
  {$main}
  <div class="clr"></div>
</div>
<!-- end containerwrap --> 

<!-- Footer --> 
{$footer}
</body>
</html>
