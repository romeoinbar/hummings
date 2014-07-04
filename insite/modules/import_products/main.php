<?php
/***************************************************************************
*                                main.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'import_products'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'import_products', 'main.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
@ini_set('memory_limit', '500M');
//get
require_once($php5RootPath . "/classes/product.class.php");
require_once($php5RootPath . "/classes/product_category.class.php");
require_once($php5RootPath . "/classes/product_category_link.class.php");
require_once ($php5RootPath . "/includes/PHPExcel.php");

$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
$arrMsg = array();
$msg ='';
//bcc
$arrBCC = array();
//task
if($task=='import') {
	$cntError = 0;
	$cntSucc = 0;	
	if(isset($_POST["Go"]) && ""!=$_POST["Go"]) //form was submitted
	{
		//category
		//$csv->file_name = $_FILES['file_source']['tmp_name'];	
		$source = $_FILES['file_source']['name'];	
		$objReader = new PHPExcel_Reader_Excel5();
		$objReader->setLoadSheetsOnly( array("Product Category") );
		$objReader->setReadDataOnly(true);
		$objPHPExcel = $objReader->load($_FILES['file_source']['tmp_name']);
		//$rowIterator = $objPHPExcel->getActiveSheet()->getRowIterator();
		$array_data = array();
		if($objPHPExcel->getSheetCount() > 0) {
			$rowIterator = $objPHPExcel->getSheet()->getRowIterator();
			foreach($rowIterator as $row){
				$cellIterator = $row->getCellIterator();
				$cellIterator->setIterateOnlyExistingCells(false); // Loop all cells, even if it is not set
				//if(1 == $row->getRowIndex ()) continue;//skip first row
				$rowIndex = $row->getRowIndex ();
			
				foreach ($cellIterator as $cell) {
						$array_data[$rowIndex][$cell->getColumn()] = trim($cell->getCalculatedValue());
				}
			}
		}
		

		if(count($array_data) > 1 && count($array_data[1]) == 8) {
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
				if(count($arrExcel[$i]) != 8) {
					//unset($arrExcel[$i]);
					if(($i+1) < count($arrExcel)) {
						$arrMsg[] = "The number of columns is wrong at line " . ($i+1) . ".";
						$cntError++;
					}					
					continue;
				}
				$arr = $arrExcel[$i];	
				//check category id empty
				if(trim($arrExcel[$i][0]) == '') {
					$arrMsg[] = "You have to input category id at line " . ($i+1) . ".";
					$cntError++;
					continue;
				}
				//check category name empty
				if(trim($arrExcel[$i][2]) == '') {
					$arrMsg[] = "You have to input category name at line " . ($i+1) . ".";
					$cntError++;
					continue;
				}				
				/////////////////////////check category
				$str = preg_replace( array("/,/", "/_/", "/%/"), array("\,", "\_", "\%"), $arr[0]);
			
				
				$query = "SELECT product_category_id "
					. "\n FROM #__product_category "
					. "\n WHERE product_category_id = '" . mysql_real_escape_string($str) . "' LIMIT 1"
					;
				$php5DB->setQuery( $query );
				$checkCategoryId = intval($php5DB->loadResult());
				$row_category = new ProductCategory($php5DB);
				if($checkCategoryId  > 0) {
					$row_category->product_category_id         = $checkCategoryId;
				} else {
					$arrMsg[] =  "Category id " . $arr[0] . " at line ".($i+1)." does not exist ".".";
					$cntError++;
					continue;
				}
				
				$row_category->category_type         = $arr[1];
				$row_category->name         = $arr[2];
				$row_category->publish         = $arr[3];
				$row_category->parent_id         = $arr[4];
				if($arr[5]) {
					$row_category->image         			= "images/category/".$arr[5];
				} else {
					$row_category->image         			= "";
				}
				$row_category->description         = $arr[6];
				//$row_category->code         = $arr[7];
				if(!$row_category->store()) {					
					$msgAlert = "Error!!! Please try again!!!";
				} else {
					$cntSucc++;
				}
			}
		} else {
			$arrMsg[] = "Category is wrong structure.";
			$cntError++;
		}
		//$csv->file_name = $_FILES['file_source']['tmp_name'];	
		$source = $_FILES['file_source']['name'];	
		$objReader = new PHPExcel_Reader_Excel5();
		$objReader->setLoadSheetsOnly( array("Sheet 1", "Product") );
		$objReader->setReadDataOnly(true);
		$objPHPExcel = $objReader->load($_FILES['file_source']['tmp_name']);
		//$rowIterator = $objPHPExcel->getActiveSheet()->getRowIterator();
		$array_data = array();
		if($objPHPExcel->getSheetCount() > 0) {
			$rowIterator = $objPHPExcel->getSheet()->getRowIterator();
			foreach($rowIterator as $row){
				$cellIterator = $row->getCellIterator();
				$cellIterator->setIterateOnlyExistingCells(false); // Loop all cells, even if it is not set
				//if(1 == $row->getRowIndex ()) continue;//skip first row
				$rowIndex = $row->getRowIndex ();
			
				foreach ($cellIterator as $cell) {
						$array_data[$rowIndex][$cell->getColumn()] = trim($cell->getCalculatedValue());
				}
			}
		}
		
		if(count($array_data) > 1 && count($array_data[1]) == 27) {
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
				if(count($arrExcel[$i]) != 27) {
					//unset($arrExcel[$i]);
					if(($i+1) < count($arrExcel)) {
						$arrMsg[] = "The number of columns is wrong at line " . ($i+1) . ".";
						$cntError++;
					}					
					continue;
				}
				$arr = $arrExcel[$i];
				
				//check product sku empty
				if(trim($arrExcel[$i][2]) == '') {
					$arrMsg[] = "You have to input product sku at line " . ($i+1) . ".";
					$cntError++;
					continue;
				}				
		
				//check product sku valid
				if(preg_match("/^([a-zA-Z0-9\_\-\(\)])+$/", trim($arrExcel[$i][2]))==false) {
					$arrMsg[] = $arrExcel[$i][2] . " is invalid (a-z, 0-9) at line " . ($i+1) . ".";
					$cntError++;
					continue;
				}
				$row = new ClsProduct($php5DB);
				
				/////////////////////////check product sku
				$str = preg_replace( array("/,/", "/_/", "/%/"), array("\,", "\_", "\%"), $arr[2]);
				$query = "SELECT product_id "
					. "\n FROM #__product "
					. "\n WHERE sku = '" . mysql_real_escape_string($str) . "' LIMIT 1"
					;
				$php5DB->setQuery( $query );
				$productId = intval($php5DB->loadResult());
				if($productId) {
					$row->load($productId);
				}
				/////////////////////////check group
				/*if($arr[0] == '') {
					$row->group_id         = 0;
				} else {
					$str = preg_replace( array("/,/", "/_/", "/%/"), array("\,", "\_", "\%"), $arr[0]);
					$query = "SELECT id "
						. "\n FROM #__group "
						. "\n WHERE name like '" . $str . "' LIMIT 1"
						;
					$php5DB->setQuery( $query );
					$checkGroupId = intval($php5DB->loadResult());
					if($checkGroupId  > 0) {
						$row->group_id         = $checkGroupId;
					} else {
						$row_group = new Group($php5DB);
						$row_group->id = '';
						$row_group->name = $arr[0];
						$row_group->store();
						$row->group_id         = $row_group->id;
					}
				}*/
				/////////////////////////check category
				$arrCategoryInsert = array();
				if($arr[0] != '') {
					$str = preg_replace( array("/,/", "/_/", "/%/"), array("\,", "\_", "\%"), $arr[0]);
					$arrTemp = explode(',', $arr[0]);
					
					$query = "SELECT product_category_id "
						. "\n FROM #__product_category "
						. "\n WHERE product_category_id IN (" . mysql_real_escape_string($arr[0]) . ")"
						;
					$php5DB->setQuery( $query );
					$arrCategoryId = $php5DB->loadResultArray();
					if(count($arrCategoryId)  > 0) {
						$chk = 0;
						foreach($arrTemp as $v1) {
							$chk = 0;
							foreach($arrCategoryId as $v2) {
								if(trim($v1) == trim($v2)) {
									$arrCategoryInsert[] = trim($v2);
									$chk = 1;
									break;
								}
							}
							if(!$chk) {
								$arrMsg[] = "Category " . $v1 . " at line ".($i+1)." does not exist ".".";
								break;
							}
						}
						if(!$chk) {
							continue;
						}
					} else {
						$msg = $arrMsg[] = "Category " . $arr[0] . " at line ".($i+1)." does not exist ".".";
						$cntError++;
						continue;
					}
				}
				/////////////////////////check product addon
				if($arr[16] != '') {
					$str = preg_replace( array("/,/", "/_/", "/%/"), array("\,", "\_", "\%"), $arr[16]);
					$query = "SELECT product_id "
						. "\n FROM #__product "
						. "\n WHERE product_id = '" . $str . "' AND product_type = 3 LIMIT 1"
						;
					$php5DB->setQuery( $query );
					$checkProductId = intval($php5DB->loadResult());
					if($checkProductId  > 0) {
						//$row->category_id         = $checkCategoryId;
					} else {
						$msg = $arrMsg[] = "Product addon " . $arr[16] . " at line ".($i+1)." does not exist ".".";
						$cntError++;
						continue;
					}
				}				
				///////////////////////////////////////////////////
				$row->sku   						= $arr[2];
				$row->product_type      = $arr[1];
				$row->name         			= $arr[3];
				$row->price           	= $arr[4];
				if($arr[5]) {
					$row->image         			= "images/product/".$arr[5];
				} else {
					$row->image         			= "";
				}
//				$row->stock           	=$arr[4];
				$row->description_short = $arr[6];
				$row->description       		= $arr[7];
				$row->height         			= intval($arr[8]);
				$row->width         			= intval($arr[9]);
				$row->length         			= intval($arr[10]);
				$row->weight         			= intval($arr[11]);
				$row->publish         			= intval($arr[12]);
				$row->lead_time         			= ($arr[13]);
				$row->availability         			= ($arr[14]);
				$row->available_date         			= ($arr[15]);
				$row->sef_title         			= ($arr[17]);
				$row->sef_keyword         			= ($arr[18]);
				$row->sef_description         			= ($arr[19]);
				$row->project_id         			= ($arr[20]);
				$row->division         			= ($arr[21]);
				$row->occasions         			= trim($arr[22]);
				$row->order_type         			= ($arr[23]);
				$row->discount_type         			= ($arr[24]);
				$row->discount_value         			= ($arr[25]);
				$row->quantity         			= intval($arr[26]);
				
			
				
				if(!$row->store()) {
					$msg = $msgAlert = "Error!!! Please try again!!!";
				} else {
					$cntSucc++;
					$msg = $msgAlert = $lang['_UPDATE_MSG_'];
					$query = "DELETE "
					. "\n FROM #__product_category_link "
					. "\n WHERE product_id = '". $row->product_id ."'";
					$php5DB->setQuery( $query );
					if ($php5DB->query()) {
						//$msg = 'Delete sucessfully!!!';
					}	
					$checkCategoryId = '';
					if(count($arrCategoryInsert) > 0) {
						foreach($arrCategoryInsert as $checkCategoryId) {
							$ProductCategoryLink = new ProductCategoryLink($php5DB);
							$query = "SELECT product_category_link_id "
								. "\n FROM #__product_category_link "
								. "\n WHERE product_id = '" . $row->product_id . "' and product_category_id = '".$checkCategoryId."' LIMIT 1"
								;
							$php5DB->setQuery( $query );
							$product_category_link_id = intval($php5DB->loadResult());
							if($product_category_link_id > 0) {
							} else {
								$ProductCategoryLink->product_category_link_id = '';
								$ProductCategoryLink->product_id =  $row->product_id;
								$ProductCategoryLink->product_category_id =  $checkCategoryId;
								$ProductCategoryLink->store();
							}
						}
					}
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
	$body = sprintf($lang['_MSS_DEALER_5_'],  date('m/d/Y', php5GMTTime()), $cntSucc, $cntError, $source, $st);
	//echo php5GetConfig('config_email'). "Humming\n". php5GetConfig('config_admin_email'). $body;
	php5Mail( php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), sprintf($lang['_MSS_DEALER_6_'], date('m/d/Y', php5GMTTime())), $body, 0, '', $arrBCC);
}

$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=import_products&m=main&task=import', 0));
$smarty->assign('msg', $msg);
$smarty->assign('arrMsg', $arrMsg);

$smarty->assign('main', $smarty->fetch($tpl));



