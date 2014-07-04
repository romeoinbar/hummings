<?php
/***************************************************************************
*                                register.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
global $main_content;
include_once "$php5RootAdminPath/modules/header.php"; 
$main_content = ""; 
require_once($php5RootPath . "/classes/campaign.class.php");
require_once($php5RootPath . "/classes/campaign.product.class.php");

$campaignid = intval(php5GetParam($_REQUEST, 'id', 0));

$campaign = new Campaign($php5DB_en);
$campaign->load($campaignid);

$campaign->campaign_name = stripslashes($campaign->campaign_name);
$campaign->subject = stripslashes($campaign->subject);
$campaign->content = php5FormatContent($campaign->content);
$campaign->started_date = date("m/d/Y", strtotime($campaign->started_date));
$campaign->finished_date = date("m/d/Y", strtotime($campaign->finished_date));

$smarty->assign("campaign", $campaign);
$task 		= php5GetParam($_REQUEST, 'task', 'main');

$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'campaigns'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'campaigns', 'add_product.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//check task
$msg = '';
$noerr = 1;
switch($task)
{
	case 'save':
		$product_list = php5GetParam($_REQUEST, 'product', '');				
		if (count($product_list)>0){
			$php5DB_en->setQuery("DELETE FROM #__campaign_product WHERE campaign_id=".$campaignid." AND product_id NOT IN (".implode(',',$product_list).")");
			$php5DB_en->query();
			
			for ($i=0; $i<count($product_list); $i++){							
				$php5DB_en->setQuery("SELECT id FROM #__campaign_product WHERE product_id=".$product_list[$i]." AND campaign_id=".$campaignid); 
				
				if (@$php5DB_en->loadResult()>0){
					$php5DB_en->setQuery("UPDATE #__campaign_product SET discount=".php5GetParam($_REQUEST, 'discount'.$product_list[$i], '')." WHERE id=".intval($php5DB_en->loadResult()));
					$php5DB_en->query();
				} else {
					$php5DB_en->setQuery("INSERT #__campaign_product(product_id, campaign_id, discount) VALUES(".$product_list[$i].", ".$campaignid.", '".php5GetParam($_REQUEST, 'discount'.$product_list[$i], '') ."')");
					$php5DB_en->query();
				}
			}
		}
		break;
	default:
		break;	
		
}
if($msg) {
	$smarty->assign('msg', $msg);
}

//Product
$php5DB_en->setQuery("SELECT * FROM #__product WHERE publish>0 ORDER BY `name` ASC");
$pros = $php5DB_en->loadObjectList();
foreach ($pros as $pro){
	$php5DB_en->setQuery("SELECT id, discount FROM #__campaign_product WHERE product_id=".$pro->product_id." AND campaign_id=".$campaignid);
	$php5DB_en->loadObject($obj);
	
	$pro->discount = (@$obj->discount!='0.00')?@$obj->discount:'';
	$pro->style = (@$obj->id)?'row1':'row0';
	$pro->checked = (@$obj->id)?'checked="checked"':'';
	unset($obj);
}
$smarty->assign('pros', $pros);

//assign
$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=campaigns&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=campaigns&m=add_product&task=save&id='.$campaignid, 0));
$main_content .=  $smarty->fetch($tpl); 
$smarty->assign('main',$main_content);	
require_once($php5RootAdminPath . "/modules/main/bottom.php");
return;
