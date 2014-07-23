<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
require_once ($php5RootPath . "/classes/newsletter_user.class.php");
include_once "$php5RootPath/classes/tables.class.php";
include_once "$php5RootPath/includes/random_code.php";
include $php5RootPath . '/includes/send_email.php';	
include $php5RootPath . '/classes/voucher.class.php';	
$name = php5GetParam($_REQUEST, 'email', '');
$email = php5GetParam($_REQUEST, 'email', '');
//if(isset($_SERVER['HTTP_REFERER'])) {
//	$referer = $_SERVER['HTTP_REFERER'];
//} else {
$referer = $php5WebPath;
//}
if(trim($email) == '') {
	$msgAlert = "Email cannot be left blank";
} else if(preg_match("/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/", $email )==false) {
	$msgAlert = "Email is invalid";
} else {
	$query = "SELECT id FROM #__newsletter_user WHERE email='". mysql_escape_string($email)."'";
	$php5DB->setQuery( $query );
	$id = intval($php5DB->loadResult());
	if($id < 1) {
		$rowNewsletterUser = new NewsletterUser($php5DB);
		$rowNewsletterUser->id = '';
		$rowNewsletterUser->name = $name;
		$rowNewsletterUser->email = $email;
		$rowNewsletterUser->date = php5GMTTime();
		$rowNewsletterUser->ip = $_SERVER['REMOTE_ADDR'];
		$rowNewsletterUser->subscribe = 1;		
		$rowNewsletterUser->store();
		///////////////////////////
		$coupon = new coupon();
		$coupon->bindRequest();
		$coupon->coupon_code = "";
		$coupon_code = '';
		while ($coupon->coupon_code == "")
		{
			$coupon_code = $coupon->coupon_code = createRandomPassword(10);
			$query = "SELECT COUNT(*) FROM #__coupon WHERE coupon_code='".$coupon->coupon_code."' ";
			$php5DB_en->setQuery( $query );  
			$result = $php5DB_en->loadResult();
			if ($result)
			{
				$coupon->coupon_code = "";
			}
		}
		$coupon->issue_date =  date("Y-m-d");
		$purchase_date = $coupon->issue_date;
		$purchase_date_timestamp = strtotime($purchase_date);
		$purchase_date_3months = strtotime("+3 months", $purchase_date_timestamp);
		$coupon->expiry_date =  date("Y-m-d h:i:s", $purchase_date_3months);
		$coupon->discount_type =  2;
		$coupon->value =  10;
		$coupon->use = 1;
        $coupon->apply_to_category = 'all';		
		$coupon->issued_by =  $php5Session->getVar("admin_id");	            
		$coupon->addDB($php5Config['table_prefix'].'coupon');
		$coupon->updateID('coupon_id'); 
		$coupon->coupon_id;
		$tpl =  $php5RootPath.'/templates/en/eshop/evoucher_email.tpl';
		$voucher = new Voucher($php5DB);
		$voucher->id = '';
		$voucher->code = $coupon_code;
		$voucher->email = $email;
		$voucher->store();
		$smarty->assign('coupon_code',$coupon_code);
		$content =  $smarty->fetch($tpl);		
		email_evoucher_email($email, $content);
		$php5Session->setVar("promotion", "1");
	} else {
		$referer = $php5WebPath."/?msg=error";
		$php5Session->setVar("promotion", "");
	}
	//$msgAlert = "Updated successfully";
}
$tpl = sprintf($php5TemplateFile, $language, 'promotion', 'main.tpl');	
$smarty->assign('main', '');
$redirect = $referer;
?>