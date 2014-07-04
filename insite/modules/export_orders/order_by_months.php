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
$tpl = sprintf($php5TemplateAdminFile, $language, 'export_orders', 'order_by_months.tpl');
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
$arrayColumn = array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z', 'AA', 'AB', 'AC', 'AD', 'AE', 'AF', 'AG', 'AH', 'AI', 'AJ', 'AK', 'AL', 'AM', 'AN', 'AO', 'AP', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AV', 'AW', 'AX');
                                                     
$arrayData = array('order_id','order_date','sales_doc_type','sales_order_number','sales_organization','distribution_channel','division','account_group','sold_to_party_no','title','name','block','unit','building','address1','address2','address3','address4','postcode','city','country','telephone1','telephone2','customer_group','payment_terms','tax_code','contact_person_code','contact_person_name','gender','contact_telephone1','contact_telephone2','email','order_source','spcode','ssid','project_id','created_by','approved_by','reference_no','update_addres_indicator','payment_status', 'delivery_status','order_status','evoucher','evoucher_value','customer_industry_type','voucher_no','voucher_amount','order_time','total');

$arrayLabel = array('order_id', 'order_date', 'Sales Doc Type', 'Sales Order Number', 'Sales Organization', 'Distribution Channel', 'Division', 'Account Group', 'Sold to Party No.', 'TITLE', 'Sold to Party Name', 'address block', 'address  unit', 'address building', 'address street 1', 'address street 2', 'address street 3', 'address street 4', 'Postal Code', 'City', 'Country', 'Telephone 1', 'Telephone 2', 'Customer Group', 'Payment Terms', 'Tax code', 'Contact Person Code', 'Contact Person Name', 'Gender', 'contact Telephone 1', 'contact Telephone 2', 'Contact Person Email Address', 'Order Source', 'SPCODE', 'SSID', 'Project ID', 'Created by', 'Approved by', 'Reference No.', 'Update addres indicator', 'payment_status', 'delivery_status','order_status', 'eVoucher', 'evoucher value','customer_industry_type','voucher_no','voucher_amount','order_time', 'Total');

$task       = php5GetParam($_REQUEST, 'task', '');
$start_date = php5GetParam($_REQUEST, 'start_date', '');
$end_date = php5GetParam($_REQUEST, 'end_date', '');	

$arrMsg = array();
$msg ='';
$value_chart = '';
//////////////////////////////
switch($task)
{
	case 'search':
	
		$swhere = "";
		$select = "DATE_FORMAT(DATE(`order_date`),'%c/%d/%Y')";	
		$groupby = "DATE_FORMAT(DATE(`order_date`),'%c/%d/%Y')";
		
		if ($start_date!=''){
			if ($end_date=='')
				$end_date = date('m/j/Y');	
			$arr_tmp = createDateRangeArray($start_date,$end_date);			
			$arr_value_x = array();		
					
			for ($i=0; $i<count($arr_tmp); $i++){
				$arr_value_x[] = date('n/j/Y', strtotime($arr_tmp[$i]));
			}
			
			$test1 =  new DateTime($start_date);
			$test2 =  new DateTime($end_date);
			
			$swhere = " AND `order_date` >='". date_format($test1, 'Y-m-d') ."' AND `order_date`<='". date_format($test2, 'Y-m-d') ."'";
		} else {
			$arr_tmp = createDateRangeArray(date("m").'/01/'.date("Y"),date("m/d/Y"));
			for ($i=0; $i<count($arr_tmp); $i++){
				$arr_value_x[] = date('n/j/Y', strtotime($arr_tmp[$i]));
			}
			$swhere = " AND `order_date` >='".date("Y").'-'.date("m").'-01'."' AND `order_date`<='".date("Y-m-d")."'";
		}
		$query = "SELECT COUNT(order_id) AS total, ".$select." AS val FROM #__order WHERE 1 ".$swhere." 
				GROUP BY ".$groupby." 
				ORDER BY $select ASC";

		$php5DB->setQuery($query);
		$rows = $php5DB->loadObjectList();
		$arr_value_y = array_fill(0,count($arr_value_x), 0);	
		
		foreach ($rows as $row){	
			$key = array_search($row->val, $arr_value_x); 
			if ($key!==false)		
				$arr_value_y[$key]= $row->total;			
			unset($key);	
		}
		$Y_Title = "ORDER";
		$X_Title = 'DATE';
		
		$value_chart = (count($rows)>0)?line_chart($arr_value_x, $arr_value_y, 'chart1', $Y_Title, $X_Title):"<div style='font-size:18px; min-height:200px; margin-left:5px; margin-top:30px;'>Data not found.</div>";
		
		break;
	case 'export':
		$i = 1;
		foreach($arrayColumn as $k => $v) {
			$objPHPExcel->setActiveSheetIndex(0)->setCellValue($v.$i, $arrayLabel[$k]);
		}
		//task
		if ($start_date!=''){
			if ($end_date=='')
				$end_date = date('m/j/Y');	
			$test1 =  new DateTime($start_date);
			$test2 =  new DateTime($end_date);
			
			$where[] = " AND `order_date` >='". date_format($test1, 'Y-m-d') ."' AND `order_date`<='". date_format($test2, 'Y-m-d') ."'";
		} else {
			$where[] = " AND `order_date` >='".date("Y").'-'.date("m").'-01'."' AND `order_date`<='".date("Y-m-d")."'";
		}
		
		$where = array();
		$threeMonthsAgo = date('Y-m-d', strtotime('-3 month', php5GMTTime()));
		//$where[] = "order_date >= '$threeMonthsAgo'";
		$query = "SELECT * "
								.   " FROM #__order "
		. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
		//. "\n ORDER BY id desc LIMIT $startLimit, $limit";
		. "\n ORDER BY order_id desc ";
		$php5DB->setQuery( $query );//echo $query;
		$rows = $php5DB->loadObjectList();
		$i = 2;
		if(count($rows) > 0) {
			$arrOrder = array();
			foreach($rows as $k => $row) {
				$arrOrder[$row->order_id] = $row->order_id;
			}
			
			if(count($arrOrder) > 0) {
				$q = "SELECT SUM(qty*unit_price) as s, order_id FROM #__order_item GROUP BY order_id";
				$php5DB->setQuery( $q);
				$rows_order = $php5DB->loadObjectList();
				foreach($rows as $k => $row) {
					// Add some data
					foreach($arrayColumn as $k => $v) {
						$objPHPExcel->setActiveSheetIndex(0)->setCellValue($v.$i, @$row->$arrayData[$k]);
					}
					foreach($rows_order as $k1 => $row1) {
						if($row1->order_id == $row->order_id) {
							$objPHPExcel->setActiveSheetIndex(0)->setCellValue('AX'.$i, $row1->s);
						}
					}
					$i++;
				}
				
			}
		}
		// Rename worksheet
		$objPHPExcel->getActiveSheet()->setTitle('Order-by-months');
		
		// Set active sheet index to the first sheet, so Excel opens this as the first sheet
		$objPHPExcel->setActiveSheetIndex(0);
		
		// Save Excel 2007 file
		$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
		$objWriter->save($php5RootPath ."/images/export/order-by-months.xls");
		$objPHPExcel = PHPExcel_IOFactory::load($php5RootPath ."/images/export/order-by-months.xls");
		$redirect = $php5WebPath . "/images/export/order-by-months.xls";	
		break;
	default:
		break;	
}
$smarty->assign('display_chart', $value_chart);
$smarty->assign('start_date', $start_date);
$smarty->assign('end_date', $end_date);
$smarty->assign('main', $smarty->fetch($tpl));



