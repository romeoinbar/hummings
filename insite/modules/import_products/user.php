<?php
/***************************************************************************
*                                user.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'import_products'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'import_products', 'user.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
@ini_set('memory_limit', '500M');
//get
require_once($php5RootPath . "/classes/product.class.php");
require_once($php5RootPath . "/classes/newsletter_user.class.php");
require_once ($php5RootPath . "/includes/PHPExcel.php");

$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
$arrMsg = array();
$msg ='';
//bcc
$arrBCC = array("nam@ua-consultants.com");
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
		$objReader->setLoadSheetsOnly( array("Customer Database Oct 2012") );
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

		if(count($array_data) > 1 && count($array_data[1]) == 6) {
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
				if(count($arrExcel[$i]) != 6) {
					//unset($arrExcel[$i]);
					if(($i+1) < count($arrExcel)) {
						$arrMsg[] = "The number of columns is wrong at line " . ($i+1) . ".";
						$cntError++;
					}					
					continue;
				}
				$arr = $arrExcel[$i];	
				
				/////////////////////////check category
				$str = preg_replace( array("/,/", "/_/", "/%/"), array("\,", "\_", "\%"), $arr[1]);
				$query = "SELECT id "
					. "\n FROM #__newsletter_user "
					. "\n WHERE email = '" . mysql_real_escape_string($str) . "' LIMIT 1"
					;
				$php5DB->setQuery( $query );
				$checkCategoryId = intval($php5DB->loadResult());
				$row_category = new NewsletterUser($php5DB);
				if($checkCategoryId  > 0) {
					//$row_category->product_category_id         = $checkCategoryId;
					continue;
				} else {
					$row_category->id = '';
					$row_category->name = $arr[2];
					$row_category->email = $arr[1];
					$row_category->date = php5GMTTime();
					if(!$row_category->store()) {
						$msgAlert = "Error!!! Please try again!!!";
					} else {
						$cntSucc++;
					}
				}
				


			}
		} else {
			$arrMsg[] = "Category is wrong structure.";
			$cntError++;
		}
	}
	$st = "";
	if(count($arrMsg) > 0) {
		foreach($arrMsg as $v) {
			$st .= $v."\n";
		}
	}
	echo $st;
}

$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=import_products&m=user&task=import', 0));
$smarty->assign('msg', $msg);
$smarty->assign('arrMsg', $arrMsg);

$smarty->assign('main', $smarty->fetch($tpl));



