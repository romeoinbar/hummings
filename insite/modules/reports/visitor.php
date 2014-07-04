<?php
//error_reporting(0);
 	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "reports")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	
defined('PHP5_PHP') or die("Application is stopping!!!");
global $main_content;
include_once "$php5RootAdminPath/modules/header.php"; 
$main_content = ""; 
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'reports'));
$task 		= php5GetParam($_REQUEST, 'task', 'main');

switch ($task){	
	default:
		showReport();
		break;
}

function showReport(){
	global $php5DB_en, $smarty, $php5TemplateAdminFile, $language, $php5WebPath, $main_content, $php5RootPath ;
	require_once($php5RootPath . "/includes/csv.php");
	$dir = $php5RootPath.'/images/export/reports/';
	
	$start_date = php5GetParam($_REQUEST, 'start_date', '');
	$end_date = php5GetParam($_REQUEST, 'end_date', '');	
	$smarty->assign('start_date', $start_date);
	$smarty->assign('end_date', $end_date);
	
	$swhere = "";
	$select = "DATE_FORMAT(DATE(FROM_UNIXTIME(`date`)),'%c/%d/%Y')";	
	$groupby = "DATE_FORMAT(DATE(FROM_UNIXTIME(`date`)),'%c/%d/%Y')";
	
	if ($start_date!=''){
		if ($end_date=='')
			$end_date = date('m/j/Y');	
		$arr_tmp = createDateRangeArray($start_date,$end_date);			
		$arr_value_x = array();		
				
		for ($i=0; $i<count($arr_tmp); $i++){
			$arr_value_x[] = date('n/j/Y', strtotime($arr_tmp[$i]));
		}
		$swhere = " AND `date` >='".php5MkTime( $start_date, "m/d/Y")."' AND `date`<='".php5MkTime( $end_date, "m/d/Y")."'";
	} else {
		$arr_tmp = createDateRangeArray(date("m").'/01/'.date("Y"),date("m/d/Y"));
		for ($i=0; $i<count($arr_tmp); $i++){
			$arr_value_x[] = date('n/j/Y', strtotime($arr_tmp[$i]));
		}
		$swhere = " AND `date` >='".php5MkTime(date("m").'/01/'.date("Y"))."' AND `date`<='".php5MkTime(date("m/d/Y"))."'";
	}
	
	//print_r($arr_value_x);
	
	$arrCSV = array();
	$i = 0;
	$Y_Title = "VISITOR";
	$X_Title = 'DATE';
	$arrCSV[$i][] = $X_Title;
	$arrCSV[$i][] = $Y_Title;
	$i = 1;	
	
	
	
	$query = "SELECT COUNT(id) AS total, ".$select." AS val FROM #__visitors WHERE 1 ".$swhere." 
			GROUP BY ".$groupby." 
			ORDER BY $select ASC";
	
	$php5DB_en->setQuery($query);
	$rows = $php5DB_en->loadObjectList();
	$arr_value_y = array_fill(0,count($arr_value_x), 0);	
	
	foreach ($rows as $row){	
		$key = array_search($row->val, $arr_value_x); 
		if ($key!==false)		
			$arr_value_y[$key]= $row->total;			
		unset($key);	
	}		
	for ($j=0; $j<count($arr_value_x);$j++){
		// Export
		$arrCSV[$i][] = $arr_value_x[$j];
		$arrCSV[$i][] = $arr_value_y[$j];
		$i++;
	}
	
	$tpl = sprintf($php5TemplateAdminFile, $language, 'reports', 'visitor.tpl');
	$csv = new CSVCreation($dir);
	$nameCsv = "report_visitor_" . date("Ymd");
	$csv->createcsv($arrCSV, $nameCsv);	
	
	
	$value_chart = (count($rows)>0)?line_chart($arr_value_x, $arr_value_y, 'chart1', $Y_Title, $X_Title):"<div style='font-size:18px; min-height:200px; margin-left:5px; margin-top:30px;'>Data not found.</div>";
	
		
	$smarty->assign('display_chart', $value_chart);	
	
	$smarty->assign('link_export', sefBuild($php5WebPath, 'index.php')."/images/export/reports/".$nameCsv.".csv");	
	$main_content .=  $smarty->fetch($tpl); 
}

$smarty->assign('main',$main_content);	
require_once($php5RootAdminPath . "/modules/main/bottom.php");
return;