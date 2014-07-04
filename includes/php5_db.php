<?php
 /***************************************************************************
 *                                php5_db.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");

switch($php5Config['db_type']){
	case 'mysql':
		include($php5RootPath . '/db/php5_mysql'.$php5Ext);
		break;		

	case 'msaccess':
		include($php5RootPath . '/db/php5_msaccess'.$php5Ext);
		break;
	default:
		include($php5RootPath . '/db/php5_mysql'.$php5Ext);
		break;
}

//connect common
$php5DB = connectDBCommon( $php5Config['db_host'], $php5Config['db_user'], $php5Config['db_pass'], $php5Config['db_name'], $php5Config['table_prefix']);
if(!$php5DB) {
	include $php5RootPath . "/under-construction.php";
	exit();
}
//connect common
$php5DB_en = connectDBEnglish( $php5Config['db_host'], $php5Config['db_user'], $php5Config['db_pass'],$php5Config['db_name_en'], $php5Config['table_prefix']);
if(!$php5DB_en) {
	include $php5RootPath . "/under-construction.php";
	exit();
}

$php5DB_data = $php5DB_en;
/*
// Make the database connection.
$php5DB = new php5Database( $php5Config['db_host'], $php5Config['db_user'], $php5Config['db_pass'], $php5Config['db_name'], $php5Config['table_prefix'] );
if ($php5DB->getErrorNum()) {
	$php5SystemError = $php5DB->getErrorNum();	
	include $php5RootPath . "/under-construction.php";
	exit();
}*/
?>