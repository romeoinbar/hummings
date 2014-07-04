<?php


function checkFTP($ftp_server, $port, $ftp_user, $ftp_pass)
{
	
	$arrBCC = array();	
	if($conn = @ftp_connect($ftp_server, $port)) {
	} else {
		echo "Could not connect ftp\n";	
		return false;
	}
	// Login
	if (@ftp_login($conn, $ftp_user, $ftp_pass)){
		 echo "Connected as $ftp_user@$ftp_server\n";
		 ftp_delete($conn, "/Inbound/Sales_In/test_ftp_by_web.txt") ;
		 $contents = ftp_nlist($conn, "/Inbound/Sales_In/");
		 
		 // output $contents
		var_dump($contents);

		 /*if (@ftp_put($conn, "/Inbound/Sales_In/test_ftp_by_web.txt", "test_ftp_by_web.txt", FTP_ASCII))
		 	echo "successfully uploaded $file\n";
		 else
		 	echo "There was a problem while uploading .";*/
			
	} else {
		echo "Could not connect ftp\n";
		return false;
	}
	return $conn;
}
if ($_POST['server']!='') {
	
	$ftp_server = $_POST['server'];
	$port = $_POST['port'];
	$ftp_user = $_POST['user'];
	$ftp_pass = $_POST['pass'];
	$conn = checkFTP($ftp_server, $port, $ftp_user, $ftp_pass);	
}

?>