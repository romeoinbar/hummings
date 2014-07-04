<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
require_once($php5RootPath . "/classes/order.class.php");

$order_number = php5GetParam($_REQUEST, "order_number", "");
if ($order_number!=""){
	$php5Session->setVar('s_order_number',$order_number);
}

$php5DB_en->setQuery("SELECT order_date, order_id
					FROM #__order	
					WHERE sales_order_number ='".$php5Session->getVar('s_order_number')."'");					

$php5DB_en->loadObject($order_status);
if (@$order_status){
	$order_status->order_date = date('m.d.Y',strtotime($order_status->order_date));	
	$php5DB_en->setQuery("SELECT od.*, ds.caption 
						FROM #__order_delivery AS od
						INNER JOIN #__delivery_status AS ds ON od.delivery_status = ds.delivery_status_id
						WHERE od.order_id=".$order_status->order_id."
						");
	$deliveries = $php5DB_en->loadObjectList();
	foreach($deliveries as $delivery){
		$delivery->from_date = date("d/m/Y", strtotime($delivery->from_date));
		$delivery->to_date = date("d/m/Y", strtotime($delivery->to_date));
	}
	$smarty->assign('deliveries',$deliveries);	
}

$smarty->assign('is_exist',($order_status)?1:0);
$smarty->assign('order_number',$php5Session->getVar('s_order_number'));	
$smarty->assign('order_status',$order_status);	
$tpl = sprintf($php5TemplateFile, $language, 'order_status', 'view.tpl');
$smarty->assign("url_search_status", sefBuild($php5WebPath, 'index.php?o=order_status&m=view', 1));
$main_content =  $smarty->fetch($tpl); 
$smarty->assign('main',$main_content);	
?>