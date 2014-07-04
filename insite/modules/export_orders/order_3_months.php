<?php
/***************************************************************************
*                                order_3_months.php
 *
 *   Begin date             : 
 *   Copyright              : 
 *   Email                  : 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'export'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'export_orders', 'order_3_months.tpl');
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
$arrayColumn = array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z', 'AA', 'AB', 'AC', 'AD', 'AE', 'AF', 'AG', 'AH', 'AI', 'AJ', 'AK', 'AL', 'AM', 'AN', 'AO', 'AP', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AV', 'AW');
                                                     
$arrayData = array('order_id','order_date','sales_doc_type','sales_order_number','sales_organization','distribution_channel','division','account_group','sold_to_party_no','title','name','block','unit','building','address1','address2','address3','address4','postcode','city','country','telephone1','telephone2','customer_group','payment_terms','tax_code','contact_person_code','contact_person_name','gender','contact_telephone1','contact_telephone2','email','order_source','spcode','ssid','project_id','created_by','approved_by','reference_no','update_addres_indicator','payment_status', 'delivery_status','order_status','evoucher','evoucher_value','customer_industry_type','voucher_no','voucher_amount','order_time');

$arrayLabel = array('order_id', 'order_date', 'Sales Doc Type', 'Sales Order Number', 'Sales Organization', 'Distribution Channel', 'Division', 'Account Group', 'Sold to Party No.', 'TITLE', 'Sold to Party Name', 'address block', 'address  unit', 'address building', 'address street 1', 'address street 2', 'address street 3', 'address street 4', 'Postal Code', 'City', 'Country', 'Telephone 1', 'Telephone 2', 'Customer Group', 'Payment Terms', 'Tax code', 'Contact Person Code', 'Contact Person Name', 'Gender', 'contact Telephone 1', 'contact Telephone 2', 'Contact Person Email Address', 'Order Source', 'SPCODE', 'SSID', 'Project ID', 'Created by', 'Approved by', 'Reference No.', 'Update addres indicator', 'payment_status', 'delivery_status','order_status', 'eVoucher', 'evoucher value','customer_industry_type','voucher_no','voucher_amount','order_time');

$task       = php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
$arrMsg = array();
$msg ='';
$i = 1;
foreach($arrayColumn as $k => $v) {
	$objPHPExcel->setActiveSheetIndex(0)->setCellValue($v.$i, $arrayLabel[$k]);
}
//task
$where = array();
$threeMonthsAgo = date('Y-m-d', strtotime('-3 month', php5GMTTime()));
$where[] = "order_date >= '$threeMonthsAgo'";
$query = "SELECT * "
            .   " FROM #__order "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
//. "\n ORDER BY id desc LIMIT $startLimit, $limit";
. "\n ORDER BY order_id desc ";
$php5DB->setQuery( $query );//echo $query;
$rows = $php5DB->loadObjectList();
$i = 2;
if(count($rows) > 0) {
	foreach($rows as $k => $row) {
		// Add some data
		foreach($arrayColumn as $k => $v) {
			$objPHPExcel->setActiveSheetIndex(0)->setCellValue($v.$i, @$row->$arrayData[$k]);
		}		
		$i++;
	}
}

//echo $stOrder;die;
//$excel_obj->setHeadersAndValues($report_header, $report_values); 

// Rename worksheet
$objPHPExcel->getActiveSheet()->setTitle('Order-3-months');

// Set active sheet index to the first sheet, so Excel opens this as the first sheet
$objPHPExcel->setActiveSheetIndex(0);

// Save Excel 2007 file
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
$objWriter->save($php5RootPath ."/images/export/order-3-months.xls");
$objPHPExcel = PHPExcel_IOFactory::load($php5RootPath ."/images/export/order-3-months.xls");
$redirect = $php5WebPath . "/images/export/order-3-months.xls";
$smarty->assign('main', $smarty->fetch($tpl));



