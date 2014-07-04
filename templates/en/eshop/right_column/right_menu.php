<?php
$url_about = "";
$url_sitemap = "";
$url_press = "";
$url_careers = "";

$right = "

<div style='padding-left:15px;'> 
  <a href='$url_about' class=lmenu_3col>About Us</a>
  <a href='$url_sitemap' class=lmenu_3col>Sitemap</a>
  <a href='$url_press' class=lmenu_3col>Press</a>
  <a href='$url_careers' class=lmenu_3col>Careers</a>
</div>";

$smarty->assign('right', $right);
?>