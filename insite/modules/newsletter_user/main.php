<?php
//error_reporting(E_ALL);
//ini_set('display_errors','On');
defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();

include($php5RootPath . '/classes/newsletter_user.class' . $php5Ext);
$smarty->assign('link_view_user', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main&task=view', 0));
$smarty->assign('link_add_user', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main&task=add', 0));
$smarty->assign('link_list_user', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main&task=list', 0));
$smarty->assign('link_edit_user', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main&task=edit', 0));
$smarty->assign('link_del_user', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main&task=delete', 0));

switch ($task){	
	case 'search':
	default:
		listUsers($task);
		break;
}

function listUsers($task = 'search'){	
	global $smarty, $php5RootAdminPath, $type, $php5Session, $php5WebPath, $php5TemplateAdminFile, $lang, $define, $php5DB;		
	
	global $msgAlert, $redirect;		
	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "manage_users")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}
	///////////////////////////
	if ($task == 'search') {
		$s_email = php5GetParam( $_REQUEST, 's_email', '' );
		$php5Session->setVar("100_s_email", $s_email);
		$s_subscribe = php5GetParam( $_REQUEST, 's_subscribe', '' );
		$php5Session->setVar("100_s_subscribe", $s_subscribe);		
	} else {
		$s_email = $php5Session->getVar("100_s_email");
		$s_subscribe = $php5Session->getVar("100_s_subscribe");
	}
	
	$s_email = $php5Session->getVar("100_s_email");	
	$s_subscribe = $php5Session->getVar("100_s_subscribe");	
	
	$sWhere = '';
	if ($s_subscribe)
		$sWhere = " AND subscribe='".$s_subscribe."'";

	if ($s_email) {
		$sWhere .= " AND email like '%" . mysql_real_escape_string($s_email) . "%' ";
	}	
	$user_status = $define->NEWSLETTER_USER_TYPE();
	$user_type = $define->NEWSLETTER_TYPE();	
	
	//paging
	$currPage = php5GetParam($_REQUEST, 'p', 1);
	$limit = _PHP5_MAXRECORD;
	$php5DB->setQuery("SELECT COUNT(*) FROM #__newsletter_user WHERE 1=1 ".$sWhere." ORDER BY date DESC");
	$recordTotal = $php5DB->loadResult();
	$startLimit= ($currPage - 1) * $limit;
	
	$pageTotal = ceil($recordTotal / $limit);
	$currPage = $currPage > $pageTotal ? $pageTotal : $currPage;
	$paging = new php5Paging($pageTotal, $currPage);
	$paging->url = sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main', 0, 1);
	$smarty->assign('paging', $paging->showDivPages());
	
	// User list
	$php5DB->setQuery("SELECT * FROM #__newsletter_user WHERE 1=1 ".$sWhere." ORDER BY date DESC LIMIT $startLimit, $limit");
	$rows= $php5DB->loadObjectList();
	foreach ($rows as $row){
		if(!$row->subscribe) $row->subscribe = 1; 
		$row->user_status = @$user_status[$row->subscribe];	
		$row->type = @$user_type[$row->type];	
		if($row->date){
			$row->date = date('m/d/Y', $row->date);
		}
		$row->mss = sprintf($lang["_MSS_DEL_USER"], $row->id, $row->name);	
	}
	$smarty->assign('rows', $rows);	
	
	$smarty->assign('s_email', $s_email);	
	$smarty->assign('s_subscribe', $s_subscribe);	
	$smarty->assign('user_status', $user_status);	
	$smarty->assign('_SELECT_USER_TYPE', $lang["_SELECT_USER_TYPE"]);
	$smarty->assign('_USER_TYPE', "Status");
	$smarty->assign('_ACCOUNT_MANAGER', $lang["_ACCOUNT_MANAGER"]);	
	$smarty->assign('_USER_TYPE', "Status");
	$smarty->assign('_WORKSHOP', $lang["_WORKSHOP"]);
	$smarty->assign('_NAME', $lang["_NAME"]);
	$smarty->assign('_EMAIL', $lang["_EMAIL"]);
	
	$smarty->assign('_CREATE', $lang["_CREATE"]);
	$smarty->assign('_DELETE', $lang["_DELETE"]);
	$smarty->assign('_EDIT', $lang["_EDIT"]);
	$smarty->assign('_ADD_ITEM', $lang["_ADD_ITEM"]);		
	$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=newsletter_user&m=main&task=search', 0));
	$smarty->assign('main', $smarty->fetch(sprintf($php5TemplateAdminFile, 'en', $type , 'list.tpl')));
}
