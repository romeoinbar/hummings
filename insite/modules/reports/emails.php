<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();
//get
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
if(!$currPage) {
	$currPage = 1;
}
$msg = '';
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'user_group'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'reports', 'emails.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//////////////////////////////
switch($task)
{
	case "search":
		$time_start 		= php5GetParam($_REQUEST, 'time_start', '');
		$time_end 		= php5GetParam($_REQUEST, 'time_end', '');
		break;
	default:
		$time_start 		= php5GetParam($_REQUEST, 'time_start', '');
		$time_end 		= php5GetParam($_REQUEST, 'time_end', '');
		break;	
}
$api_url = 'https://api.smtp.com/v1/';
$key     = KEY_API_HUMMING; #your_key
$sender = '';
$ch = curl_init();
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$senders_url = $api_url . '/account/senders.json?api_key=' . $key;
$res = smtpcom_get( $ch, $senders_url );
$senders = $res['senders'];
if(is_array($senders) && count($senders) > 0) {
	foreach($senders as $k => $arr){
		if($arr['login'] == php5GetConfig('config_smtp_username')) {
			$sender = $senders[$k];			
			break;
		}
	}
}
$summary = '';
if ($sender){
	$date1 = '';
	$date2 = '';
	if($time_start) {
		$date1 = "00:00%20{$time_start}";
	}
	if($time_end) {
		$date2 = "23:59%20{$time_end}";
	}	
	$summary_url = $api_url. '/account/senders/' . $sender['label'] . '/statistics/delivery.json?api_key=' . $key . '&time_start="'.$date1.'"&time_end="'.$date2.'"&limit=10000&offset=0';
			
	$res = smtpcom_get( $ch, $summary_url );
	$summary = $res['delivery'];
	if(count($summary) > 0) {
		$i = 0;
		foreach($summary as $k => $arr) {
			$i++;
			$summary[$k]['row'] = 0;
			if($i % 2 == 0) {
				$summary[$k]['row'] = 1;
			}
			$summary[$k]['time_started'] = date('d-m-Y', $arr['time_started']);
		}
	}
}
	
$smarty->assign('time_start', $time_start);
$smarty->assign('time_end', $time_end);
$smarty->assign('summaries', $summary);

$smarty->assign('link_category', sefBuild($php5WebPath, 'index.php?o=emails', 0));
$smarty->assign('link_create', sefBuild($php5WebPath, 'index.php?o=emails&m=create', 0));
$smarty->assign('link_import', sefBuild($php5WebPath, 'index.php?o=import_newsletter_users', 0));
$smarty->assign('link_export', sefBuild($php5WebPath, 'index.php?o=export_newsletter_users', 0));
$smarty->assign('link1', sefBuild($php5WebPath, 'index.php?o=emails&m=registered_bought', 0));
$smarty->assign('link2', sefBuild($php5WebPath, 'index.php?o=emails&m=registered', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=reports&m=emails&task=search', 0));
$smarty->assign('main', $smarty->fetch($tpl));
//$smarty->display($tpl);

return;

