<?php
/***************************************************************************
*                                main.php
 *
 *   Begin date             : 
 *   Copyright              : 
 *   Email                  : 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'export'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'export_users', 'main.tpl');
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
$arrayColumn = array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z', 'AA', 'AB', 'AC', 'AD', 'AE', 'AF', 'AG', 'AH', 'AI', 'AJ');
$arrayData = array('user_id','title','name','surname','company','block','unit','building','address1','address2','address3','address4','postcode','city','state','country','email', 'pre_telephone1','mid_telephone1','telephone1','pre_telephone2','mid_telephone2','telephone2','pre_fax','mid_fax','fax','gender','dob','notify_update','customer_industry_type','payment_terms','customer_group','tax_code','sold_to_party_no','contact_person_code','ssid');
$arrayLabel = array('user_id','title','name','surname','company','block','unit','building','address1','address2','address3','address4','postcode','city','state','country','email', 'pre_telephone1','mid_telephone1','telephone1','pre_telephone2','mid_telephone2','telephone2','pre_fax','mid_fax','fax','gender','dob','notify_update','customer_industry_type','payment_terms','customer_group','tax_code','sold_to_party_no','contact_person_code','ssid');

$i = 1;
foreach($arrayColumn as $k => $v) {
	$objPHPExcel->setActiveSheetIndex(0)->setCellValue($v.$i, $arrayLabel[$k]);
}

//user
$query = "SELECT * "
            .   " FROM #__user ";
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
$objPHPExcel->getActiveSheet()->setTitle('Users');

// Set active sheet index to the first sheet, so Excel opens this as the first sheet
$objPHPExcel->setActiveSheetIndex(0);

// Save Excel 2007 file
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
$objWriter->save($php5RootPath ."/images/export/users.xls");
$objPHPExcel = PHPExcel_IOFactory::load($php5RootPath ."/images/export/users.xls");
$redirect = $php5WebPath . "/images/export/users.xls";
$smarty->assign('main', $smarty->fetch($tpl));



