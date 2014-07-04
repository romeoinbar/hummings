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
$tpl = sprintf($php5TemplateAdminFile, $language, 'export_order_payment', 'main.tpl');
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
            ->setCellValue('B1', 'payment_type')
            ->setCellValue('C1', 'payment_terms')
						->setCellValue('D1', 'credit_card_type')
            ->setCellValue('E1', 'name_on_card')
						->setCellValue('F1', 'credit_card_no')
						->setCellValue('G1', 'expiry_date')
						->setCellValue('H1', 'cvv')
						->setCellValue('I1', 'approval_code')
						->setCellValue('J1', 'spcode')
						->setCellValue('K1', 'ssid')
						;
													 

$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
$arrMsg = array();
$msg ='';
//task
$where = array();
//$where[] = "oi.product_id = p.product_id ";
//$where[] = "oi.order_id = o.order_id ";
$where[] = "op.order_payment_id = o.payment_id ";

$query = "SELECT o.* "
. "\n FROM  #__order o, #__order_payment op "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
//. "\n ORDER BY id desc LIMIT $startLimit, $limit";
. "\n ORDER BY o.order_id desc LIMIT 0, 1000";
$php5DB->setQuery( $query );//echo $query;
$rows = $php5DB->loadObjectList();
//$report_values = array();
$i = 2;
if(count($rows) > 0) {
	foreach($rows as $k => $row) {
		// Add some data
		$objPHPExcel->setActiveSheetIndex(0)
								->setCellValue('A'.$i, $row->order_id)
								->setCellValue('B'.$i, $row->payment_type)
								->setCellValue('C'.$i, $row->payment_terms)
								->setCellValue('D'.$i, $row->credit_card_type)
								->setCellValue('E'.$i, $row->name_on_card)
								->setCellValue('F'.$i, $row->credit_card_no)
								->setCellValue('G'.$i, $row->expiry_date)
								->setCellValue('H'.$i, $row->cvv)
								->setCellValue('I'.$i, $row->approval_code)
								->setCellValue('J'.$i, $row->spcode)
								->setCellValue('K'.$i, $row->ssid)
								;		
		$i++;
	}
}
//$excel_obj->setHeadersAndValues($report_header, $report_values); 

// Rename worksheet
$objPHPExcel->getActiveSheet()->setTitle('Order');

// Set active sheet index to the first sheet, so Excel opens this as the first sheet
$objPHPExcel->setActiveSheetIndex(0);

// Save Excel 2007 file
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
$objWriter->save($php5RootPath ."/images/export/payment-orders.xls");
$objPHPExcel = PHPExcel_IOFactory::load($php5RootPath ."/images/export/payment-orders.xls");
$smarty->assign('main', $smarty->fetch($tpl));
$redirect = $php5WebPath . "/images/export/payment-orders.xls";



