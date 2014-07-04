<?php
/***************************************************************************
*                                customers.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'export'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'export_orders', 'customers.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
					 
$arrayOrder = array('sales_doc_type','sales_order_number','sales_organization','distribution_channel','division','order_date','account_group','sold_to_party_no','title','name','block','unit','building','address1','address2','address3','address4','postcode','city','country','telephone1','telephone2','customer_group','payment_terms','tax_code','contact_person_code','contact_person_name','gender','contact_telephone1','contact_telephone2','credit_card_type','name_on_card','credit_card_no','expiry_date','cvv','approval_code','email','spcode','ssid','project_id','approved_by','reference_no','evoucher','evoucher_value','customer_industry_type', 'voucher_no', 'voucher_amount');

$arrayCusomer = array('update_indicator','sold_to_party_no','name','ssid', 'block','unit','building','address1','address2','address3','address4','postcode','city','country','telephone1','telephone2','email');

$st = '';

$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
$arrMsg = array();
$msg ='';
//task
$where = array();
$query = "SELECT order_id, user_id, sales_doc_type, sales_order_number, sales_organization, distribution_channel, division, order_date, account_group, customer_group,  sold_to_party_no, title, name, block, unit, building, address1, address2, address3, address4, postcode, city, country, telephone1, telephone2, customer_group, payment_terms, tax_code, contact_person_code, contact_person_name, gender, contact_telephone1, contact_telephone2, '' as credit_card_type, '' as name_on_card, '' as credit_card_no, '' as expiry_date, '' as cvv, '' as approval_code, email, spcode, ssid, project_id, created_by, approved_by, reference_no, evoucher, evoucher_value, customer_industry_type, update_addres_indicator, voucher_no, voucher_amount "
			.	" FROM #__order "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
//. "\n ORDER BY id desc LIMIT $startLimit, $limit";
. "\n ORDER BY order_id desc LIMIT 0, 1000";
$php5DB->setQuery( $query );//echo $query;
$rows_order = $php5DB->loadObjectList();
if(!is_array($rows_order) || count($rows_order) < 1) {
	return;
}
$arrOrder = array();
$arrUser = array();
foreach($rows_order as $row) {
	$arrOrder[$row->order_id] = $row->order_id;
	$arrUser[$row->user_id] = $row->user_id;
}
//user
$query = "SELECT * "
			.	" FROM #__user ";
			if(count($arrOrder) > 0) {
				$query .=  " WHERE user_id IN (" . implode( ',', $arrUser ) . ")";
			} else {
				$query .=  " WHERE 1 > 2 ";
			}
$php5DB->setQuery( $query );//echo $query;
$rows_user = $php5DB->loadObjectList();

$i = 2;
$l = 1;
$line3 = '';
if(count($rows_order) > 0) {
	foreach($rows_order as $row) {
		$line1[$row->order_id] = "1~";
		
		$line5[$row->order_id] = "1~";
		$row->line = sprintf("%03d", $l);
		//$row->repeatline = sprintf("%03d", $l);
		$row->order_date = str_replace('-', '', $row->order_date);
		foreach($arrayOrder as $v1) {
			$line1[$row->order_id] .= $row->$v1.'~';
		}
		$line6[$row->order_id] = sprintf("2~%s", $row->customer_industry_type);
		$line7[$row->order_id] = sprintf("3~%s", $row->payment_terms);
		$line8[$row->order_id] = sprintf("4~%s", $row->customer_group);
		$line9[$row->order_id] = sprintf("5~%s", $row->tax_code);

		//customer
		if(count($rows_user) > 0) {
			foreach($rows_user as $row5) {
				$row5->update_indicator = 1;
				$row5->ssid = $row->ssid;
				if($row5->user_id == $row->user_id) {
					$row5->sold_to_party_no = $row->sold_to_party_no;
					
					foreach($arrayCusomer as $v5) {
						$line5[$row->order_id] .= $row5->$v5.'~';
					}
					$line10[$row->order_id] = sprintf("6~%s~%s~%s~%s~%s~%s~", $row->contact_person_code, $row->contact_person_name, $row5->surname, $row->gender, $row->contact_telephone1, $row->contact_telephone2);
				}
			}
		}		
		// Add some data
		$i++;
	}
}
$stCustomer = '';
foreach($line1 as $k=>$v) {
	if(strlen($v) > 1 && substr($v, -1) == '~') {
		$v = substr($v, 0, strlen($v) -1);
	}
	//customer
	$stCustomer .= "Cust_in file";
	$stCustomer .= "\r\n";
	if(isset($line5[$k])) {
		if(strlen($line5[$k]) > 1 && substr($line5[$k], -1) == '~') {
			$line5[$k] = substr($line5[$k], 0, strlen($line5[$k]) -1);
		}
	}
	$stCustomer .= @$line5[$k]."\r\n";
	
	if(isset($line6[$k])) {
		if(strlen($line6[$k]) > 1 && substr($line6[$k], -1) == '~') {
			$line6[$k] = substr($line6[$k], 0, strlen($line6[$k]) -1);
		}
	}
	$stCustomer .= @$line6[$k]."\r\n";
	
	if(isset($line7[$k])) {
		if(strlen($line7[$k]) > 1 && substr($line7[$k], -1) == '~') {
			$line7[$k] = substr($line7[$k], 0, strlen($line7[$k]) -1);
		}
	}
	$stCustomer .= @$line7[$k]."\r\n";
	
	if(isset($line8[$k])) {
		if(strlen($line8[$k]) > 1 && substr($line8[$k], -1) == '~') {
			$line8[$k] = substr($line8[$k], 0, strlen($line8[$k]) -1);
		}
	}
	$stCustomer .= @$line8[$k]."\r\n";
	
	if(isset($line9[$k])) {
		if(strlen($line9[$k]) > 1 && substr($line9[$k], -1) == '~') {
			$line9[$k] = substr($line9[$k], 0, strlen($line9[$k]) -1);
		}
	}
	$stCustomer .= @$line9[$k]."\r\n";
	
	if(isset($line10[$k])) {
		if(strlen($line10[$k]) > 1 && substr($line10[$k], -1) == '~') {
			$line10[$k] = substr($line10[$k], 0, strlen($line10[$k]) -1);
		}
	}
	$stCustomer .= @$line10[$k]."\r\n";
	
	$stCustomer .= "\r\n";
	$stCustomer .= "\r\n";
	
}
$stCustomer = str_replace("&#39;","'",$stCustomer);
//echo $stCustomer;die;
//$excel_obj->setHeadersAndValues($report_header, $report_values); 

header("Content-type: text/plain;\n"); 
echo $stCustomer;
$outname="customers.txt";
header("Content-Disposition: attachment; filename=\"$outname\";\n\n");
exit;



