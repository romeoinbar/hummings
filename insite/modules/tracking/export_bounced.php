<?php
/***************************************************************************
*                                main.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'export'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'tracking', 'export_bounced.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
require_once($php5RootPath . "/includes/csv.php");
$time_start = php5GetParam($_REQUEST, "time_start", '');
$time_end = php5GetParam($_REQUEST, "time_end", '');

if(!$time_start && !$time_end) {
	return;
}
$api_url = 'https://api.smtp.com/v1/';
$key     = KEY_API_HUMMING; #your_key

$ch = curl_init();
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$senders_url = $api_url . '/account/senders.json?api_key=' . $key;
$res = smtpcom_get( $ch, $senders_url );
$senders = $res['senders'];
$summary = '';
if ($senders[1]){
	$sender = $senders[1];
	$date1 = '';
	$date2 = '';
	if($time_start) {
		$date1 = "00:00%20{$time_start}";
	}
	if($time_end) {
		$date2 = "23:59%20{$time_end}";
	}	
	$summary_url = $api_url. '/account/senders/' . $sender['label'] . '/statistics/delivery.json?api_key=' . $key . '&time_start="'.$date1.'"&time_end="'.$date2.'"&limit=10000&offset=0&status=2';

	$res = smtpcom_get( $ch, $summary_url );
	$summary = $res['delivery'];
	if(count($summary) > 0) {
		//foreach($summary as $k => $arr) {

		//}
		$dir = $php5RootPath.'/images/export/';
		@ini_set('memory_limit', '500M');

		$name = "Bounced-emails-$time_start";
		//////////////////
		$arrCSV = array();
		$i = 0;
		$arrCSV[$i][] = "Date";
		$arrCSV[$i][] = "From Email";
		$arrCSV[$i][] = "To Email";
		$i = 1;
		//if(is_array($rows_export_transaction) && count($rows_export_transaction) > 0) {
			foreach($summary as $k => $arr) {
				$arrCSV[$i][] = date('d-m-Y', $arr['time_started']);
				$arrCSV[$i][] = $arr['mail_from'];
				$arrCSV[$i][] = $arr['rcpt_to'];
				$i++;
			}
		//}
		$csv = new CSVCreation($dir);
		$csv->createcsv($arrCSV, $name, 1);
		exit;
		//sleep(3);
		
		//$redirect =  $php5WebPath . "/images/export/$name.csv";			
		
	}
}




