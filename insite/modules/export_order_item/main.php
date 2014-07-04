<?php
/***************************************************************************
*                                main.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "user")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	
	
defined('PHP5_PHP') or die("Application is stopping!!!");
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'export'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'export_order_item', 'main.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//require_once($php5RootPath . "/includes/class.export_excel.php");
/** Include PHPExcel */
require_once ($php5RootPath . "/includes/PHPExcel.php");

// Create new PHPExcel object
$objPHPExcel = new PHPExcel();
// Set document properties
$objPHPExcel->getProperties()->setCreator("Maarten Balliauw")
							 ->setLastModifiedBy("Maarten Balliauw")
							 ->setTitle("Office 2007 XLSX Test Document")
							 ->setSubject("Office 2007 XLSX Test Document")
							 ->setDescription("Test document for Office 2007 XLSX, generated using PHP classes.")
							 ->setKeywords("office 2007 openxml php")
							 ->setCategory("Test result file");
// Add some data
$objPHPExcel->setActiveSheetIndex(0)
            ->setCellValue('A1', 'order_id')
            ->setCellValue('B1', 'sku')
            ->setCellValue('C1', 'qty')
						->setCellValue('D1', 'unit_price')
						;
													 

$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
$arrMsg = array();
$msg ='';
//task
$where = array();
//$where[] = "oi.product_id = p.product_id ";
$where[] = "oi.order_id = o.order_id ";

$query = "SELECT oi.* "
. "\n FROM  #__order o, #__order_item oi"
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY o.order_id desc LIMIT 0, 1000";
$php5DB->setQuery( $query );//echo $query;
$rows = $php5DB->loadObjectList();
$i = 2;
if(count($rows) > 0) {
	foreach($rows as $k => $row) {
		// Add some data
		$objPHPExcel->setActiveSheetIndex(0)
								->setCellValue('A'.$i, $row->order_id)
								->setCellValue('B'.$i, $row->sku)
								->setCellValue('C'.$i, $row->qty)
								->setCellValue('D'.$i, $row->unit_price)
								;		
		$i++;
	}
}

// Rename worksheet
$objPHPExcel->getActiveSheet()->setTitle('Order');

// Set active sheet index to the first sheet, so Excel opens this as the first sheet
$objPHPExcel->setActiveSheetIndex(0);

// Save Excel 2007 file
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
$objWriter->save($php5RootPath ."/images/export/product-order.xls");
$objPHPExcel = PHPExcel_IOFactory::load($php5RootPath ."/images/export/product-order.xls");
$smarty->assign('main', $smarty->fetch($tpl));
$redirect = $php5WebPath . "/images/export/product-order.xls";



