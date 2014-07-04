<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");

if(!$define->checkAdminType($php5Session->getVar("admin_type"), "tracking")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=tracking&m=main', 0);	
		return;
	}	
global $main_content;
include_once "$php5RootAdminPath/modules/header.php"; 
require_once($php5RootPath . "/classes/newsletter_mail.class.php");
$main_content = ""; 
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'articles'));
$task 		= php5GetParam($_REQUEST, 'task', 'main'); 
switch ($task){		
	default:
		detailTrack();
		break;
}


function detailTrack(){
	global $php5DB_en, $smarty, $php5TemplateAdminFile, $language, $php5WebPath, $main_content ;
	$api_url = 'https://api.smtp.com/v1/';
	$key     = KEY_API_HUMMING; #your_key	
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	$senders_url = $api_url . '/account/senders.json?api_key=' . $key;
	$res = smtpcom_get( $ch, $senders_url );
	$senders = $res['senders'];

	$nlid = php5GetParam($_REQUEST, "id", 0);
	
	
	//////////////////////////////////////////
	$php5DB_en->setQuery("SELECT * 
						FROM #__newsletter_history
						WHERE id='".$nlid."'");
	$php5DB_en->loadObject($row);
	
	//print_r($row);
	
	$camp = new NewsletterMail($php5DB_en);
	$camp->load($row->mailid);
	
	$camp->created = date("H:i m.d.Y", $camp->created);	
	
	//$camp->status = $sent?"Sent":"Not send";//($sent>=count(explode(';', $tmp)))?"Sent":"Not send";
	
	$smarty->assign('camp',$camp);	

	$arr_camps = '';
	//print_r($row);
	if ($row) {
		
		
		$php5DB_en->setQuery("SELECT count(id) 
						FROM #__newsletter_email_cron
						WHERE mailid='".$camp->mailid."' AND historyid=".$nlid." AND status=2");
		
	    $received_count = $php5DB_en->loadResult();
		
		$php5DB_en->setQuery("SELECT count(id) 
						FROM #__newsletter_email_cron
						WHERE mailid='".$camp->mailid."' AND historyid=".$nlid." AND status=0");
	    $delivered_count = $php5DB_en->loadResult();
		
		if ($delivered_count>0)
				$camp->status = 'Sending';
			if ($delivered_count==0)
				$camp->status = 'Sent';
			if (($delivered_count==0)&&($received_count==0))
				$camp->status = 'Not Send';
		
		$arr_camp = array();
		$arr_camp['camp'] = $camp;
		$arr_camp['date'] = date('H:i d.m.Y', $row->date);
		/////////////////////bounced
		$summary = '';
		if ($senders[1]){
			$sender = $senders[1];
			$date1 = '';
			$date2 = '';
			$date1 = "00:00%20".date("d-m-Y", $row->date)."";
			$date2 = "23:59%20".date("d-m-Y", $row->date)."";
			$summary_url = $api_url. '/account/senders/' . $sender['label'] . '/statistics/summary.json?api_key=' . $key . '&time_start="'.$date1.'"&time_end="'.$date2.'"';

			$res = smtpcom_get( $ch, $summary_url );
			
			$summary = $res['summary'];
			$arr_camp['received_count'] = $received_count;
			$arr_camp['bounced_count'] = $summary['bounced_count'];
			$arr_camp['delivered_count'] = $delivered_count;
			
			$arr_camp['link_export'] = sefBuild($php5WebPath, 'index.php?o=tracking&m=export_bounced', 0)."?&time_start=".date("d-m-Y", $row->date)."&time_end=".date("d-m-Y", $row->date);
			$arr_camps[$arr_camp['date']] = $arr_camp;
			
			
		}		
	}
	$smarty->assign('arr_camps',$arr_camps);	
	//=============================================
	// Get total_recipientss	
	$php5DB_en->setQuery("SELECT DISTINCT date_added, typeoftemp
					FROM #__rate_detail				
					WHERE typeoftemp=".$camp->mailid." 
					ORDER BY date_added DESC");

	$rows = $php5DB_en->loadObjectList();	
	$t1_count1 =0;
	$t1_count2 =0;
	foreach ($rows as $row){
		
		$php5DB_en->setQuery("SELECT SUM(id) AS count1
					FROM #__rate_detail				
					WHERE typeoftemp=".$camp->mailid." AND type=2 AND date_added='".$row->date_added."'
					ORDER BY date_added DESC");
		$row->count1 = intval($php5DB_en->loadResult());
		$t1_count1 += $row->count1;
		$php5DB_en->setQuery("SELECT SUM(id) AS count2
					FROM #__rate_detail				
					WHERE typeoftemp=".$camp->mailid." AND type=1 AND date_added='".$row->date_added."'
					ORDER BY date_added DESC");
		$row->count2 = intval($php5DB_en->loadResult());
		$t1_count2 += $row->count2;
		$date_added = date("d.m.Y", strtotime($row->date_added));
		$row->date_added = date("m.d.Y", strtotime($row->date_added));
		/*if(isset($arr_camps[$date_added])) {
			$arr_camp = $arr_camps[$date_added];
			$row->received_count = $arr_camp['received_count'];
			$row->bounced_count = $arr_camp['bounced_count'];
			$row->delivered_count = $arr_camp['delivered_count'];			
		} else {
			$row->received_count = 0;
			$row->bounced_count = 0;
			$row->delivered_count = 0;
		}*/
		
	}
	$smarty->assign("rows", $rows);	
	$smarty->assign("t1_count1", $t1_count1);	
	$smarty->assign("t1_count2", $t1_count2);
	
	$tpl = sprintf($php5TemplateAdminFile, $language, 'tracking', 'detail.tpl');
	$main_content .=  $smarty->fetch($tpl);
}

$smarty->assign('main',$main_content);	

require_once($php5RootAdminPath . "/modules/main/bottom.php");
return;