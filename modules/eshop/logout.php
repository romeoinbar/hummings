<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/

   		 
          $php5Session->setVar('user_id', null );
          $php5Session->setVar('user_name', null );
    	  session_destroy();      		  		  
         // header('Location: ' .$php5WebPath ); 
		  $signup_link = sefBuild($php5WebPath, 'index.php?o=eshop&m=register', 1);
		  $smarty->assign('signup_link',$signup_link);	
		  $smarty->assign('link1',sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id=429', 1));	
		  $smarty->assign('link2',sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id=407', 1));	
		  $smarty->assign('link3',sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id=408', 1));	
		  $smarty->assign('link4',sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id=406', 1));	
		  $smarty->assign('link5',sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id=420', 1));	
		  
          $tpl = sprintf($php5TemplateFile, $language, 'main', 'logout.tpl');		  
		$main_content =  $smarty->fetch($tpl); 
		$smarty->assign('main',$main_content);	
if ($env=='smp'){
	php5Redirect($php5WebPath.'/mobile-cart');
}
return;

