<?php
 /***************************************************************************
 *                                php5_security.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");

function php5SecGenAuthKey($modname=''){
    if (empty($modname)){
        $modname = php5VarCleanFromInput('module');
    }

    $key = php5_session_get_var('rand') . strtolower($modname);

    $authid = md5($key);
	
    return $authid;
}

?>