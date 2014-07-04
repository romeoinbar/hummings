<?php
function checkFTP()
{
	$ftp_server = "192.168.2.6";
	$arrBCC = array();
	//ftp://username:password@sld.domain.tld/path1/path2/ 
	// set up a connection or die
	if($conn = @ftp_connect($ftp_server, 7001)) {
	} else {
		echo "Could not connect ftp\n";
		$body = "Couldn't connect to $ftp_server

This is a system generated email update.

";
		//$title = "[HUMMING] FTP error " . date('m/d/Y', php5GMTTime());
		//php5Mail( php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), $title, $body, 0, '', $arrBCC);		
		return false;
	}
	// Login
	if (@ftp_login($conn, 'ftp_humming', 'p@ssw0rd'))
	{
	} else {
		echo "Could not connect ftp\n";
		$body = "Couldn't login to $ftp_server
		
This is a system generated email update.
		
";
		//$title = "[HUMMING] FTP error " . date('m/d/Y', php5GMTTime());
		//php5Mail( php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), $title, $body, 0, '', $arrBCC);		

			return false;
	}
	return $conn;
}

if (checkFTP())
	echo 'ok';
?>