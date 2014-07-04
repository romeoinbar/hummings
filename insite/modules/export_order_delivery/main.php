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
$tpl = sprintf($php5TemplateAdminFile, $language, 'export_order_delivery', 'main.tpl');
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
            ->setCellValue('B1', 'from_date!')
            ->setCellValue('C1', 'to_date')
						->setCellValue('D1', 'delivery_time')
            ->setCellValue('E1', 'from_message')
						->setCellValue('F1', 'to_message')
						->setCellValue('G1', 'message')
						->setCellValue('H1', 'call_before_delivery!')
						->setCellValue('I1', 'special_instruction')
						->setCellValue('J1', 'surcharge')
						->setCellValue('K1', 'delivery_status')
						->setCellValue('L1', 'shipto_title')
						->setCellValue('M1', 'shipto_name')
						->setCellValue('N1', 'shipto_company')
						->setCellValue('O1', 'shipto_block')
						->setCellValue('P1', 'shipto_unit')
						->setCellValue('Q1', 'shipto_building')
						->setCellValue('R1', 'shipto_address1')
						->setCellValue('S1', 'shipto_address2')
						->setCellValue('T1', 'shipto_address3')
						->setCellValue('U1', 'shipto_postcode')
						->setCellValue('V1', 'shipto_country')
						->setCellValue('W1', 'shipto_city')
						->setCellValue('X1', 'shipto_telephone1')
						->setCellValue('Y1', 'shipto_telephone2')
						->setCellValue('Z1', 'shipto_email')
						->setCellValue('AA1', 'shipto_gender')
						;
													 
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
$arrMsg = array();
$msg ='';
//task
$where = array();
//$where[] = "oi.product_id = p.product_id ";
//$where[] = "oi.order_id = o.order_id ";
$where[] = "od.order_delivery_id = o.delivery_id ";

$query = "SELECT od.*, o.order_id "
. "\n FROM  #__order o, #__order_delivery od "
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
								->setCellValue('B'.$i, $row->from_date)
								->setCellValue('C'.$i, $row->to_date)
								->setCellValue('D'.$i, $row->delivery_time)
								->setCellValue('E'.$i, $row->from_message)
								->setCellValue('F'.$i, $row->to_message)
								->setCellValue('G'.$i, $row->message)
								->setCellValue('H'.$i, $row->call_before_delivery)
								->setCellValue('I'.$i, $row->special_instruction)
								->setCellValue('J'.$i, $row->surcharge)
								->setCellValue('K'.$i, $row->delivery_status)
								->setCellValue('L'.$i, $row->shipto_title)
								->setCellValue('M'.$i, $row->shipto_name)
								->setCellValue('N'.$i, $row->shipto_company)
								->setCellValue('O'.$i, $row->shipto_block)
								->setCellValue('P'.$i, $row->shipto_unit)
								->setCellValue('Q'.$i, $row->shipto_building)
								->setCellValue('R'.$i, $row->shipto_address1)
								->setCellValue('S'.$i, $row->shipto_address2)
								->setCellValue('T'.$i, $row->shipto_address3)
								->setCellValue('U'.$i, $row->shipto_postcode)
								->setCellValue('V'.$i, $row->shipto_country)
								->setCellValue('W'.$i, $row->shipto_city)
								->setCellValue('X'.$i, $row->shipto_telephone1)
								->setCellValue('Y'.$i, $row->shipto_telephone2)
								->setCellValue('Z'.$i, $row->shipto_email)
								->setCellValue('AA'.$i, $row->shipto_gender)
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
$objWriter->save($php5RootPath ."/images/export/delivery-orders.xls");
$objPHPExcel = PHPExcel_IOFactory::load($php5RootPath ."/images/export/delivery-orders.xls");
$smarty->assign('main', $smarty->fetch($tpl));
$redirect = $php5WebPath . "/images/export/delivery-orders.xls";



