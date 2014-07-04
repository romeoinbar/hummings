<?php
/***************************************************************************
*                                main.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'export'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'export_orders', 'main.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
$order_id = php5GetParam($_REQUEST, 'id', 0);
$arrayOrder = array('sales_doc_type','sales_order_number','sales_organization','distribution_channel','division','order_date','account_group','sold_to_party_no','title','name','block','unit','building','address1','address2','address3','address4','postcode','city','country','telephone1','telephone2','customer_group','payment_terms','tax_code','contact_person_code','contact_person_name','gender','contact_telephone1','contact_telephone2','credit_card_type','name_on_card','credit_card_no','expiry_date','cvv','approval_code','email','spcode','ssid','project_id','approved_by','reference_no','evoucher','evoucher_value','customer_industry_type', 'voucher_no', 'voucher_amount');

	$arrayItem = array('sales_order_number', 'item_number', 'material', 'qty', 'delivery_line','occasion','free_of_charge_indicator','condtype1','unit_price','condtype2', 'discount','other_surcharge_type','other_surcharge_amount','sp_indicator','promotions_id', 'loyalty_points');
														 
	$arraysubItem = array('sales_order_number', 'addon_item_number', 'material','addon_qty','addon_product');

	$arrayShip = array('sales_order_number','delivery_line', 'shipto_title', 'shipto_name','shipto_company', 'shipto_unit', 'shipto_block', 'shipto_building','shipto_address1','shipto_address2','shipto_address3','shipto_postcode','shipto_country','shipto_telephone1','shipto_telephone2','shipto_email','shipto_gender','special_instruction','from_date','to_date','delivery_time_code','from_message','to_message','message');
	
	$arrayCustomer = array('update_indicator','sold_to_party_no','name','ssid', 'block','unit','building','address1','address2','address3','address4','postcode','city','country','telephone1','telephone2','email');
	$st = '';
	//task
	$where = array();
	$where[] = "order_id = '$order_id'";
	//$where[] = "order_id IN (2365, 2366, 2367)";
	$query = "SELECT order_id, user_id, sales_doc_type, sales_order_number, sales_organization, distribution_channel, division, order_date, account_group, customer_group,  sold_to_party_no, title, name, block, unit, building, address1, address2, address3, address4, postcode, city, country, telephone1, telephone2, customer_group, payment_terms, tax_code, contact_person_code, contact_person_name, gender, contact_telephone1, contact_telephone2, '' as credit_card_type, '' as name_on_card, '' as credit_card_no, '' as expiry_date, '' as cvv, '' as approval_code, email, spcode, ssid, project_id, created_by, approved_by, reference_no, evoucher, evoucher_value, customer_industry_type, update_addres_indicator, voucher_no, voucher_amount "
				.   " FROM #__order "
	. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
	//. "\n ORDER BY id desc LIMIT $startLimit, $limit";
	. "\n ORDER BY order_id desc LIMIT 100";
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
	//order_item
	$query = "SELECT order_item_id, order_id, item_number, product_id, addon_product_id, sku, delivery_line, material, qty,occasion, free_of_charge_indicator,condtype1, unit_price, condtype2,discount,other_surcharge_type, other_surcharge_amount, sp_indicator, addon_qty, addon_sku ,promotions_id, loyalty_points, addon_item_number "
				.   " FROM #__order_item ";
				if(count($arrOrder) > 0) {
					$query .=  " WHERE order_id IN (" . implode( ',', $arrOrder ) . ")";
				} else {
					$query .=  " WHERE 1 > 2 ";
				}
	$php5DB->setQuery( $query );//echo $query;
	$rows_item = $php5DB->loadObjectList();
	$arrOrderItem = array();
	foreach($rows_item as $row) {
		$arrOrderItem[$row->order_item_id] = $row->order_item_id;
	}
	//order_addon
	$query = "SELECT * "
				.   " FROM #__order_addon ";
				if(count($arrOrder) > 0) {
					$query .=  " WHERE order_item_id IN (" . implode( ',', $arrOrderItem ) . ")";
				} else {
					$query .=  " WHERE 1 > 2 ";
				}
	$php5DB->setQuery( $query );//echo $query;
	$rows_order_addon = $php5DB->loadObjectList();
	//user
	$query = "SELECT * "
				.   " FROM #__user ";
				if(count($arrOrder) > 0) {
					$query .=  " WHERE user_id IN (" . implode( ',', $arrUser ) . ")";
				} else {
					$query .=  " WHERE 1 > 2 ";
				}
	$php5DB->setQuery( $query );//echo $query;
	$rows_user = $php5DB->loadObjectList();
	//delivery_item
	$query = "SELECT order_delivery_id, order_id, shipto_party_no, delivery_line, shipto_title, shipto_name, shipto_company, shipto_unit, shipto_block, shipto_building, shipto_address1, shipto_address2, shipto_address3, shipto_postcode, shipto_country, shipto_telephone1, shipto_telephone2, shipto_email, shipto_gender, special_instruction, from_date, to_date, delivery_time_code, from_message, to_message, message, order_id "
				.   " FROM #__order_delivery ";
				if(count($arrOrder) > 0) {
					$query .=  " WHERE order_id IN (" . implode( ',', $arrOrder ) . ")";
				} else {
					$query .=  " WHERE 1 > 2 ";
				}
	$php5DB->setQuery( $query );//echo $query;
	$rows_delivery = $php5DB->loadObjectList();
	//$report_values = array();
	$i = 2;
	$l = 1;
	$line3 = array();
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
			//item
			if(count($rows_item) > 0) {
				foreach($rows_item as $row1) {
					if($row1->order_id == $row->order_id) {
						$line2[$row->order_id][$row1->order_item_id] = "2~";
						$row1->sales_order_number = $row->sales_order_number;
						$row1->line = $row->line;
						foreach($arrayItem as $v2) {
							$line2[$row->order_id][$row1->order_item_id] .= $row1->$v2.'~';
						}
						$temp = '3~';
						$chkAddon = 1;
						if(count($rows_order_addon) > 0) {
							$lineTemp = sprintf("3~%s~%s~%s~%s~%s", $row->sales_order_number, $row1->item_number, $row1->sku, $row1->qty, 1);
							$line3[$row->order_id][$row1->order_item_id][$row1->product_id] = $lineTemp;
							foreach($rows_order_addon as $row2) {
								if($row2->order_item_id == $row1->order_item_id) {
									$lineTemp = sprintf("3~%s~%s~%s~%s~%s", $row->sales_order_number, $row2->addon_item_number, $row2->addon_sku, $row2->addon_qty, 0);
									$line3[$row->order_id][$row1->order_item_id][$row2->order_addon_id] = $lineTemp;
								}
							}
						}

					}
				}
			}
			//delivery
			if(count($rows_delivery) > 0) {
				foreach($rows_delivery as $row3) {  
					$row3->from_date = str_replace('-', '', $row3->from_date);
					$row3->to_date = str_replace('-', '', $row3->to_date);
					$char = 'EN';
					if($row3->order_id == $row->order_id) {
						///////////////////////
						$chkChinese = preg_match("/\p{Han}+/u", $row3->from_message);
						if($chkChinese) {
							$char = 'ZH';
						}
						$arrTemp = explode("\r", $row3->from_message);
						$stTemp = $char;
						for($i=0;$i<4;$i++) {
							if(isset($arrTemp[$i]) && trim($arrTemp[$i])) {
								$st = str_replace("\n","",$arrTemp[$i]);
								//$st = str_replace("&#39;","'",$st);
								$stTemp .= $st."^$char";
							} else {
								$stTemp .= "^$char";
							}
						}
						$row3->from_message = $stTemp;
						/////////////
						$chkChinese = preg_match("/\p{Han}+/u", $row3->to_message);
						if($chkChinese) {
							$char = 'ZH';
						}                   
						$arrTemp = explode("\r", $row3->to_message);
						$stTemp = $char;
						for($i=0;$i<2;$i++) {
							if(isset($arrTemp[$i]) && trim($arrTemp[$i])) {
								$st = str_replace("\n","",$arrTemp[$i]);
								//$st = str_replace("&#39;","'",$st);
								$stTemp .= $st."^$char";
							} else {
								$stTemp .= "^$char";
							}
						}
						$row3->to_message = $stTemp;
						/////////////
						$chkChinese = preg_match("/\p{Han}+/u", $row3->message);
						if($chkChinese) {
							$char = 'ZH';
						}                       
						$arrTemp = explode("\r", $row3->message);
						$stTemp = $char;
						for($i=0;$i<5;$i++) {
							if(isset($arrTemp[$i]) && trim($arrTemp[$i])) {
								$st = str_replace("\n","",$arrTemp[$i]);
								//$st = str_replace("&#39;","'",$st);
								$stTemp .= $st."^$char";
							} else {
								$stTemp .= "^$char";
							}
						}
						$row3->message = $stTemp;
						
						$row3->sales_order_number = $row->sales_order_number;
						$row3->line = $row->line;
						$line4[$row->order_id][$row3->order_delivery_id] = "4~";
						foreach($arrayShip as $v3) {
							$line4[$row->order_id][$row3->order_delivery_id] .= $row3->$v3.'~';
						}
					}
				}
			}
			//customer
			if(count($rows_user) > 0) {
				foreach($rows_user as $row5) {
					$row5->update_indicator = 1;
					$row5->ssid = $row->ssid;
					if($row5->user_id == $row->user_id) {
						$row5->sold_to_party_no = $row->sold_to_party_no;
						
						foreach($arrayCustomer as $v5) {
							$line5[$row->order_id] .= $row5->$v5.'~';
						}
						$line10[$row->order_id] = sprintf("6~%s~%s~%s~%s~%s~%s", $row->contact_person_code, $row->contact_person_name, $row5->surname, $row->gender, $row->contact_telephone1, $row->contact_telephone2);
					}
				}
			}       
			// Add some data
			$i++;
		}
	}
	$stOrder = '';
	$charN = "\n";
	foreach($line1 as $k=>$v) {
		if(strlen($v) > 1 && substr($v, -1) == '~') {
			$v = substr($v, 0, strlen($v) -1);
		}
		$stOrder .= $v.$charN;
		//item
		if(isset($line2[$k]) && is_array($line2[$k])) {
			foreach($line2[$k] as $k1=>$temp1) {
				if(strlen($temp1) > 1 && substr($temp1, -1) == '~') {
					$temp1 = substr($temp1, 0, strlen($temp1) -1);
				}
				$stOrder .= $temp1.$charN;
				//add on
				if(isset($line3[$k][$k1]) && is_array($line3[$k][$k1])) {
					foreach($line3[$k][$k1] as $k2 => $temp2) {
						if(strlen($temp2) > 1 && substr($temp2, -1) == '~') {
							$temp2 = substr($temp2, 0, strlen($temp2) -1);
						}                   
						$stOrder .= $temp2.$charN;
					}
				}
			}
		}
		//delivery
		if(isset($line4[$k]) && is_array($line4[$k])) {
			foreach($line4[$k] as $k1=>$temp) {
				if(strlen($temp) > 1 && substr($temp, -1) == '~') {
					$temp = substr($temp, 0, strlen($temp) -1);
					$stOrder .= $temp.$charN;
				}                   
			}
		}
		//$stOrder .= "\r\n";
		
	}
	$stOrder = str_replace("&#39;","'",$stOrder);
//$smarty->assign('main', $smarty->fetch($tpl));
//$redirect = $php5WebPath . "/images/export/orders.xls";
header("Content-type: text/plain;\n"); 
echo $stOrder;
$outname="orders.txt";
header("Content-Disposition: attachment; filename=\"$outname\";\n\n");
exit;



