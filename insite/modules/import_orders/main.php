<?php
/***************************************************************************
*                                main.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'import_orders'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'import_orders', 'main.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//get
require_once($php5RootPath . "/classes/product.class.php");
require_once($php5RootPath . "/classes/order.class.php");
require_once($php5RootPath . "/classes/order_item.class.php");
require_once ($php5RootPath . "/includes/PHPExcel.php");

$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
$arrMsg = array();
$msg ='';
//task
if($task=='import') {
	$cntError = 0;
	$cntSucc = 0;	
	
	if(isset($_POST["Go"]) && ""!=$_POST["Go"]) //form was submitted
	{
		//$csv->file_name = $_FILES['file_source']['tmp_name'];	
		$source = $_FILES['file_source']['name'];	
		$objReader = new PHPExcel_Reader_Excel5();
		$objReader->setReadDataOnly(true);
		$objPHPExcel = $objReader->load($_FILES['file_source']['tmp_name']);
		$rowIterator = $objPHPExcel->getActiveSheet()->getRowIterator();
		$array_data = array();
		foreach($rowIterator as $row){
			$cellIterator = $row->getCellIterator();
			$cellIterator->setIterateOnlyExistingCells(false); // Loop all cells, even if it is not set
			//if(1 == $row->getRowIndex ()) continue;//skip first row
			$rowIndex = $row->getRowIndex ();
		
			foreach ($cellIterator as $cell) {
					$array_data[$rowIndex][$cell->getColumn()] = trim($cell->getCalculatedValue());
			}
		}
		//start import now
		//$excel->read($_FILES['file_source']['tmp_name']);

		if(count($array_data) > 1 && count($array_data[1]) == 23) {
			$arrExcel = array();
			$x=1;
			foreach($array_data as $arr) {
				$y=1;
				foreach($arr as $k => $v) {
					$arrExcel[$x-1][$y-1] = trim($v);
					$y++;
				}
				$x++;
			}
			//check 
			for($i = 1;$i < count($arrExcel);$i++) {
				if(count($arrExcel[$i]) != 23) {
					//unset($arrExcel[$i]);
					if(($i+1) < count($arrExcel)) {
						$arrMsg[] = "The number of columns is wrong at line " . ($i+1) . ".";
						$cntError++;
					}					
					continue;
				}
				$arr = $arrExcel[$i];
				//check order id  empty
				if(trim($arrExcel[$i][0]) == '') {
					$arrMsg[] = "You have to input order id at line " . ($i+1) . ".";
					$cntError++;
					continue;
				}				
				//check user id  empty
				if(trim($arrExcel[$i][3]) == '') {
					$arrMsg[] = "You have to input user id at line " . ($i+1) . ".";
					$cntError++;
					continue;
				}				
				
				//check product sku empty
				if(trim($arrExcel[$i][19]) == '') {
					$arrMsg[] = "You have to input product sku at line " . ($i+1) . ".";
					$cntError++;
					continue;
				}				
				//check order id valid
				if(preg_match("/^([0-9])+$/", trim($arrExcel[$i][0]))==false) {
					$arrMsg[] = $arrExcel[$i][0] . " is invalid (0-9) at line " . ($i+1) . ".";
					$cntError++;
					continue;
				}
				//check user idd valid
				if(preg_match("/^([0-9])+$/", trim($arrExcel[$i][3]))==false) {
					$arrMsg[] = $arrExcel[$i][3] . " is invalid (0-9) at line " . ($i+1) . ".";
					$cntError++;
					continue;
				}

				//check product sku valid
				if(preg_match("/^([a-zA-Z0-9\_\-\(\)])+$/", trim($arrExcel[$i][19]))==false) {
					$arrMsg[] = $arrExcel[$i][19] . " is invalid (a-z, 0-9) at line " . ($i+1) . ".";
					$cntError++;
					continue;
				}
				/////////////////////////check user id
				$str = preg_replace( array("/,/", "/_/", "/%/"), array("\,", "\_", "\%"), $arr[3]);
				$query = "SELECT user_id "
					. "\n FROM #__user "
					. "\n WHERE user_id = '" . mysql_escape_string($str) . "' LIMIT 1"
					;
				$php5DB->setQuery( $query );
				$user_id = intval($php5DB->loadResult());
				if(!$user_id) {
					$arrMsg[] = $arrExcel[$i][3] . " is invalid at line " . ($i+1) . ".";
					$cntError++;
					continue;				
				}				
				/////////////////////////check product sku
				$str = preg_replace( array("/,/", "/_/", "/%/"), array("\,", "\_", "\%"), $arr[19]);
				$query = "SELECT product_id "
					. "\n FROM #__product "
					. "\n WHERE sku = '" . mysql_escape_string($str) . "' LIMIT 1"
					;
				$php5DB->setQuery( $query );
				$productId = intval($php5DB->loadResult());
				if(!$productId) {
					$arrMsg[] = $arrExcel[$i][19] . " is invalid at line " . ($i+1) . ".";
					$cntError++;
					continue;				
				}
		
				$rowProduct = new ClsProduct($php5DB);
				
				/////////////////////////check product sku
				$str = preg_replace( array("/,/", "/_/", "/%/"), array("\,", "\_", "\%"), $arr[19]);
				$query = "SELECT product_id "
					. "\n FROM #__product "
					. "\n WHERE sku = '" . mysql_escape_string($str) . "' LIMIT 1"
					;
				$php5DB->setQuery( $query );
				$productId = intval($php5DB->loadResult());
				if($productId) {
					$rowProduct->load($productId);
				}
				$rowOrder = new Order($php5DB);
				$str = preg_replace( array("/,/", "/_/", "/%/"), array("\,", "\_", "\%"), $arr[0]);
				$query = "SELECT order_id "
					. "\n FROM #__order "
					. "\n WHERE order_id = '" . mysql_escape_string($str) . "' LIMIT 1"
					;
				$php5DB->setQuery( $query );
				$order_id = intval($php5DB->loadResult());
				if($order_id) {
					$rowOrder->load($order_id);
				} else {
					$rowOrder->order_id = '';
				}
				///////////////////////////////////////////////////
				//$row->sku   						= $arr[2];
				$rowOrder->order_date      = $arr[1];
				$rowOrder->sales_doc_type      = $arr[2];
				$rowOrder->user_id      = $arr[3];
				$rowOrder->title      = $arr[4];
				$rowOrder->name      = $arr[5];
				$rowOrder->block      = $arr[6];
				$rowOrder->unit      = $arr[7];
				$rowOrder->building      = $arr[8];
				$rowOrder->address1      = $arr[9];
				$rowOrder->address2      = $arr[10];
				$rowOrder->city      = $arr[11];
				$rowOrder->country      = $arr[12];
				$rowOrder->telephone1      = $arr[13];
				$rowOrder->telephone2      = $arr[14];
				$rowOrder->email      = $arr[15];
				$rowOrder->order_status      = $arr[16];
				$rowOrder->payment_status      = $arr[17];
				$rowOrder->delivery_status      = $arr[18];
				if(!$rowOrder->store()) {
					$msg = $msgAlert = "Error!!! Please try again!!!";
				} else {
					$cntSucc++;
					$msg = $msgAlert = $lang['_UPDATE_MSG_'];
				}
				$rowOrderItem = new OrderItem($php5DB);
				$str1 = preg_replace( array("/,/", "/_/", "/%/"), array("\,", "\_", "\%"), $arr[0]);
				$str2 = preg_replace( array("/,/", "/_/", "/%/"), array("\,", "\_", "\%"), $arr[19]);
				$query = "SELECT order_item_id "
					. "\n FROM #__order_item "
					. "\n WHERE order_id = '" . mysql_escape_string($str1) . "' AND sku = '". mysql_escape_string($str2)."' LIMIT 1"
					;
				$php5DB->setQuery( $query );
				$order_item_id = intval($php5DB->loadResult());
				if($order_item_id) {
					$rowOrderItem->load($order_item_id);
				} else {
					$rowOrderItem->order_item_id = '';
				}
				$rowOrder->sku      = $arr[19];
				$rowOrder->product_name      = $arr[20];
				$rowOrder->qty      = $arr[21];
				$rowOrder->unit_price      = $arr[22];
				if(!$rowOrderItem->store()) {
					$msg = $msgAlert = "Error!!! Please try again!!!";
				} else {
					$cntSucc++;
					$msg = $msgAlert = $lang['_UPDATE_MSG_'];
				}
			}
		} else {
			$msgAlert = "Error!!! File is wrong structure!!!";
		}
	}
	$st = "";
	if(count($arrMsg) > 0) {
		foreach($arrMsg as $v) {
			$st .= $v."\n";
		}
	}
	$arrBCC = array('nam@ua-consultants.com');
	$body = sprintf($lang['_MSS_DEALER_5_'],  date('m/d/Y', php5GMTTime()), $cntSucc, $cntError, $source, $st);
	//echo php5GetConfig('config_email'), "Motul", php5GetConfig('config_admin_email'), sprintf($lang['_MSS_DEALER_5_'], date('m/d/Y', php5GMTTime())), $body;
	php5Mail( php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), sprintf($lang['_MSS_DEALER_6_'], date('m/d/Y', php5GMTTime())), $body, 0, '', $arrBCC);
}

$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=import_orders&m=main&task=import', 0));
$smarty->assign('msg', $msg);
$smarty->assign('arrMsg', $arrMsg);
$smarty->assign('main', $smarty->fetch($tpl));



