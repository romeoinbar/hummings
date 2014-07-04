<?php
include_once "$php5RootPath/classes/tables.class.php";
include 'blocks/check_login.php';
include_once 'classes/cart.class.php'; 
$popup=1;
$clean=1;


switch($task)
{
	case 'enets' :
	include "$php5RootPath/modules/eshop/payment/enets.php"; 
	break;
	
}	
  

return;

