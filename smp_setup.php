<?php
/***************************************************************************
 *                                setup.php
 *
 *   Begin date               : 
 *   Copyright                : 
 *   Email                    : 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$viewer = $rootPath . "modules/";
if($type) {
    $viewer .= "$type/";
}

//echo $viewer . $module . $php5Ext;
if ( $admin != "admin" )
{		
				
		
		if (($type=='main')&&($module=='main')){
			$module = 'smp_main';
		}
		if (($module!='delivery_options')&&($type!='mobile_payment')){
			include($rootPath . "modules/main/smp_header" . $php5Ext);
			include($rootPath . "modules/main/smp_footer" . $php5Ext);			
		}
		
		if (file_exists($viewer . $module . $php5Ext)) { 
			include($viewer . $module . $php5Ext);
		} 
		
		$tpl = sprintf($php5TemplateFile, $language, '', 'smp_index.tpl');
		
		if(!is_file($tpl )) 
		{
			die("can not find template");
		}
		//echo $clean;
		if ( empty($clean))	{
			$smarty->display($tpl);
		} else {
			if ($module!='delivery_options'){
			require_once($php5RootPath . "/under-construction.php");
			}
		}

}
else
{
	include($viewer . $module . $php5Ext);
    $tpl = sprintf($php5TemplateAdminFile, $language, '', 'index.tpl');
      if(!is_file($tpl )) 
	  {
        die("can not find template");
      }    
    $smarty->display($tpl);
		require_once($php5RootPath . '/bottom' . $php5Ext);	
}
return true;
