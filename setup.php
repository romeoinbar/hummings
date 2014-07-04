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
if ($type=='main')
$type='eshop';

if($type) {
    $viewer .= "$type/";
}

$smarty->assign('display_bottom', ($_SERVER["QUERY_STRING"]=='')?1:0);


//echo $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
if ($task == 'confirm2')
{
       $bodyscript = "document.forms['txnForm'].submit();";
       $smarty->assign('bodyscript', $bodyscript);     
}

//echo $viewer . $module . $php5Ext;
if ( $admin != "insite" )
{

    $show = php5GetParam($_REQUEST, 'show', '');

  if (file_exists($viewer . $module . $php5Ext)) 
    {

        if ( empty($popup) && !$show)
        {

            $php5DB_en->setQuery("SELECT * FROM #__product_category WHERE category_type=1 AND publish=1 AND parent_id=201 ORDER BY sorting ASC");
            $cats = $php5DB_en->loadObjectList();
            foreach ($cats as $cat)
			{
                $cat->name = stripslashes($cat->name);
                $cat->url =  sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id='.$cat->product_category_id, 1);
                $cat->activemenu = ($module=='by_category'&&$task=='show'&&php5GetParam($_REQUEST, "id", 0)==$cat->product_category_id)?" id ='bottom_activemenu'":"";
            }
            $smarty->assign("bottom_cats", array_slice($cats, 0, 12));
            $smarty->assign("bottom_cats1", array_slice($cats, 13, count($cats)));			
			
            include_once 'classes/tables.class.php';	
			
            include($viewer . $module . $php5Ext);			
			 if ($task !='header'){			
				include($rootPath . "modules/main/header" . $php5Ext);
				include($rootPath . "modules/main/footer" . $php5Ext);
			 } else{
				 include($rootPath . "modules/main/header" . $php5Ext);
			 }
        }
        else
		{ 
           include($viewer . $module . $php5Ext);
		}
		 
        if($show) 
		{
            $tpl = sprintf($php5TemplateFile, $language, '', "rss.tpl");
        } 
		else 
		{
            $tpl = sprintf($php5TemplateFile, $language, '', 'index.tpl');
        }
		
		
        if(!is_file($tpl )) 
        {
            die("can not find template");
        }
        if 
		( 
		 empty($clean)) $smarty->display($tpl);
        }
	    else 
	    {
        require_once($php5RootPath . "/under-construction.php");
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