<?php
/***************************************************************************
*                                main.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'export_products'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'export_products', 'main.tpl');
@ini_set('memory_limit', '500M');
if(!is_file($tpl )) {
	die("can not find template");
}
/** Include PHPExcel */
require_once ($php5RootPath . "/includes/PHPExcel.php");
// Create new PHPExcel object
$objPHPExcel = new PHPExcel();
// Set document properties
$objPHPExcel->getProperties()->setCreator("Nam")
							 ->setLastModifiedBy("Nam")
							 ->setTitle("Office 2007 XLSX Test Document")
							 ->setSubject("Office 2007 XLSX Test Document")
							 ->setDescription("Test document for Office 2007 XLSX, generated using PHP classes.")
							 ->setKeywords("office 2007 openxml php")
							 ->setCategory("Test result file");
// Add some data
$arrayColumn = array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
$arrayData = array('categories','product_type','sku','name','price','image','description_short','description','height','width','length','weight','publish','lead_time','availability','available_date','add_on_products','sef_title','sef_keyword','sef_description','project_id','division','occasion','order_type','discount_type','discount_value');
$arrayLabel = array('categories','product_type','sku','name','price','image','description_short','description','height','width','length','weight','status','lead_time','availability','available_date','add_on_products','sef_title','sef_keyword','sef_description','project_id','division','occasion','order_type','discount type ($/ %)','discount_value');

$i = 1;
foreach($arrayColumn as $k => $v) {
	$objPHPExcel->setActiveSheetIndex(0)->setCellValue($v.$i, $arrayLabel[$k]);
}

$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
$arrMsg = array();
$msg ='';
//task
//$filename = "product.xls";
//create the instance of the exportexcel format
//$excel_obj=new ExportExcel("$filename");
//setting the values of the headers and data of the excel file 
//and these values comes from the other file which file shows the data
//$report_header = array('sku', 'product_type', 'name', 'price', 'stock', 'description_short', 'description', 'image', 'height', 'width', 'length', 'weight', 'publish', 'lead_time');
//list product
$where = array();
$query = "SELECT *  "
. "\n FROM #__product_category "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY product_category_id desc LIMIT 0, 1000";
$php5DB->setQuery( $query );//echo $query;
$rows_category = $php5DB->loadObjectList();//print_r($php5DB);die;
//list product_category_link
$where = array();
$query = "SELECT pcl.*, pc.category_type, pc.code "
. "\n FROM #__product_category_link pcl "
. "\n LEFT JOIN #__product_category pc ON (pc.product_category_id = pcl.product_category_id )"
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY pcl.product_category_link_id desc ";
$php5DB->setQuery( $query );//echo $query;
$rows_category_link = $php5DB->loadObjectList();
$productCategoryArr = array();
$productOccasionArr = array();
foreach($rows_category_link as $k => $row1) {
	$productCategoryArr[$row1->product_id][] = $row1->product_category_id;
	if($row1->category_type == 2 && $row1->code) {
		$productOccasionArr[$row1->product_id][] = $row1->code;
	}
}
//list product_category_link
$where = array();
$query = "SELECT * "
. "\n FROM #__product_addon_link pal "
. "\n LEFT JOIN #__product p ON (p.product_id = pal.product_id )"
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY product_addon_link desc ";
$php5DB->setQuery( $query );//echo $query;
$rows_addon_link = $php5DB->loadObjectList();//print_r($php5DB);die;
$productAddonArr = array();
foreach($rows_addon_link as $k => $row2) {
	$productAddonArr[$row2->product_id][] = $row2->addon_id;
}
//list product
$where = array();
$query = "SELECT * "
. "\n FROM #__product "
//. "\n LEFT JOIN #__product_occasions_link pol ON (p.product_id = pol.product_id )"
//. "\n LEFT JOIN #__occasions o ON (o.occasions_id = pol.occasions_id )"
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
//. "\n ORDER BY id desc LIMIT $startLimit, $limit";
. "\n ORDER BY product_id desc";
$php5DB->setQuery( $query );//echo $query;
$rows = $php5DB->loadObjectList();//print_r($php5DB);die;
//$report_values = array();

$st = '';
foreach($arrayLabel as $k => $v) {
	$st .= '"'.$v.'",';
}
$st .= "\n";


$i = 2;
if(count($rows) > 0) {
	foreach($rows as $k => $row) {
		if(isset($productCategoryArr[$row->product_id])) {
			$row->categories = implode(',', $productCategoryArr[$row->product_id]);
		}
		if(isset($productOccasionArr[$row->product_id])) {
			$row->occasion = implode(',', $productOccasionArr[$row->product_id]);
		}
		if(isset($productAddonArr[$row->product_id])) {
			$row->add_on_products = implode(',', $productAddonArr[$row->product_id]);
		}		
		// Add some data
		foreach($arrayColumn as $k => $v) {
			if($arrayData[$k] =='image') {
				$row->image = str_replace("images/product/", "", $row->image);
			}
			$objPHPExcel->setActiveSheetIndex(0)->setCellValue($v.$i, @$row->$arrayData[$k]);
			$st .= '"'.str_replace('"', '\"', @$row->$arrayData[$k]).'",';
		}		
		$i++;
		$st .= "\n";
	}
}

//echo $st;
//die;
//$excel_obj->setHeadersAndValues($report_header, $report_values); 

//now generate the excel file with the data and headers set
//$excel_obj->GenerateExcelFile();
// Rename worksheet
$objPHPExcel->getActiveSheet()->setTitle('Product');
$objPHPExcel->createSheet();
$objPHPExcel->setActiveSheetIndex(1);
$objPHPExcel->getActiveSheet()->setTitle('Product Category');
// Add some data
$arrayColumn = array('A','B','C','D','E','F','G','H');
$arrayData = array('product_category_id','category_type', 'name','publish','parent_id','image','description','code');
$arrayLabel = array('product_category_id','category_type','category_name','publish','parent_category','image','description','occassions code');
$i = 1;
foreach($arrayColumn as $k => $v) {
	$objPHPExcel->setActiveSheetIndex(1)->setCellValue($v.$i, $arrayLabel[$k]);
}
//list category
$where = array();
$query = "SELECT *  "
. "\n FROM #__product_category "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
//. "\n ORDER BY id desc LIMIT $startLimit, $limit";
. "\n LIMIT 0, 1000";
$php5DB->setQuery( $query );//echo $query;
$rows = $php5DB->loadObjectList();
$i = 2;
if(count($rows) > 0) {
	foreach($rows as $k => $row) {
		// Add some data
		foreach($arrayColumn as $k => $v) {
			if($arrayData[$k] =='image') {
				$row->image = str_replace("images/category/", "", $row->image);
			}
			$objPHPExcel->setActiveSheetIndex(1)->setCellValue($v.$i, @$row->$arrayData[$k]);
		}		
		$i++;
	}
}
// Set active sheet index to the first sheet, so Excel opens this as the first sheet
$objPHPExcel->setActiveSheetIndex(0);

// Save Excel 2007 file
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
$objWriter->save($php5RootPath ."/images/export/products.xls");
//$objPHPExcel = PHPExcel_IOFactory::load($php5RootPath ."/images/export/products.xls");
$redirect = $php5WebPath . "/images/export/products.xls";
$smarty->assign('main', $smarty->fetch($tpl));



