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
require_once($php5RootPath . "/classes/member.class.php");
$errMsg = array();
//get file from server
if($conn = checkFTP()) {
	// turn passive mode on
	@ftp_pasv($conn, true);
	$arrFile = ftpRecursiveFileListing($conn, '/Outbound/Cust_Out');
	foreach($arrFile as $arr) {
		for($i=0;$i<count($arr);$i++) {
			if(strlen($arr[$i]) > 16) {
				// try to download $server_file and save to $local_file
				$file = $php5RootPath."/images/upload/".$arr[$i];
				if (@ftp_get($conn, $file, '/Outbound/Cust_Out/'.$arr[$i], FTP_BINARY)) {
					$lines = readfile_chunked($file);
					//$arrDelivery = array('O'=>0, 'P'=>2, 'T'=>3, '5'=>4, '4'=>5 );
					if(is_array($lines) && count($lines) > 0) {
						$user = new Member($php5DB);
						$arrayCustomer = array('sold_to_party_no','name','ssid', 'block','unit','building','address1','address2','address3','address4','postcode','city','country','telephone1','telephone2','email');
						if(isset($lines[0])) {
							$line = trim($lines[0]);
							$arrTemp = explode('~', $line);
							if(count($arrTemp) != 17) {
								echo "Line 0 is wrong \n";
								continue;
							}
							
							if(!$arrTemp[1]) continue;
							
							$query = "SELECT user_id "
								. "\n FROM #__user "
								. "\n WHERE sold_to_party_no ='%s' LIMIT 1"
								;

							$php5DB->setQuery(sprintf($query, $arrTemp[1]) );
							$user_id = $php5DB->loadResult();
							if(!$user_id) {
								$errMsg[] = "Can not find user at /Outbound/Cust_Out/".$arr[$i];
								continue;
							}
							$j=1;
							
							$user->user_id = $user_id;
							foreach($arrayCustomer as $v5) {
								$user->$v5 = $arrTemp[$j];
								$j++;
							}
							
						}
						
						if(isset($lines[1])) {
							$line = trim($lines[1]);
							$arrTemp = explode('~', $line);
							$user->customer_industry_type = $arrTemp[1];
						}
						if(isset($lines[2])) {
							$line = trim($lines[2]);
							$arrTemp = explode('~', $line);
							$user->payment_terms = $arrTemp[1];
						}
						if(isset($lines[3])) {
							$line = trim($lines[3]);
							$arrTemp = explode('~', $line);
							$user->customer_group = $arrTemp[1];
						}
						if(isset($lines[4])) {
							$line = trim($lines[4]);
							$arrTemp = explode('~', $line);
							$user->tax_code = $arrTemp[1];
						}
						/*if(isset($lines[5])) {
							$line = trim($lines[5]);
							$arrTemp = explode('~', $line);
							$user->contact_person_code = $arrTemp[1];
							$user->contact_person_name = $arrTemp[1];
							$user->surname = $arrTemp[1];
							$user->gender = $arrTemp[1];
							$user->contact_telephone1 = $arrTemp[1];
							$user->contact_telephone2 = $arrTemp[1];
						}*/																								
						if(!$user->store()) {
							print_r($php5DB);
							continue;
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
						// try to delete $file custout_end.txt
						if (ftp_delete($conn, '/Outbound/Cust_Out/'.$arr[$i])) {
						 echo "file deleted successful\n";
						} else {
						 echo "could not delete file\n";
						}
						if (ftp_delete($conn, '/Outbound/Cust_Out/custout_end.txt')) {
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

	
echo "Update status order DONE\n";
return;
