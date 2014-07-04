<?php
/***************************************************************************
*                               order.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
define('PHP5_PHP', true);
global $php5DB, $php5Config, $php5Template, $php5User, $php5Session, $php5TemplatePath, $php5Msg, $php5Section, $language, $task, $define;
global $msgAlert, $redirect, $php5DB_en, $php5DB_data;
////////checkFTP
$arrBCC = array();

$path = dirname(__FILE__);

include("$path/../configs/extension.inc");
include("$path/../configs/config".$php5Ext);

if(!is_file($php5RootPath . "/includes/php5_common" . $php5Ext)){
	echo "To check the config file.";
	die();
}
$language = 'en';

require_once($php5RootPath . "/includes/php5_define" . $php5Ext);
require_once($php5RootPath . "/includes/class.inputfilter" . $php5Ext);
require_once($php5RootPath . "/includes/php5_common" . $php5Ext);
php5Init( 0 );
require_once($php5RootPath . "/includes/generate.php");
require_once($php5RootPath . "/classes/order.class.php");
require_once($php5RootPath . "/classes/order_item.class.php");
require_once($php5RootPath . "/classes/order_delivery.class.php");

$errMsg = array();
//get file from server
if($conn = checkFTP()) {
	// turn passive mode on
	@ftp_pasv($conn, true);
	$arrFile = ftpRecursiveFileListing($conn, '/Outbound/Sales_Out');
	foreach($arrFile as $arr) {
		for($i=0;$i<count($arr);$i++) {
			if(strlen($arr[$i]) > 16) {
				// try to download $server_file and save to $local_file
				$file = $php5RootPath."/images/upload/".$arr[$i];
				if (@ftp_get($conn, $file, '/Outbound/Sales_Out/'.$arr[$i], FTP_BINARY)) {
					$lines = readfile_chunked($file);
					//$arrDelivery = array('O'=>0, 'P'=>2, 'T'=>3, '5'=>4, '4'=>5 );
					if(is_array($lines) && count($lines) > 0) {
						$order = new Order($php5DB);
						$order_id = 0;
						$arrayOrder = array('sales_doc_type','sales_order_number','sales_organization','distribution_channel','division','account_group','sold_to_party_no','title','name','block','unit','building','address1','address2','address3','address4','postcode','city','country','telephone1','telephone2','customer_group','payment_terms','tax_code','contact_person_code','contact_person_name','gender','contact_telephone1','contact_telephone2','credit_card_type','name_on_card','credit_card_no','expiry_date','cvv','approval_code','email','spcode','ssid','project_id','approved_by','reference_no','evoucher','evoucher_value','customer_industry_type');
						if(isset($lines[0])) {
							$line = trim($lines[0]);
							$arrTemp = explode('~', $line);
							
							if(count($arrTemp) != 45) {
								echo "Line 0 is wrong \n";
								continue;
							}
							
							if(!$arrTemp[2]) continue;
							
							$query = "SELECT order_id "
								. "\n FROM #__order "
								. "\n WHERE sales_order_number ='%s'"
								;
								
							$php5DB->setQuery(sprintf($query, $arrTemp[2]) );
							$order_id = $php5DB->loadResult();//echo sprintf($query, $arrTemp[0])."\n";
							if(!$order_id) {
								$errMsg[] = "Can not find order at /Outbound/Sales_Out/".$arr[$i];
								 continue;
							}
							$j=1;
							
							$order->order_id = $order_id;
							foreach($arrayOrder as $v5) {
								if(isset($arrTemp[$j]) && $v5!='approval_code') {
									$order->$v5 = $arrTemp[$j];
									$j++;
								}
							}
							if(!$order->store()) {
								print_r($php5DB);
								continue;
							}
						}
						for($k=1;$k<=count($lines);$k++) {
							if(isset($lines[$k])) {
								$line = trim($lines[$k]);
								$arrTemp = explode('~', $line);	
								if($arrTemp[0] == 2) {
									$order_item = new OrderItem($php5DB);
									
									$query = "SELECT order_item_id "
										. "\n FROM #__order_item "
										. "\n WHERE order_id ='%s' and material = '%s'"
										;
										
									$php5DB->setQuery(sprintf($query, $order_id, $arrTemp[3] ) );
									$order_item_id = $php5DB->loadResult();//echo sprintf($query, $arrTemp[0])."\n";
									if(!$order_item_id) {
										$errMsg[] = "Can not find order at /Outbound/Sales_Out/".$arr[$i];
										 continue;
									}									
									$arrayItem = array('item_number', 'material', 'qty', 'delivery_line','occasion','free_of_charge_indicator','condtype1','unit_price','condtype2', 'discount','other_surcharge_type','other_surcharge_amount','sp_indicator');
									$j=2;
									$order_item->order_item_id = $order_item_id;
									foreach($arrayItem as $v5) {
										if(isset($arrTemp[$j])) {
											$order_item->$v5 = $arrTemp[$j];
											$j++;
										}
									}
									//$order_item->store();
									if(!$order_item->store()) {
										print_r($php5DB);
										continue;
									}									
								}
																
								if($arrTemp[0] == 4) {
									$order_delivery = new OrderDelivery($php5DB);
									$arrayShip = array('delivery_line', 'shipto_title', 'shipto_name','shipto_company', 'shipto_unit', 'shipto_block', 'shipto_building','shipto_address1','shipto_address2','shipto_address3','shipto_postcode','shipto_country','shipto_telephone1','shipto_telephone2','shipto_email','shipto_gender','special_instruction','from_date','to_date','delivery_time_code','from_message','to_message','message');
									$query = "SELECT order_delivery_id "
										. "\n FROM #__order_delivery "
										. "\n WHERE order_id ='%s' and delivery_line = '%s'"
										;
										
									$php5DB->setQuery(sprintf($query, $order_id, $arrTemp[2] ) );
									$order_delivery_id = $php5DB->loadResult();//echo sprintf($query, $arrTemp[0])."\n";
									if(!$order_delivery_id) {
										$errMsg[] = "Can not find order at /Outbound/Sales_Out/".$arr[$i];
										 continue;
									}
									$j=2;
									$order_delivery->order_delivery_id = $order_delivery_id;
									foreach($arrayShip as $v5) {
										if(isset($arrTemp[$j])) {
											$order_delivery->$v5 = $arrTemp[$j];
											$j++;
										}
									}
									if(strlen($order_delivery->from_message) > 2) {
										$st = substr($order_delivery->from_message, 2);
										$st = str_replace('^EN', '', $st);
										$st = str_replace('^ZH', '', $st);
										$order_delivery->from_message = $st;
									}
									if(strlen($order_delivery->to_message) > 2) {
										$st = substr($order_delivery->to_message, 2);
										$st = str_replace('^EN', '', $st);
										$st = str_replace('^ZH', '', $st);
										$order_delivery->to_message = $st;
									}
									if(strlen($order_delivery->message) > 2) {
										$st = substr($order_delivery->message, 2);
										$st = str_replace('^EN', '', $st);
										$st = str_replace('^ZH', '', $st);
										$order_delivery->message = $st;
									}												
									//$order_delivery->store();	
									if(!$order_delivery->store()) {
										print_r($php5DB);
										continue;
									}																									
								}								
							}
						}
						
						//backup
						$dir = "$path/../backup_sap/";
						$date = date('Ymd', php5GMTTime());
						if(!is_dir($dir)) {
							if(mkdir($dir, 0755)){};
						} else {
							if(chmod($dir, 0755)){};
						}
						$dir = "$path/../backup_sap/$date/";
						$file = $dir . $arr[$i]; 
						
						if(!is_dir($dir)) {
							if(mkdir($dir, 0755)){};
						} else {
							if(chmod($dir, 0755)){};
						}
						
						if(is_file($file)) {
							if(chmod($file, 0777)){};
						}
						$fh = fopen($file, 'w+');
						foreach($lines as $line) {
							fwrite($fh, $line);
						}
						fclose($fh);
						if(chmod($file, 0644)){};
						if(chmod($dir, 0755)){};
						//delete file from ftp
						// try to delete $file
						if (ftp_delete($conn, '/Outbound/Sales_Out/'.$arr[$i])) {
						 echo "file deleted successful\n";
						} else {
						 echo "could not delete file\n";
						}
						if (ftp_delete($conn, '/Outbound/Sales_Out/salesout_end.txt')) {
						 echo "file deleted successful\n";
						} else {
						 echo "could not delete file\n";
						}						
					}			
				} else {
					echo "File is empty\n";
				}   				
				
			}
		}
	}	
	
$st = "";
$arrBCC = array();
if(count($errMsg) > 0) {
	foreach($errMsg as $v) {
		$st .= $v."\n";
	}
	$body = "$st
	
	This is a system generated email update.
	
	";
	$title = "[HUMMING] custin error " . date('m/d/Y', php5GMTTime());
	php5Mail( php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), $title, $body, 0, '', $arrBCC);	
}
}


function readfile_chunked ($filename,$type='array') {
	if(!is_file($filename)) {
		return 404;
	}
	if(!is_readable($filename)) {
		return 403;
	}

	$chunk_array=array();
	$chunksize = 1*(1024*1024); // how many bytes per chunk
	$buffer = '';
	$handle = fopen($filename, 'rb');
	if ($handle === false) {
	 return false;
	}
	while (!feof($handle)) {
			switch($type)
			{
					case'array':
					// Returns Lines Array like file()
					$st = fgets($handle, $chunksize);
					if(trim($st)) {
						$lines[] = $st;
					}
					break;
					case'string':
					// Returns Lines String like file_get_contents()
					$lines = fread($handle, $chunksize);
					break;
			}
	}
	 fclose($handle);
	 //print_r($lines);
	 return $lines;
} 

function ftpRecursiveFileListing($ftpConnection, $path) {
    static $allFiles = array();
	//return ftp_nlist($ftpConnection, $path);
    $contents = ftp_nlist($ftpConnection, $path);

    foreach($contents as $currentFile) {
        // assuming its a folder if there's no dot in the name
        if (strpos($currentFile, '.') === false ) {
            ftpRecursiveFileListing($ftpConnection, $currentFile);
        }
        $allFiles[$path][] = substr($currentFile, strlen($path) + 1);
    }
    return $allFiles;
} 
echo "Update status order DONE\n";
return;