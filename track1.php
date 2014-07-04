<?php
error_reporting(0);
$username = "hummings_db";
$db_password = "abc1234";
$database = "hummings_db";

mysql_connect("localhost",$username,$db_password);
@mysql_select_db($database) or die( "Unable to select database");

$type = (isset($_GET['type']))?$_GET['type']:1;
$temp = (isset($_GET['temp']))?$_GET['temp']:0;
$curr_date = date("Y-m-d");
$referal_url = $_GET['redirect'];

if ($type==1) {	
	$rs1 = mysql_query("SELECT * FROM tbl_rate_detail WHERE date_added='".$curr_date."' AND type=".$type." AND IP='".VisitorIP()."' AND typeoftemp=".$temp);	
} else {
	$rs1 = mysql_query("SELECT * FROM tbl_rate_detail WHERE date_added='".$curr_date."' AND type=".$type." AND 	typeoftemp=".$temp);	
}
$num_rows1 = mysql_num_rows($rs1);

if ($num_rows1==0){
	$rs2 = mysql_query("SELECT * FROM tbl_rate_email WHERE date_added='".$curr_date."' AND type=".$type." AND 	typeoftemp=".$temp);	
	$num_rows = mysql_num_rows($rs2);
	if ($num_rows>0){
		$query = "UPDATE tbl_rate_email SET count = count+1 WHERE date_added='".$curr_date."' AND type=".$type." AND typeoftemp=".$temp;
	} else {
		$query = "INSERT INTO tbl_rate_email (count, date_added, type, 	typeoftemp) VALUES (1, '".$curr_date."', ".$type.", ".$temp.")";
		$query1 = "INSERT INTO tbl_rate_detail (IP, date_added, type, referal_url,typeoftemp) VALUES ('".VisitorIP()."', '".$curr_date."', ".$type.", '".$referal_url."', ".$temp.")";
		mysql_query($query1) or die( mysql_error() );
	}
} 

if ($type==1){
	header('Location: '.$referal_url);
}
		
mysql_query($query) or die( mysql_error() );
mysql_close();

function VisitorIP(){ 
    if(isset($_SERVER['HTTP_X_FORWARDED_FOR']))
        $TheIp=$_SERVER['HTTP_X_FORWARDED_FOR'];
    else $TheIp=$_SERVER['REMOTE_ADDR'];
 
    return trim($TheIp);
}
?>