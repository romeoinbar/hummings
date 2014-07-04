<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
 
 	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "campaign")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	
	
defined('PHP5_PHP') or die("Application is stopping!!!");
global $main_content;
include_once "$php5RootAdminPath/modules/header.php"; 
$main_content = ""; 
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'campaigns'));
$task 		= php5GetParam($_REQUEST, 'task', 'main'); 
switch ($task){
	case 'delete':
		delCampaign();
		break;	
	default:
		listCampaign();
		break;
}
function delCampaign(){
	global $php5DB_en, $php5RootPath, $php5WebPath, $redirect ;
	$id	= intval(php5GetParam($_REQUEST, 'id', 0));
	require_once($php5RootPath . "/classes/campaign.class.php");
	$row = new Campaign($php5DB_en);
	$row->load($id);
	if ($row->campaign_name!=''){		
		$row->delete($id);
	}
	$redirect = sefBuild($php5WebPath, 'index.php?o=campaigns', 0);
}
function listCampaign(){
	global $php5DB_en, $smarty, $php5TemplateAdminFile, $language, $php5WebPath, $main_content ;	
	$php5DB_en->setQuery("SELECT *
						FROM #__campaigns						
						WHERE 1 
						ORDER BY posted_date DESC");	
	$rows = $php5DB_en->loadObjectList();		
	foreach ($rows as $row){	
			
		$row->campaign_name = stripslashes($row->campaign_name);
		$row->subject = stripslashes($row->subject);
		$row->started_date = date("m.j.Y", strtotime($row->started_date));	
		$row->finished_date = date("m.j.Y", strtotime($row->finished_date));
		$row->product = countProduct($row->campaign_id);
		if ($row->product>0){
			$php5DB_en->setQuery("SELECT c.*, p.`name`, p.price, p.sku
								FROM #__product AS p
								INNER JOIN #__campaign_product AS c ON p.product_id = c.product_id
								WHERE c.campaign_id=".$row->campaign_id.
								" ORDER BY p.`name`");
			$row->product_list = $php5DB_en->loadObjectList();
		}
		$row->link_del = sefBuild($php5WebPath, 'index.php?o=campaigns&m=main&task=delete&id='.$row->campaign_id, 0);
		$row->url = sefBuild($php5WebPath, 'index.php?o=campaigns&m=main&id='.$row->campaign_id, 1);
		$row->link_edit = sefBuild($php5WebPath, 'index.php?o=campaigns&m=edit&task=main&id='.$row->campaign_id, 0);	
		$row->link_addproduct = sefBuild($php5WebPath, 'index.php?o=campaigns&m=add_product&task=main&id='.$row->campaign_id, 0);	
		
	}
	$smarty->assign("rows", $rows);
	$smarty->assign('link_add', sefBuild($php5WebPath, 'index.php?o=campaigns&m=create', 0));
	$smarty->assign('link_order', sefBuild($php5WebPath, 'index.php?o=campaigns&m=main&task=order', 0));	
 	$tpl = sprintf($php5TemplateAdminFile, $language, 'campaigns', 'main.tpl');
	$main_content .=  $smarty->fetch($tpl); 
	//$smarty->display($tpl);
}
function countProduct($campaign_id){
	global $php5DB_en;
	$php5DB_en->setQuery("SELECT count(id) FROM #__campaign_product WHERE campaign_id=".$campaign_id);
	return $php5DB_en->loadResult();
}
$smarty->assign('main',$main_content);	
require_once($php5RootAdminPath . "/modules/main/bottom.php");
return;