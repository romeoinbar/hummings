<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
require_once ($php5RootPath . "/classes/newsletter_user.class.php");
$code = php5GetParam($_REQUEST, 'code', '');

if(isset($_SERVER['HTTP_REFERER'])) {
	$referer = $_SERVER['HTTP_REFERER'];
} else {
	$referer = $php5WebPath;
}
if(trim($code) == '') {

} else {
	$query = "SELECT id FROM #__newsletter_user WHERE generate_code='". mysql_real_escape_string($code)."'";
	$php5DB->setQuery( $query );
	$id = intval($php5DB->loadResult());
	if($id > 0) {
		$rowNewsletterUser = new NewsletterUser($php5DB);
		$rowNewsletterUser->load($id);
		$rowNewsletterUser->date = php5GMTTime();
		$rowNewsletterUser->ip = $_SERVER['REMOTE_ADDR'];
		$rowNewsletterUser->subscribe = 1;
        $rowNewsletterUser->subscribe_by_phone = 1;
		$rowNewsletterUser->generate_code = "";
		$rowNewsletterUser->store();
	}
}
$tpl = sprintf($php5TemplateFile, $language, 'newsletter', 'subscribe.tpl');	
$smarty->assign('main',$smarty->fetch($tpl));
?>