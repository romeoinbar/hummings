<?php

$server = "192.168.2.6";
$port = "7001";
$timeout = 90;
$username = "ftp_humming";
$password = "p@ssw0rd";

#$file = 'testdv9.txt';
#$remote_file = '/Inbound/dv9/testdv9.txt'; //I can name any filename here even rustam.txt as long as $file is exist

$file = '/home/hummings/public_html/crons/systemtest.txt';
#$remote_file = '/Inbound/Sales_In/systemtest.txt'; //I can name any filename here even rustam.txt as long as $file is exis
$remote_file = '/Inbound/systemtest.txt'; //I can name any filename here even rustam.txt as long as $file is exist


$con = ftp_connect($server,$port,$timeout); 

if ( $con )
{
	writeTrace("FTP CONNECTION SUCCESS");
}
else
{
	writeTrace("FTP CONNECTION FAILED");
	$receiver_error = "suryanto@dv9.com, kiangchiang@dv9.com, monitor@dv9monitor.com";
	$subject_error = "HUMMING - FTP CONNECTION FAIL!";
	$msg_error =  "FTP CONNECTION FAIL!";
	mail($receiver_error, $subject_error, $msg_error);
	exit;
}

$login = @ftp_login($con,  $username,  $password); 

if ( $login )
{
	writeTrace("FTP LOGIN SUCCESS");
}
else
{
	writeTrace("FTP LOGIN FAIL");
	$receiver_error = "suryanto@dv9.com, kiangchiang@dv9.com, monitor@dv9monitor.com";
	$subject_error = "HUMMING - FTP LOGIN FAIL!";
	$msg_error =  "FTP LOGIN FAIL!";
	mail($receiver_error, $subject_error, $msg_error);
	exit;
}

@ftp_pasv($con, true);

@ftp_chdir($con, "Inbound/dv9"); 

$contents = ftp_nlist($con, ".");

echo $remote_file;
echo $file;
if ( @ftp_put ($con, $remote_file, $file, FTP_ASCII) ) 
{
	writeTrace("FTP UPLOAD SUCCESS");
} 
else 
{
	writeTrace("FTP UPLOAD FAIL");
	$receiver_error = "suryanto@dv9.com, kiangchiang@dv9.com, rustam@dv9.com, monitor@dv9monitor.com";
	$subject_error = "HUMMING - UPLOAD FAIL!";
	$msg_error =  "UPLOAD FAIL!";
	mail($receiver_error, $subject_error, $msg_error);
	exit;
}

ftp_close($con);


function writeTrace($msg){
	global $root;
	
  $dt = date("Y-m-d H:i:s");
	$dt2 = date("Y-m-d");
  
  $msg = preg_replace("/\n|\r/", " ", $msg);

	$log_file = "/home/hummings/public_html/ftp_logs/{$dt2}.log";
	$fhandle = fopen($log_file, "a+");
	$fcontent = "$dt => $msg\n";
	fwrite($fhandle, $fcontent);
	fclose($fhandle);
    
}

?>
