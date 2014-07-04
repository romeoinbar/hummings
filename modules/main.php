<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
echo 'asdsad= '.$_GET['abc'];

$main_content="";	

$tpl = sprintf($php5TemplateFile, $language, 'main', 'header.php');	
$smarty->fetch($tpl);
//$main_content .=  $smarty->fetch($tpl); 
//$smarty->assign('main',$main_content);	
?>