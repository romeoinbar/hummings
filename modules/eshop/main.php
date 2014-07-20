<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

$php5Session->setVar('storepage',  sefBuild($php5WebPath, 'index.php?o=eshop&m=main' , 1)  );
$php5Session->setVar('storepage_shopping', sefBuild($php5WebPath, 'index.php?o=eshop&m=main' , 1) );
/**

include $php5RootPath.'/templates/en/eshop/front_page/banner.php';  

include $php5RootPath.'/templates/en/eshop/front_page/best_seller.php';  

include $php5RootPath.'/templates/en/eshop/front_page/designer_pick.php';  
include $php5RootPath.'/templates/en/eshop/front_page/deal_of_the_week.php'; 
**/


include $php5RootPath.'/templates/en/eshop/front_page/banner.php'; 
include $php5RootPath.'/templates/en/eshop/front_page/best_seller.php'; 
include $php5RootPath.'/templates/en/eshop/front_page/deal_of_the_week.php'; 
include $php5RootPath.'/templates/en/eshop/front_page/designer_pick.php'; 
include $php5RootPath.'/templates/en/eshop/front_page/video.php';
/*if($php5Session->getVar("promotion") != "1")
	include $php5RootPath.'/modules/main/promotion.php';
$php5Session->setVar("promotion", "1");
*/
$tpl = sprintf($php5TemplateFile, $language, 'eshop',  'front_page/front_page.tpl');
$smarty->assign('main', $smarty->fetch($tpl));








return;

?>