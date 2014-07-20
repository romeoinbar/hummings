<?php
/***************************************************************************
*                                header.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$tpl = sprintf($php5TemplateAdminFile, $language, 'main', 'menu.tpl');
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'main'));
if(!is_file($tpl )) {
	die("can not find template");
}
//echo sefBuild($php5WebPath, 'index.php?o=settings', 0);
$smarty->assign('url_setting', sefBuild($php5WebPath, 'index.php?o=settings', 0));
$smarty->assign('url_smtp', sefBuild($php5WebPath, 'index.php?o=settings&m=smtp', 0));
$smarty->assign('url_logout', sefBuild($php5WebPath, 'index.php?o=logout', 0));
$smarty->assign('url_user', sefBuild($php5WebPath, 'index.php?o=users', 0));
$smarty->assign('url_eshop_user', sefBuild($php5WebPath, 'index.php?o=user', 0));
$smarty->assign('url_product_by_category', sefBuild($php5WebPath, 'index.php?o=product', 0));
$smarty->assign('url_product_by_occasions', sefBuild($php5WebPath, '#', 0));
$smarty->assign('url_product_by_custom', sefBuild($php5WebPath, '#', 0));
$smarty->assign('url_import_product', sefBuild($php5WebPath, 'index.php?o=import_products', 0));
$smarty->assign('url_export_product', sefBuild($php5WebPath, 'index.php?o=export_products', 0));
$smarty->assign('url_import_order', sefBuild($php5WebPath, 'index.php?o=import_orders', 0));
$smarty->assign('url_export_order', sefBuild($php5WebPath, 'index.php?o=export_orders', 0));
$smarty->assign('url_export_customer', sefBuild($php5WebPath, 'index.php?o=export_orders&m=customers', 0));
$smarty->assign('url_export_order_by_months', sefBuild($php5WebPath, 'index.php?o=export_orders&m=order_by_months', 0));
$smarty->assign('url_export_user', sefBuild($php5WebPath, 'index.php?o=export_users', 0));
$smarty->assign('url_export_order_delivery', sefBuild($php5WebPath, 'index.php?o=export_order_delivery', 0));
$smarty->assign('url_export_order_item', sefBuild($php5WebPath, 'index.php?o=export_order_item', 0));
$smarty->assign('url_rating_product', sefBuild($php5WebPath, 'index.php?o=ratings&m=list', 0));
$smarty->assign('url_product_category', sefBuild($php5WebPath, 'index.php?o=product_category', 0));
$smarty->assign('url_occasions', sefBuild($php5WebPath, 'index.php?o=occasions', 0));
$smarty->assign('url_custom', sefBuild($php5WebPath, 'index.php?o=collections', 0));
$smarty->assign('url_orders', sefBuild($php5WebPath, 'index.php?o=orders', 0));
$smarty->assign('url_delivery', sefBuild($php5WebPath, 'index.php?o=delivery', 0));
$smarty->assign('url_campaign', sefBuild($php5WebPath, 'index.php?o=campaigns', 0));
$smarty->assign('url_tracking', sefBuild($php5WebPath, 'index.php?o=tracking', 0));
$smarty->assign('url_banner', sefBuild($php5WebPath, 'index.php?o=banner', 0));
$smarty->assign('url_video', sefBuild($php5WebPath, 'index.php?o=videos', 0));
$smarty->assign('url_rss_category', sefBuild($php5WebPath, 'index.php?o=rss_category', 0));
$smarty->assign('url_rss_content', sefBuild($php5WebPath, 'index.php?o=rss_content', 0));
$smarty->assign('url_menu', sefBuild($php5WebPath, 'index.php?o=menus', 0));
$smarty->assign('url_message', sefBuild($php5WebPath, 'index.php?o=message', 0));
$smarty->assign('url_coupon', sefBuild($php5WebPath, 'index.php?o=coupon', 0));
$smarty->assign('url_article', sefBuild($php5WebPath, 'index.php?o=articles', 0));
$smarty->assign('url_category_article', sefBuild($php5WebPath, 'index.php?o=content_category', 0));
$smarty->assign('url_user_group', sefBuild($php5WebPath, 'index.php?o=user_group', 0));
$smarty->assign('url_newsletter', sefBuild($php5WebPath, 'index.php?o=newsletters', 0));
$smarty->assign('url_newsletter_history', sefBuild($php5WebPath, 'index.php?o=newsletters&m=history', 0));
$smarty->assign('url_report_visitor', sefBuild($php5WebPath, 'index.php?o=reports&m=visitor', 0));
$smarty->assign('url_bounced_emails', sefBuild($php5WebPath, 'index.php?o=reports&m=bounced-emails', 0));
$smarty->assign('url_media', sefBuild($php5WebPath, 'index.php?o=media', 0));
$smarty->assign('url_photos', sefBuild($php5WebPath, 'index.php?o=photos', 0));
$smarty->assign('url_export_newsletter', sefBuild($php5WebPath, 'index.php?o=export_newsletter_users', 0));
$smarty->assign('url_import_newsletter', sefBuild($php5WebPath, 'index.php?o=import_newsletter_users', 0));
$smarty->assign('url_newsletter_user', sefBuild($php5WebPath, 'index.php?o=newsletter_user', 0));
$smarty->assign('menu', $smarty->fetch($tpl));
