<?php
/***************************************************************************
*                                generate.php
 *
 *   Begin date             : 
 *   Copyright              : 
 *   Email                  : 
 ***************************************************************************/
define('PHP5_PHP', true);
////////checkFTP
$arrBCC = array("kimlan@ua-consultants.com");

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
//////////
$date = date('Ymdhis', php5GMTTime());

$filename =  "$path/../sap/sales_in.txt";
$contents = '';
if($conn = checkFTP()) {

if(is_file($filename)) {
	$handle = fopen($filename, "r");
	$contents = fread($handle, filesize($filename));
	fclose($handle);
}
if($contents) {
	//if(!in_array("/Inbound/Sales_In/salesin_end.txt",ftp_nlist($conn, "/Inbound/Sales_In/")))	{
	$dir = "$path/../backup_sap/";
	if(!is_dir($dir)) {
		if(mkdir($dir, 0755)){};
	} else {
		if(chmod($dir, 0755)){};
	}
	//$dir = "$path/../backup_sap/$date/";
	$file = $dir . "salesin_$date.txt"; 
	$file_end = $dir . "salesin_end.txt"; 
	
	if(is_file($file)) {
		if(chmod($file, 0777)){};
	}
	$fh = fopen($file, 'w+');
	fwrite($fh, $contents);
	fclose($fh);

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
		if (ftp_put($conn, "/Inbound/Sales_In/salesin_$date.txt", $file, FTP_ASCII)) {
			if(unlink($filename)){
			}else{
			$body = "There was a problem cleaning $filename\n			
					This is a system generated email update.";
			$title = "[HUMMING] Clean error " . date('m/d/Y', php5GMTTime());
			php5Mail(php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), $title, $body, 0, '', $arrBC);	
			};
		} else {
			$body = "There was a problem while uploading $file\n
			
	This is a system generated email update.
			
	";
			$title = "[HUMMING] FTP error " . date('m/d/Y', php5GMTTime());
			php5Mail( php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), $title, $body, 0, '', $arrBCC);		
		}
		// upload a file end
		if (ftp_put($conn, '/Inbound/Sales_In/salesin_end.txt', $file_end, FTP_ASCII)) {
		} else {
			$body = "There was a problem while uploading $file_end\n
			
	This is a system generated email update.
			
	";
			$title = "[HUMMING] FTP error " . date('m/d/Y', php5GMTTime());
			php5Mail( php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), $title, $body, 0, '', $arrBCC);		
		}
		ftp_close($conn);	
	
	//}
}
}else{

}