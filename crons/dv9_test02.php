<?php
// add script for testing permission from UA
$file = '/home/hummings/public_html/backup_sap/../crons/systemtest.txt';
$fh = fopen($file, 'w+');
fwrite($fh, "test");
fclose($fh);
//-------------------------------------------

$remote_file = '/Inbound/Cust_In/systemtest01.txt'; //I can name any filename here even rustam.txt as long as $file is exist

// set up basic connection
$conn_id = ftp_connect('192.168.2.6','7001');

// login with username and password
$login_result = ftp_login($conn_id, 'ftp_humming', 'p@ssw0rd');

ftp_pasv($conn_id, true);
// upload a file
if (ftp_put($conn_id, $remote_file, $file, FTP_ASCII)) {
 echo "successfully uploaded $remote_file\n";
} else {
 echo "There was a problem while uploading $file\n";
}

// close the connection
ftp_close($conn_id);
?>
