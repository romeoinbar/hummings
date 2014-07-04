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
$main_content = ""; 
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'articles'));
$task 		= php5GetParam($_REQUEST, 'task', 'main'); 
switch ($task){		
	default:
		listTracks();
		break;
}

function listTracks(){
	global $php5DB_en, $smarty, $php5TemplateAdminFile, $language, $php5WebPath, $main_content ;	 
	$php5DB_en->setQuery("SELECT h.id, h.mailid, h.`action`, h.`date` 
						FROM #__newsletter_history AS h
						INNER JOIN #__newsletter_mail AS m ON h.mailid = m.mailid						
						WHERE m.published>0 						
						ORDER BY h.`date` DESC");	
	$rows = $php5DB_en->loadObjectList();
	$nls = array(0 => ' --- Select one ---');
	foreach ($rows as $row){
		$nls[$row->id] = date("m.d.Y H:i", $row->date).": Subject: ".stripslashes($row->action);		
	}
	$smarty->assign('nls',$nls);		
	
	$smarty->assign("link_detail", sefBuild($php5WebPath, 'index.php?o=tracking&m=detail&task=main', 0));	
 	$tpl = sprintf($php5TemplateAdminFile, $language, 'tracking', 'main.tpl');
	$main_content .=  $smarty->fetch($tpl); 
	//$smarty->display($tpl);
}
$smarty->assign('main',$main_content);	
require_once($php5RootAdminPath . "/modules/main/bottom.php");
return;