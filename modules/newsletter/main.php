<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
require_once ($php5RootPath . "/classes/newsletter_user.class.php");
$name = php5GetParam($_REQUEST, 'name', '');
$email = php5GetParam($_REQUEST, 'email', '');
if(isset($_SERVER['HTTP_REFERER'])) {
	$referer = $_SERVER['HTTP_REFERER'];
} else {
	$referer = $php5WebPath;
}
if(trim($name) == '') {
	$msgAlert = "Name cannot be left blank";
} else if(trim($email) == '') {
	$msgAlert = "Email cannot be left blank";
} else if(preg_match("/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/", $email )==false) {
	$msgAlert = "Email is invalid";
} else {
	$query = "SELECT id FROM #__newsletter_user WHERE email='". mysql_escape_real_string($email)."'";
	$php5DB->setQuery( $query );
	$id = intval($php5DB->loadResult());
	if($id < 1) {
		$rowNewsletterUser = new NewsletterUser($php5DB);
		$rowNewsletterUser->id = '';
		$rowNewsletterUser->name = $name;
		$rowNewsletterUser->email = $email;
		$rowNewsletterUser->date = php5GMTTime();
		$rowNewsletterUser->store();
	}
	$msgAlert = "Got it! Thanks!";
}
$tpl = sprintf($php5TemplateFile, $language, 'newsletter', 'main.tpl');	
$smarty->assign('main',$smarty->fetch($tpl));
$redirect = $referer;
?>