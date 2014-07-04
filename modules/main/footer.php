<?php
/***************************************************************************
*                                header.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$tpl = sprintf($php5TemplateFile, $language, 'main', 'footer.php');
if(!is_file($tpl )) {
	die("can not find template");
}

// Shop
$php5DB_en->setQuery("SELECT * FROM #__menu WHERE type='product' AND publish=1 AND parent_id=25 ORDER BY sorting ASC");
$cats = $php5DB_en->loadObjectList();
foreach ($cats as $cat){
	$cat->name = stripslashes($cat->title);
	$cat->url =  sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id='.$cat->itemid, 1);
	$cat->activemenu = ($module=='by_category'&&$task=='show'&&php5GetParam($_REQUEST, "id", 0)==$cat->itemid)?" id ='bottom_activemenu'":"";
}
$smarty->assign("bottom_cats", array_slice($cats, 0, count($cats)));
$smarty->assign("link_flower", sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id=409', 1));
$smarty->assign("link_gift", sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id=407', 1));
$smarty->assign("link_hamper", sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id=421', 1));

$php5DB_en->setQuery("SELECT * FROM #__menu WHERE type='product' AND publish=1 AND parent_id=178 ORDER BY sorting ASC");
$cats = $php5DB_en->loadObjectList();
foreach ($cats as $cat){
	$cat->name = stripslashes($cat->title);
	$cat->url =  sefBuild($php5WebPath, 'index.php?o=eshop&m=by_category&task=show&id='.$cat->itemid, 1);
	$cat->activemenu = ($module=='by_category'&&$task=='show'&&php5GetParam($_REQUEST, "id", 0)==$cat->itemid)?" id ='bottom_activemenu'":"";
}
$smarty->assign("bottom_cats1", array_slice($cats, 0, count($cats)));

// More info
$php5DB_en->setQuery("SELECT content_category_id FROM #__content_category WHERE show_bottom=1 AND publish=1");
$catid = $php5DB_en->loadResult();

$php5DB_en->setQuery("SELECT * FROM #__content WHERE category_id=$catid AND publish=1 ORDER BY sorting ASC");
$mores = $php5DB_en->loadObjectList();
foreach ($mores as $more){
	$more->title = stripslashes($more->title);
	$more->url = sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=view&id='.$more->content_id, 1);
}
$smarty->assign("more_infos", $mores);
$smarty->assign("url_rss", $php5WebPath. '/rss.php');

// Contact us
$smarty->assign("config_contactus", php5GetConfig('config_contactus'));
$smarty->assign("link_newsletter", sefBuild($php5WebPath, 'index.php?o=newsletter', 1));
$smarty->assign('footer', $smarty->fetch($tpl));
