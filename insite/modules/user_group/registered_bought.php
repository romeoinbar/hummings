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
require_once($php5RootPath . "/classes/newsletter_user_group.class.php");
$row = new NewsletterUserGroup($php5DB);
@ini_set('memory_limit', '500M');
$task 		= php5GetParam($_REQUEST, 'task', '');
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'user_group'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'user_group', 'registered_bought.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
$row->load(2);
$msg = '';
//list user
$where = array();
$rows_user = array();
$where[] = " email != '' ";
$where[] = " user_id IN (SELECT user_id FROM #__order )  ";
////////////////
$query = "SELECT user_id, email, name "
. "\n FROM #__user "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY user_id ";
$php5DB->setQuery( $query );
$rows_user = $php5DB->loadObjectList();

if($msg) {
	$smarty->assign('msg', $msg);
}
$users = array();
$nextUsers = array();
$i = 0;
$j = 0;
$k = 0;
$arrId = array();
$arrEmail = array();
if(count($rows_user)) {
	foreach($rows_user as $row_temp) {
		$arrId[] = $row_temp->user_id;
		$arrEmail[] = $row_temp->email;		
		if($j==3) {
			$i++;
			$j = 0;
		}
		if($j == 0) {
			$users[$i][0]['idx'] = $k++;
			$users[$i][0]['id'] = '';
			$users[$i][0]['name'] = '';
			$users[$i][0]['email'] = '';
			$users[$i][0]['checked'] = 0;
			$users[$i][1]['idx'] = $k++;
			$users[$i][1]['id'] = '';
			$users[$i][1]['name'] = '';
			$users[$i][1]['email'] = '';
			$users[$i][1]['checked'] = 0;
			$users[$i][2]['idx'] = $k++;
			$users[$i][2]['id'] = '';
			$users[$i][2]['name'] = '';
			$users[$i][2]['email'] = '';
			$users[$i][2]['checked'] = 0;
		}
		$users[$i][$j]['id'] = $row_temp->user_id;
		$users[$i][$j]['name'] = $row_temp->name;
		$users[$i][$j]['email'] = $row_temp->email;
		$users[$i][$j]['checked'] = 0;
		$j++;
		
	}
}
$row->list_id = implode(';', $arrId);
$row->list_email = implode(';', $arrEmail);
$row->store();
//assign
$smarty->assign('list_id', $row->list_id);
$smarty->assign('users', $users);
$smarty->assign('urlloaduser', $php5WebPath.'/load_newsletter_user.php');
$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=user_group&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=user_group&m=create&task=add', 0));
$smarty->assign('main', $smarty->fetch($tpl));

return;
