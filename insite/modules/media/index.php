<?php
/***************************************************************************
*                                index.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
define('PHP5_PHP', true);

global $php5DB, $php5Config, $php5Template, $php5User, $php5Session, $php5TemplatePath, $php5Msg, $php5Section;

include("../../extension.inc");
include("../../config".$php5Ext);

if(!is_file($php5RootPath . "/includes/php5_common" . $php5Ext)){
	echo "To check the config file.";
	die();
}

require_once($php5RootPath . "/includes/php5_define" . $php5Ext);
require_once($php5RootPath . "/includes/class.inputfilter" . $php5Ext);	
require_once($php5RootPath . "/includes/php5_common" . $php5Ext);
require_once($php5RootPath . "/includes/php5_sef" . $php5Ext );
//Begin get params
$type 		= php5GetParam($_REQUEST, "o", "");
$module 	= php5GetParam($_REQUEST, "m", "main");
$file 		= php5GetParam($_REQUEST, "f", "");
$post		= php5GetParam($_REQUEST, "po", "");
$php5Msg 	= php5GetParam($_REQUEST, "msg", "");
$rootPath = $php5RootPath . "/admin/settings/";
//End get params

// start init
php5Init( 0 );

//BEGIN SHOW SITE
initGzip();

header( "Expires: Mon, 26 Jul 1997 05:00:00 GMT" );
header( "Last-Modified: " . gmdate( "D, d M Y H:i:s" ) . " GMT" );
header( "Cache-Control: no-store, no-cache, must-revalidate" );
header( "Cache-Control: post-check=0, pre-check=0", false );
header( "Pragma: no-cache" );

if (file_exists($rootPath . $module . $php5Ext)) {
	require_once($rootPath . $module . $php5Ext);
	return true;
}
require_once($php5RootPath . "/under-construction.php");

doGzip();
//END SHOW SITE

?>