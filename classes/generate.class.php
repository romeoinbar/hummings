<?php

defined('PHP5_PHP') or die("Application is stopping!!!");
require_once($php5RootPath . "/classes/order_log.class.php");
require_once($php5RootPath . "/classes/user_log.class.php");
require_once($php5RootPath . "/classes/tables.class.php");

define("DIR_SAP", $php5RootPath."/sap/");
class Generate
{
    var $arrBCC = NULL;
    
	function __construct( $dbh ) {
            //$this->arrBCC = array("romeoinbar@gmail.com");
		$this->php5DB = $dbh;
               
	}
	function move_user_file()
	{
		$date = date('Ymdhis', php5GMTTime());
		$dir = DIR_SAP;
		$path = dirname(__FILE__);
		
		$testfile =  $dir."test.txt";
		$filename =  $dir."cust_in.txt";
		$contents = '';
		$error = 0;
				
		if($conn = checkFTP()) {
			
			if(is_file($filename)) {
				//if(!in_array("/Inbound/Cust_In/custin_end.txt",ftp_nlist($conn, "/Inbound/Cust_In/"))){
				$dir = "$path/../backup_sap/";
				if(!is_dir($dir)) {
					if(mkdir($dir, 0755)){};
				} else {
					if(chmod($dir, 0755)){};
				}
				//$dir = "$path/../backup_sap/$date/";
				$file = $dir . "custin_$date.txt"; 
				$file_end = $dir . "custin_end.txt"; 
				
				if(is_file($file)) {
					if(chmod($file, 0777)){};
				}
				//echo "Copy $filename => $file<br/>";
				if (!copy($filename, $file)) {
					echo "failed to copy $file...<br />\n";
				}				
				//create salesin_end
				$fh = fopen($file_end, 'w');
				fwrite($fh, '');
				fclose($fh);	
				if(chmod($file, 0644)){};
				if(chmod($dir, 0755)){};
				//up to server
			
					// turn passive mode on
					ftp_pasv($conn, true);
					// upload a file
					if (ftp_put($conn, "/Inbound/Cust_In/custin_$date.txt", $file, FTP_ASCII)) {
						if(unlink($filename)){};
					} else {
						echo "There was a problem while uploading $file<br />\n";
						$body = "There was a problem while uploading $file\n
						
				This is a system generated email update.
						
				";
						$title = "[HUMMING] FTP error " . date('m/d/Y', php5GMTTime());
						php5Mail( php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), $title, $body, 0, '', $this->arrBCC);		
					}
					// upload a file end
					if (ftp_put($conn, '/Inbound/Cust_In/custin_end.txt', $file_end, FTP_ASCII)) {
					} else {
						$body = "There was a problem while uploading $file_end\n
						
				This is a system generated email update.
						
				";
						$title = "[HUMMING] FTP error " . date('m/d/Y', php5GMTTime());
						php5Mail( php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), $title, $body, 0, '', $this->arrBCC);		
					}
					ftp_close($conn);
				
				//}
			}
		}else{
		
		}		
	}
	function move_order_file()
	{
		//////////
		$date = date('Ymdhis', php5GMTTime());
		$dir = DIR_SAP;
		$path = dirname(__FILE__);
		
		$testfile =  $dir."test.txt";
		$filename =  $dir."sales_in.txt";
		$contents = '';
		$error = 0;
		if($conn = checkFTP()) {
			if(is_file($filename)) {

				$dir = "$path/../backup_sap/";
				if(!is_dir($dir)) {
					if(mkdir($dir, 0755)){};
				} else {
					if(chmod($dir, 0755)){};
				}
				$file = $dir . "salesin_$date.txt"; 
				$file_end = $dir . "salesin_end.txt"; 
				
				if(is_file($file)) {
					if(chmod($file, 0777)){};
				}
				//echo $filename." => ". $file;
				if (!copy($filename, $file)) {
					echo "failed to copy $file...<br />\n";
				}
			
				//create salesin_end
				$fh = fopen($file_end, 'w');
				fwrite($fh, '');
				fclose($fh);	
				if(chmod($file, 0644)){};
				if(chmod($dir, 0755)){};
				//up to server
			
				// turn passive mode on
				ftp_pasv($conn, true);
				if (@ftp_get($conn, $testfile, "/Inbound/Sales_In/salesin_$date.txt", FTP_BINARY)) {
					@unlink($testfile);
					return false;
				}
				// upload a file
				if (ftp_put($conn, "/Inbound/Sales_In/salesin_$date.txt", $file, FTP_ASCII)) {
					if(unlink($filename)){
					}else{
					echo "There was a problem cleaning $filename<br />\n";	
					$body = "There was a problem cleaning $filename\n			
							This is a system generated email update.";
					$title = "[HUMMING] Clean error " . date('m/d/Y', php5GMTTime());
					php5Mail(php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), $title, $body, 0, '', $arrBC);	
					};
					error_log("There was a problem cleaning $filename\n", 0);
					$error = 1;	
				} else {
					echo "There was a problem while uploading $file<br />\n";
					$body = "There was a problem while uploading $file\n
					
			This is a system generated email update.
					
			";
					$title = "[HUMMING] FTP error " . date('m/d/Y', php5GMTTime());
					php5Mail( php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), $title, $body, 0, '', $this->arrBCC);
					error_log("There was a problem while uploading $file\n", 0);
					$error = 1;
				}
				// upload a file end
				if (ftp_put($conn, '/Inbound/Sales_In/salesin_end.txt', $file_end, FTP_ASCII)) {
				} else {
					$body = "There was a problem while uploading $file_end\n
					
			This is a system generated email update.
					
			";
					$title = "[HUMMING] FTP error " . date('m/d/Y', php5GMTTime());
					php5Mail( php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), $title, $body, 0, '', $this->arrBCC);
					error_log("There was a problem while uploading $file\n", 0);
					$error = 1;		
				}
				ftp_close($conn);	
	
			}
		}
		return true;
	}
	///////////////////////////////////////////
	function cron_generate_user_file($id)
	{
		$dir = DIR_SAP;		
		$testfile =  $dir."test.txt";
		if($conn = checkFTP()) {
			// turn passive mode on
			ftp_pasv($conn, true);
			if (@ftp_get($conn, $testfile, "/Inbound/Cust_In/custin_end.txt", FTP_BINARY)) {
				echo "False!custin_end.txt file is existing<br />\n";
				@unlink($testfile);
				$body = "False!custin_end.txt file is existing\n
						
				This is a system generated email update.
						
				";
						$title = "[HUMMING] FTP error " . date('m/d/Y', php5GMTTime());
						php5Mail( php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), $title, $body, 0, '', $this->arrBCC);						
				return false;
			}			
		} else {
			return false;
		}
		
		$php5DB = $this->php5DB;
		$userLog = new UserLog($this->php5DB);
		$userLog->load($id);
		if ($userLog->id) {
			$dir = DIR_SAP;
			$file = $dir."cust_in.txt";

			$arrayCustomer = array('update_indicator','sold_to_party_no','name','ssid', 'block','unit','building','address1','address2','address3','address4','postcode','city','country','telephone1','telephone2','email');
			
			$st = '';
			//task
			$where = array();
			$user_id = $userLog->user_id;
			$update_indicator= $userLog->update_indicator;
			$arrUser = array($user_id);
			//user
			$query = "SELECT * "
						.   " FROM #__user ";
						if(count($arrUser) > 0) {
							$query .=  " WHERE user_id IN (" . implode( ',', $arrUser ) . ")";
						} else {
							$query .=  " WHERE 1 > 2 ";
						}
			$php5DB->setQuery( $query );
			$rows_user = $php5DB->loadObjectList();
			if(!is_array($rows_user) || count($rows_user) < 1) {
				return false;
			}
			$i = 2;
			$l = 1;
					//customer
					if(count($rows_user) > 0) {
						$line5[$user_id] = "1~";
						foreach($rows_user as $row5) {
									$line6[$user_id] = sprintf("2~%s", $row5->customer_industry_type);
									$line7[$user_id] = sprintf("3~%s", $row5->payment_terms);
									$line8[$user_id] = sprintf("4~%s", $row5->customer_group);
									$line9[$user_id] = sprintf("5~%s", $row5->tax_code);
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
					}       
			$stCustomer = '';
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
					
					//$stCustomer .= "\r\n";
					//$stCustomer .= "\r\n";
					
			$stCustomer = str_replace("&#39;","'",$stCustomer);
			//////////
			$date = date('Ymd', php5GMTTime());
			if(!is_dir($dir)) {
				if(mkdir($dir, 0755)){};
			} else {
				if(chmod($dir, 0755)){};
			}
			if(is_file($file)) {
				if(chmod($file, 0777)){};
			}
			$fh = fopen($file, 'a+');
			if(@fwrite($fh, $stCustomer)) {
				$userLog->status = 1;
			} else {
				echo "There was a problem writing $file<br />\n";
				$userLog->times = $userLog->times + 1;
				//send email
				$body = "There was a problem writing $file\n			
						This is a system generated email update.";
				$title = "[HUMMING] Write error " . date('m/d/Y', php5GMTTime());
				php5Mail(php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), $title, $body, 0, '', $arrBC);
				error_log("There was a problem writing $file\n", 0);						
			}
			$userLog->store();
			fclose($fh);
			if(chmod($file, 0644)){};
			if(chmod($dir, 0755)){};
			return true;			
		}
	}
	/////////////////////////////////////////	
	function cron_generate_order_file($id)
	{
		$dir = DIR_SAP;		
		$testfile =  $dir."test.txt";
		if($conn = checkFTP()) {
			// turn passive mode on
			ftp_pasv($conn, true);
			if (@ftp_get($conn, $testfile, "/Inbound/Sales_In/salesin_end.txt", FTP_BINARY)) {
				echo "False!salesin_end.txt file is existing<br />\n";
				@unlink($testfile);
				$body = "False!salesin_end.txt file is existing\n
						
				This is a system generated email update.
						
				";
						$title = "[HUMMING] FTP error " . date('m/d/Y', php5GMTTime());
						php5Mail( php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), $title, $body, 0, '', $this->arrBCC);						
				return false;
			}			
		} else {
			return false;
		}		
		$php5DB = $this->php5DB;
		$orderLog = new OrderLog($this->php5DB);
		$orderLog->load($id);
		if ($orderLog->id) {
			$order_id = $orderLog->order_id;
			$dir = DIR_SAP;
			$file = $dir."sales_in.txt";
			
			$arrayOrder = array('sales_doc_type','sales_order_number','sales_organization','distribution_channel','division','order_date','account_group','sold_to_party_no','title','name','block','unit','building','address1','address2','address3','address4','postcode','city','country','telephone1','telephone2','customer_group','payment_terms','tax_code','contact_person_code','contact_person_name','gender','contact_telephone1','contact_telephone2','credit_card_type','name_on_card','credit_card_no','expiry_date','cvv','approval_code','email','spcode','ssid','project_id','approved_by','reference_no','evoucher','evoucher_value','customer_industry_type', 'voucher_no', 'voucher_amount');
		
			$arrayItem = array('sales_order_number', 'item_number', 'material', 'qty', 'delivery_line','occasion','free_of_charge_indicator','condtype1','unit_price','condtype2', 'discount','other_surcharge_type','other_surcharge_amount','sp_indicator','promotions_id', 'loyalty_points');
																 
			$arraysubItem = array('sales_order_number', 'addon_item_number', 'material','addon_qty','addon_product');
		
			$arrayShip = array('sales_order_number','delivery_line', 'shipto_title', 'shipto_name','shipto_company', 'shipto_unit', 'shipto_block', 'shipto_building','shipto_address1','shipto_address2','shipto_address3','shipto_postcode','shipto_country','shipto_telephone1','shipto_telephone2','shipto_email','shipto_gender','special_instruction','from_date','to_date','delivery_time_code','from_message','to_message','message');
			
			$arrayCustomer = array('update_indicator','sold_to_party_no','name','ssid', 'block','unit','building','address1','address2','address3','address4','postcode','city','country','telephone1','telephone2','email');
			$st = '';
			//task
			$where = array();
			$where[] = "order_id = '$order_id'";
			$query = "SELECT order_id, user_id, sales_doc_type, sales_order_number, sales_organization, distribution_channel, division, order_date, account_group, customer_group,  sold_to_party_no, title, name, block, unit, building, address1, address2, address3, address4, postcode, city, country, telephone1, telephone2, customer_group, payment_terms, tax_code, contact_person_code, contact_person_name, gender, contact_telephone1, contact_telephone2, '' as credit_card_type, '' as name_on_card, '' as credit_card_no, '' as expiry_date, '' as cvv, '' as approval_code, email, spcode, ssid, project_id, created_by, approved_by, reference_no, evoucher, evoucher_value, customer_industry_type, update_addres_indicator, voucher_no, voucher_amount "
						.   " FROM #__order "
			. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
			//. "\n ORDER BY id desc LIMIT $startLimit, $limit";
			. "\n ORDER BY order_id desc ";
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
			}
			$stOrder = str_replace("&#39;","'",$stOrder);
			//////////
			$date = date('Ymd', php5GMTTime());
			if(!is_dir($dir)) {
				if(@mkdir($dir, 0755)){};
			} else {
				if(@chmod($dir, 0755)){};
			}
			if(is_file($file)) {
				if(chmod($file, 0777)){};
			}
			$fh = @fopen($file, 'a+');
			if(@fwrite($fh, $stOrder)) {
				$orderLog->status = 1;
			} else {
				echo "There was a problem writing $file<br />\n";
				$orderLog->times = $orderLog->times + 1;
				//send email
				$body = "There was a problem writing $file\n			
						This is a system generated email update.";
				$title = "[HUMMING] Write error " . date('m/d/Y', php5GMTTime());
				php5Mail(php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), $title, $body, 0, '', $arrBC);
				error_log("There was a problem writing $file\n", 0);						
			}
			$orderLog->store();
			fclose($fh);	
			if(@chmod($file, 0644)){};
			if(@chmod($dir, 0755)){};
		}
		return;
	}
	function generate_order_file($order_id)
	{
        $php5DB = $this->php5DB;
        $query = "SELECT count(*)
FROM #__order_log
WHERE order_id = '$order_id' AND status = 0 and times = 1";
        $php5DB->setQuery( $query );
        $count = intval($php5DB->loadResult());

        if($count) {
            return false;
        }

		//$this->arrBCC = array("nam@ua-consultants.com");
		
		$orderLog = new OrderLog($this->php5DB);
		$orderLog->id = 0;
		$orderLog->order_id = $order_id;
		$orderLog->store();
		if(!$orderLog->id) {
			//send email for error
		}
		return;
	}
	function generate_customer_file($user_id, $update_indicator)
	{
        $php5DB = $this->php5DB;
        $query = "SELECT count(*)
        FROM #__user_log
        WHERE user_id = '$user_id' AND status = 0 and times = 1";
        $php5DB->setQuery( $query );
        $count = intval($php5DB->loadResult());

        if($count) {
            return false;
        }

		//$this->arrBCC = array("nam@ua-consultants.com");
		
		$userLog = new UserLog($this->php5DB);
		$userLog->id = 0;
		$userLog->user_id = $user_id;
		$userLog->update_indicator = $update_indicator;
		$userLog->store();
		if(!$userLog->id) {
			//send email for error
		}
		return;
	}		
}
