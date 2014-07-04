<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$php5Session->setVar('storepage',  sefBuild($php5WebPath, 'index.php?o=eshop&m=by_price&t=outsite&task=show&id=' . $id, 1)  );
$php5Session->setVar('storepage_shopping',  sefBuild($php5WebPath, 'index.php?o=eshop&m=by_price&t=outsite&task=show&id=' . $id, 1)  );

$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
if(!$currPage) {
	$currPage = 1;
}

include $php5RootPath.'/templates/en/eshop/left/categories.php';


include $php5RootPath.'/templates/en/eshop/browse/browse_by_price.php';

$tpl = sprintf($php5TemplateFile, $language, 'eshop', 'col2_left.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
$smarty->assign('main', $smarty->fetch($tpl));



return;

