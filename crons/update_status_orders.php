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
//get file from server
if($conn = checkFTP()) {
	// turn passive mode on
	@ftp_pasv($conn, true);
	$arrFile = ftpRecursiveFileListing($conn, '/Outbound/Delv_Out');
	foreach($arrFile as $arr) {
		for($i=0;$i<count($arr);$i++) {
			if(strlen($arr[$i]) > 16) {
				// try to download $server_file and save to $local_file
				$file = $php5RootPath."/images/upload/".$arr[$i];
				if (@ftp_get($conn, $file, '/Outbound/Delv_Out/'.$arr[$i], FTP_BINARY)) {
					$lines = readfile_chunked($file);
					$arrDelivery = array('O'=>0, 'P'=>2, 'T'=>3, '5'=>4, '4'=>5 );
					if(is_array($lines) && count($lines) > 0) {
						foreach($lines as $line) {
							$arrTemp = explode('~', $line);
							if(count($arrTemp) != 7) {
								continue;
							}
							if(array_key_exists($arrTemp[5], $arrDelivery)) {
								$query = "SELECT order_id "
								. "\n FROM #__order "
								. "\n WHERE sales_order_number ='%s'"
								;
								
								$php5DB->setQuery(sprintf($query, $arrTemp[0]) );
								$order_id = $php5DB->loadResult();//echo sprintf($query, $arrTemp[0])."\n";
								echo "Starting update orderid = ".$order_id."\n";
								if($order_id) {
									$query = "UPDATE #__order_delivery"
										. "\n SET delivery_status='%s', delivery_status_sap='%s'"
										. "\n WHERE order_id = '%s' AND delivery_line='%s'"
										;
									$php5DB->setQuery( sprintf($query, $arrDelivery[$arrTemp[5]], $arrTemp[5],$order_id, $arrTemp[4]) );
									$php5DB->query();//echo sprintf($query, $arrDelivery[$arrTemp[5]], $order_id, $arrTemp[4])."\n";
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
						if (ftp_delete($conn, '/Outbound/Delv_Out/'.$arr[$i])) {
						 echo "file deleted successful\n";
						} else {
						 echo "could not delete file\n";
						}
						if (ftp_delete($conn, '/Outbound/Delv_Out/delstat_end.txt')) {
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
echo "Update status order DONE\n";
return;