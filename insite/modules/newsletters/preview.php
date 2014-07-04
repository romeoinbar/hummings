<?php
error_reporting(0);
/***************************************************************************
*                                register.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();
require_once($php5RootPath . "/classes/newsletter_mail.class.php");
require_once($php5RootPath . "/classes/newsletter_history.class.php");
require_once($php5RootPath . "/classes/newsletter_user_listmail.class.php");
require_once($php5RootPath . "/classes/newsletter_user.class.php");
require_once($php5RootPath . "/classes/newsletter_email_cron.class.php");
$row = new NewsletterMail($php5DB);

$task 		= php5GetParam($_REQUEST, 'task', '');
$id 		= php5GetParam($_REQUEST, 'id', '');
$row->load($id);
if(!$row->subject) {
	return;
}
$msg = '';
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'newsletters'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'newsletters', 'preview.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}

//list group
$where = array();
$where[] = " ug.id = ul.group_id ";
$where[] = " ul.mailid = '$id' ";
$rows_temp = array();
$query = "SELECT ug.list_email, ug.list_uncheck_id "
. "\n FROM #__newsletter_user_group ug, #__newsletter_user_listmail ul "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY ug.id";

$php5DB->setQuery( $query );
$php5DB->loadObject($row_tmp); 
if ($row_tmp->list_uncheck_id!=""){
	$php5DB->setQuery( "SELECT email FROM #__newsletter_user WHERE id IN (".str_replace(';', ',',$row_tmp->list_uncheck_id).")");	
	$arr_tmp = $php5DB->loadResultArray();		
	$strtmp = $row_tmp->list_email;	
	for ($i=0; $i< count($arr_tmp); $i++){		
		$strtmp = str_replace($arr_tmp[$i].';','',$strtmp);
		$strtmp = str_replace($arr_tmp[$i],'',$strtmp);
	}
	
	$list_email = $strtmp;
} else {
	$list_email = $row_tmp->list_email;
}

//check task
$msg = '';
$noerr = 1;
switch($task)
{
	case 'send':	 
	  if ($php5Session->getVar('sent')!=1){
		  $arrTo = explode(';', $list_email);
		  include $php5RootPath . '/includes/send_email.php';
			if(count($arrTo) > 0) {
				$arrBCC = $arrTo;
				if($row->html) {
					$is_html = 1;
					$body = $row->body."<img border='0' src='".$php5WebPath."/track.php?type=2&temp=".$row->mailid."' width='1' height='1'>";
				} else {
					$is_html = 0;
					$body = $row->altbody;
				}
				$rowHistory = new NewsletterHistory($php5DB);
				$rowHistory->id  = 0;
				$rowHistory->action  = $row->subject;
				$rowHistory->source  = $row->altbody;
				$rowHistory->ip = $_SERVER['REMOTE_ADDR'];
				$rowHistory->date = php5GMTTime();
				$rowHistory->mailid = $id;
				$msg = 'Emails were saved, they will be sent today';
				$php5Session->setVar('sent', 1);
				 
				if (!$rowHistory->store()) {	
					return false;
				}			
				//php5Mail( $row->fromemail, $row->fromname, php5GetConfig('config_email'), $row->subject, $body, $row->html,'', $arrBCC);
				$i = 1;
				foreach($arrTo as $to) {
					$row_cron = new NewsletterEmailCron($php5DB);
					$row_cron->id = 0;
					$row_cron->email = $to;
					$row_cron->title = $row->subject;
					$row_cron->body = $body;
					$row_cron->html = $is_html;
					$row_cron->type = $i % 2;
					$row_cron->date_create = php5GMTTime();
					$row_cron->mailid = $row->mailid;
					$row_cron->date_update = php5GMTTime();
					$row_cron->status = 0;
					$row_cron->historyid = $rowHistory->id;
					$row_cron->store();
					$i++;
					//send_email_newsletter($to, $row->subject, $body, $is_html, $id);
				}
			}
			php5Redirect(sefBuild($php5WebPath, 'index.php?o=newsletters', 0));
	  } else {
		$msg = 'Emails were saved, they will be sent today';
	  }
		break;
	default:
		$php5Session->destroy('sent');		
		break;	
		
}
if($msg) {
	$smarty->assign('msg', $msg);
}
$smarty->assign('list_email', substr($list_email, 0, 150)."..."); 
//$smarty->assign('list_email', $list_email); 
$smarty->assign('mailid', $row->mailid);
$smarty->assign('subject', $row->subject);
$smarty->assign('body', $row->body);
$smarty->assign('altbody', $row->altbody);
$smarty->assign('published', $row->published);
$smarty->assign('senddate', $row->senddate);
$smarty->assign('created', date('d/m/Y h:i', $row->created));
$smarty->assign('fromname', $row->fromname);
$smarty->assign('fromemail', $row->fromemail);
$smarty->assign('replyname', $row->replyname);
$smarty->assign('replyemail', $row->replyemail);
$smarty->assign('type', $row->type);
$smarty->assign('visible', $row->visible);
$smarty->assign('userid', $row->userid);
$smarty->assign('alias', $row->alias);
$smarty->assign('attach', $row->attach);
$smarty->assign('html', $row->html);
$smarty->assign('tempid', $row->tempid);
$smarty->assign('key', $row->key);
$smarty->assign('frequency', $row->frequency);
$smarty->assign('params', $row->params);
$smarty->assign('sentby', $row->sentby);
$smarty->assign('metakey', $row->metakey);
$smarty->assign('metadesc', $row->metadesc);
$smarty->assign('filter', $row->filter);
$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=newsletters&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=newsletters&m=preview&task=send&id='.$id, 0));
$smarty->assign('main', $smarty->fetch($tpl));
//$smarty->display($tpl);

return;
