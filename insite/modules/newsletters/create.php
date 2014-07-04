<?php
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
require_once($php5RootPath . "/classes/newsletter_user_listmail.class.php");
$row = new NewsletterMail($php5DB);

$task 		= php5GetParam($_REQUEST, 'task', '');
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'newsletters'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'newsletters', 'create.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//list group
$where = array();
$rows_temp = array();
$query = "SELECT id, name "
. "\n FROM #__newsletter_user_group "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY id";
$php5DB->setQuery( $query );
$rows_group = $rows_temp = $php5DB->loadObjectList();
$grouptotal = count($rows_temp);
$groups = array();
$i = 0;
$j = 0;
$k = 0;
if(count($rows_temp)) {
	foreach($rows_temp as $row_temp) {
		if($j==3) {
			$i++;
			$j = 0;
		}
		if($j == 0) {
			$groups[$i][0]['idx'] = $k++;
			$groups[$i][0]['id'] = '';
			$groups[$i][0]['name'] = '';
			$groups[$i][0]['checked'] = 0;
			$groups[$i][1]['idx'] = $k++;
			$groups[$i][1]['id'] = '';
			$groups[$i][1]['name'] = '';
			$groups[$i][1]['checked'] = 0;
			$groups[$i][2]['idx'] = $k++;
			$groups[$i][2]['id'] = '';
			$groups[$i][2]['name'] = '';
			$groups[$i][2]['checked'] = 0;
		}
		$groups[$i][$j]['id'] = $row_temp->id;
		$groups[$i][$j]['name'] = $row_temp->name;
		$groups[$i][$j]['checked'] = 0;
		$j++;
	}
}
//check task
$msg = '';
$noerr = 1;
switch($task)
{
	case 'add':
		$row->bind( $_POST );
		$publish		= php5GetParam($_REQUEST, 'publish', '');
		if(!$publish[0]) {
			$row->published = 0;
		} else {
			$row->published = 1;
		}
		$html		= php5GetParam($_REQUEST, 'htmls', '');
		if(!$html[0]) {
			$row->html = 0;
		} else {
			$row->html = 1;
		}
		if(!trim($row->subject)) {
			$noerr = 0;
			$msg = $msgAlert = sprintf($lang['_BLANK_MSG_'], 'Subject');
		}
		$chkGroup 		= php5GetParam($_REQUEST, 'chkGroup', '');
		if(count($chkGroup) > 0 && is_array($chkGroup)) {
			$row->list_group = implode(";", $chkGroup);
		} else {
			$row->list_group = '';
		}
		
		if($noerr) {
			$row->mailid = '';			
			$row->alias = preg_replace('/\s+/', '-', $row->subject);		
			$row->created = php5GMTTime();
			if (!$row->store()) {
				$msg = $msgAlert = "Error!!! Please try again!!!";		
			} else {
				$msg = $msgAlert = $lang['_UPDATE_MSG_'];				
				$redirect = sefBuild($php5WebPath, 'index.php?o=newsletters&m=main', 0);
			}
			if(count($chkGroup) > 0 && is_array($chkGroup)) {
				foreach($chkGroup as $k => $v) {
					$rowTemp = new NewsletterUserListmail($php5DB);
					$rowTemp->id = '';
					$rowTemp->group_id = $v;
					$rowTemp->mailid = $row->mailid;
					$rowTemp->store();
				}
			}
			$row1 = new NewsletterMail($php5DB);
			$row1->body = str_replace("track.php?type=1", "track.php?type=1&temp=".$row->mailid, $row->body);
			$row1->mailid = $row->mailid;
			$row1->store();
			
		}
		
		break;
		default:
		$row->fromname = php5GetConfig('config_sitename');
		$row->fromemail = php5GetConfig('config_email');
		break;	
		
}
if($msg) {
	$smarty->assign('msg', $msg);
}
//assign
if(count($groups) > 0) {
	$smarty->assign('groups', $groups);
	$smarty->assign('grouptotal', $grouptotal);
	/*if(count($arr) == $grouptotal) {
		$smarty->assign('checkAll', 1);
	}*/
}
$smarty->assign('mailid', $row->mailid);
$smarty->assign('subject', $row->subject);
$smarty->assign('body', $row->body);
$smarty->assign('altbody', $row->altbody);
$smarty->assign('published', $row->published);
$smarty->assign('senddate', $row->senddate);
$smarty->assign('created', date('d/m/Y h:i', php5GMTTime()));
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
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=newsletters&m=create&task=add', 0));
$smarty->assign('main', $smarty->fetch($tpl));

//$smarty->display($tpl);

return;
