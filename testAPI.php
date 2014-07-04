<?php
//$time_start = php5GetParam($_REQUEST, "time_start", '');
//$time_end = php5GetParam($_REQUEST, "time_end", '');
error_reporting(E_ALL); ini_set('display_errors', '1');
$time_start = '28-05-2013';
$time_end = '28-05-2013';


$api_url = 'https://api.smtp.com/v1/';
$key     = 'e23e6678e0d32f25d5a29c344b505250ae15fd3e'; #your_key

$ch = curl_init();
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$senders_url = $api_url . '/account/senders.json?api_key=' . $key;
$res = smtpcom_get( $ch, $senders_url );
$senders = $res['senders'];
$summary = '';
if ($senders[0]){
	$sender = $senders[0];
	$date1 = '';
	$date2 = '';
	if($time_start) {
		$date1 = "00:00%20{$time_start}";
	}
	if($time_end) {
		$date2 = "23:59%20{$time_end}";
	}	
	//$summary_url = $api_url. '/account/senders/' . $sender['label'] . '/statistics/delivery.json?api_key=' . $key . '&time_start="'.$date1.'"&time_end="'.$date2.'"&limit=10000&offset=0&status=2';
	$summary_url = $api_url. '/account/senders/' . $sender['label'] . '/statistics/campaigns/123.json?api_key=' . $key;	
echo $summary_url;
	$res = smtpcom_get( $ch, $summary_url );print_r($res);
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
function smtpcom_get( $ch, $url ) {
	curl_setopt($ch, CURLOPT_URL, $url);
	$res = curl_exec($ch);
	if ( !curl_errno($ch) && $res ) {
		$parsed = json_decode($res, 1);
		if ( !$parsed['code'] ){
			return $parsed;
		} else {
			//echo 'Error ' . @$parse['code'] . '.' . @$parse['message'];
		}
	} else {
		echo 'Some error was occured: ' . curl_errno($ch);
	}
}