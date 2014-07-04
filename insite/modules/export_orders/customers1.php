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
					 
$arrayCustomer = array('update_indicator','sold_to_party_no','name','ssid', 'block','unit','building','address1','address2','address3','address4','postcode','city','country','telephone1','telephone2','email');;

$st = '';

$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
$order_id = php5GetParam($_REQUEST, 'id', 0);



$arrMsg = array();
$msg ='';
//task
$where = array();
$where[] = "order_id = '$order_id'";
//$where[] = "order_id IN (2365, 2366, 2367)";

$query = "SELECT user_id, sold_to_party_no "
			.	" FROM #__order "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
//. "\n ORDER BY id desc LIMIT $startLimit, $limit";
. "\n ORDER BY order_id desc LIMIT 0, 100";
$php5DB->setQuery( $query );//echo $query;
$rows_order = $php5DB->loadObjectList();
if(!is_array($rows_order) || count($rows_order) < 1) {
	return;
}
$arrOrder = array();
$arrUser = array();
foreach($rows_order as $row) {
	$arrOrder[$row->sold_to_party_no] = $row->sold_to_party_no;
	$arrUser[$row->user_id] = $row->sold_to_party_no;
}
$stCustomer = '';
foreach($arrUser as $user_id => $sold_to_party_no) {
	//user
	$query = "SELECT * "
				.   " FROM #__user WHERE sold_to_party_no='$sold_to_party_no'";

	$php5DB->setQuery( $query );
	$rows_user = $php5DB->loadObjectList();
	if(!is_array($rows_user) || count($rows_user) < 1) {
		//user
		$query = "SELECT * "
					.   " FROM #__user WHERE user_id='$user_id'";
	
		$php5DB->setQuery( $query );
		$rows_user = $php5DB->loadObjectList();
		if(!is_array($rows_user) || count($rows_user) < 1) {
			continue;
		}
	}

	$i = 2;
	$l = 1;
	//customer
	if(count($rows_user) > 0) {
		foreach($rows_user as $row5) {
				$user_id = $row5->user_id;
				$line5[$user_id] = "1~";
				$line6[$user_id] = sprintf("2~%s", $row5->customer_industry_type);
				$line7[$user_id] = sprintf("3~%s", $row5->payment_terms);
				$line8[$user_id] = sprintf("4~%s", $row5->customer_group);
				$line9[$user_id] = sprintf("5~%s", $row5->tax_code);
				$php5DB->setQuery("SELECT count(order_id) FROM #__order WHERE user_id=".$row5->user_id." AND order_id<".$order_id);
				$tmp = $php5DB->loadResult();
				$update_indicator = ($tmp>0)?1:0;
				$row5->update_indicator = $update_indicator;
				if(isset($row5->ssid)) {
				} else {
					$row5->ssid = "IM6";
				}
				if($row5->user_id == $row5->user_id) {
					$row5->sold_to_party_no = $row5->sold_to_party_no;
					
					foreach($arrayCustomer as $v5) {
							$line5[$user_id] .= $row5->$v5.'~';
					}
					$line10[$user_id] = sprintf("6~%s~%s~%s~%s~%s~%s", $row5->contact_person_code, $row5->name, $row5->surname, $row5->gender, $row5->telephone1, $row5->telephone2);
				}
		}
		//////////////////////////////////////
		foreach($line5 as $user_id => $v) {
				$k = $user_id;
				//customer
	//			$stCustomer .= "Cust_in file";
				$charN = "\n";
				//$stCustomer .= "\r\n";
				if(isset($line5[$k])) {
						if(strlen($line5[$k]) > 1 && substr($line5[$k], -1) == '~') {
								$line5[$k] = substr($line5[$k], 0, strlen($line5[$k]) -1);
						}
				}
				$stCustomer .= @$line5[$k].$charN;
				
				if(isset($line6[$k])) {
						if(strlen($line6[$k]) > 1 && substr($line6[$k], -1) == '~') {
								$line6[$k] = substr($line6[$k], 0, strlen($line6[$k]) -1);
						}
				}
				$stCustomer .= @$line6[$k].$charN;
				
				if(isset($line7[$k])) {
						if(strlen($line7[$k]) > 1 && substr($line7[$k], -1) == '~') {
								$line7[$k] = substr($line7[$k], 0, strlen($line7[$k]) -1);
						}
				}
				$stCustomer .= @$line7[$k].$charN;
				
				if(isset($line8[$k])) {
						if(strlen($line8[$k]) > 1 && substr($line8[$k], -1) == '~') {
								$line8[$k] = substr($line8[$k], 0, strlen($line8[$k]) -1);
						}
				}
				$stCustomer .= @$line8[$k].$charN;
				
				if(isset($line9[$k])) {
						if(strlen($line9[$k]) > 1 && substr($line9[$k], -1) == '~') {
								$line9[$k] = substr($line9[$k], 0, strlen($line9[$k]) -1);
						}
				}
				$stCustomer .= @$line9[$k].$charN;
				
				if(isset($line10[$k])) {
						if(strlen($line10[$k]) > 1 && substr($line10[$k], -1) == '~') {
								$line10[$k] = substr($line10[$k], 0, strlen($line10[$k]) -1);
						}
				}
				$stCustomer .= @$line10[$k].$charN;
		}		
	}
}
	

$stCustomer = str_replace("&#39;","'",$stCustomer);
echo 'wqewq='.$stCustomer;
//echo $stCustomer;die;
//$excel_obj->setHeadersAndValues($report_header, $report_values); 

/*header("Content-type: text/plain;\n"); 
echo $stCustomer;
$outname="customers.txt";
header("Content-Disposition: attachment; filename=\"$outname\";\n\n");
exit;*/



