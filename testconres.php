<?php
error_reporting(E_ALL);

function checkFTP($ftp_server, $port, $ftp_user, $ftp_pass)
{
	
	$arrBCC = array();	
	if($conn = @ftp_connect($ftp_server, $port)) {
		// Login
		if (@ftp_login($conn, $ftp_user, $ftp_pass)){
			@ftp_pasv($conn, true);
			echo "Connected as $ftp_user@$ftp_server <br>";
			//ftp_delete($conn, "/Inbound/Sales_In/test_ftp_by_web.txt") ;
if(in_array("/Inbound/Sales_In/systemtest.txt",ftp_nlist($conn, "/Inbound/Sales_In/"))){
	echo "<br>test...";
}
			$contents = ftp_nlist($conn, "/Inbound/");
			echo "Reaching folder.. :";
			var_dump($contents);
			$contents = ftp_nlist($conn, "/Inbound/Backup");
			echo "Reaching folder.. :";
			var_dump($contents);

if(in_array("/Inbound/Sales_In/salesin_end.txt",ftp_nlist($conn, "/Inbound/Sales_In/")) && in_array("/Inbound/Cust_In/custin_end.txt",ftp_nlist($conn, "/Inbound/Cust_In/"))){
				echo "<br>Cust end, Sale end...";
			}else{
				echo "<br>No Cust end, Sale end...";
			};
		} else {
			echo "Could not connect ftp\n";
			return false;
		}
		@ftp_close($conn);
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