<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
require_once($php5RootPath . "/classes/dealer.class.php");

$arr_temp = $define->COUNTRY();
$arr_temp1 = $define->DEFAULT_COUNTRY();
foreach($arr_temp as $key => $arr) {
	if($arr['status'] && (array_search($key,$arr_temp1)===false)) {
		$countries[$key] = $arr['name'];
	}
}
$smarty->assign('countries', $countries);
$smarty->display(sprintf($php5TemplateAdminFile, 'en', $type , 'popup.tpl'));