<?php
include("Mail.php");
function email_reset_password($email_to, $new_password)
{
$to      = $email_to;
$subject = 'Hummings Flowers & Gifts : Reset Password';
$message = "Your account password in hummings.com has been reset to : $new_password";
$headers = 'From: noreply@hummings.com' . "\r\n" .
    'Reply-To: noreply@hummings.com' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();

//mail($to, $subject, $message, $headers);
send_email_all($to, $subject, $message);
}


function email_register_user($email_to, $password, $content='')
{
global $php5WebPath;
$to      = $email_to;
$subject = 'Hummings Flowers & Gifts : Register User';
$message = "
You now have full access to our 24 hours shopping service online.

Your UserID        : $email_to
Your Password      : $password

From now onwards, you'd be the first to receive news on our latest promotions and updates on our newest arrivals.

As you are our top priority at Humming, we would also like to hear from you if you have any feedback or compliments. Email us at: online@humming.com.sg

";
$headers = 'From: noreply@hummings.com' . "\r\n" .
		'Content-type: text/html; charset=iso-8859-1' . "\r\n".
    'Reply-To: noreply@hummings.com' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();
		
if($content) {
	$message = $content;
}
//mail($to, $subject, $message, $headers);
//send_email_all($to, $subject, $message);
	$is_html = 1;
	$headers = array();
	$headers["From"]    = "Humming Flowers & Gifts <noreply@hummings.com>";
	$headers["To"]      = $to;
	$recipients         = $to.","."online@humming.com.sg";
	$headers["Subject"] = $subject;
	if($is_html) {
		$headers["Content-type"] = "text/html; charset=UTF-8" . "\r\n";
	} else {
		$headers["Content-type"] = "text/plain; charset=UTF-8" . "\r\n";
	}
	$body = $message;
	
	$params["host"] = php5GetConfig('config_smtp_host');
	$params["port"] = php5GetConfig('config_smtp_port');
	$params["auth"] = true;
	$params["username"] = php5GetConfig('config_smtp_username');
	$params["password"] = php5GetConfig('config_smtp_password');
	
	// Create the mail object using the Mail::factory method
	$mail_object =& Mail::factory("smtp", $params);
	
	$send = $mail_object->send($recipients, $headers, $body);
	if (PEAR::isError($mail_object)) {
		
	}	
}

function email_evoucher_email($email_to, $content)
{
global $php5WebPath;
$to      = $email_to;
$subject = 'Hummings Flowers & Gifts : evoucher email';
$headers = 'From: noreply@hummings.com' . "\r\n" .
		'Content-type: text/html; charset=iso-8859-1' . "\r\n".
    'Reply-To: noreply@hummings.com' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();
		
$message = $content;

//mail($to, $subject, $message, $headers);
send_email_all($to, $subject, $message);
}

function email_orders($email_to, $message, $content = '')
{
	$to      = $email_to;
	$subject = 'Hummings Flowers & Gifts : Order Confirmation';
	$headers = 'From: noreply@hummings.com' . "\r\n" .
			'Content-type: text/html; charset=iso-8859-1' . "\r\n".
			'Reply-To: noreply@hummings.com' . "\r\n" .
			'X-Mailer: PHP/' . phpversion();
			
	if($content) {
		$message = $content;
	}
	//mail($to, $subject, $message, $headers);
    send_email_all($to, $subject, $message);
}
function email_orders1($email_to, $message, $content = '')
{
	$to      = $email_to;
	$subject = 'Hummings Flowers & Gifts : Order Confirmation';
	$headers = 'From: noreply@hummings.com' . "\r\n" .
			'Content-type: text/html; charset=iso-8859-1' . "\r\n".			
			'X-Mailer: PHP/' . phpversion();
			
	if($content) {
		$message = $content;
	}
	//mail($to, $subject, $message, $headers);
    send_email_all1($to, $subject, $message);
}

function email_thanks($email_to, $message)
{
/**	
$to      = $email_to;
$subject = 'Hummings Flowers & Gifts : Thank you';
$headers = 'From: noreply@hummings.com' . "\r\n" .
	'Content-type: text/html; charset=iso-8859-1' . "\r\n".
    'Reply-To: noreply@hummings.com' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();

mail($to, $subject, $message, $headers);
**/
}

function send_email_all($to, $subject, $message, $is_html = 1)
{

	$headers["From"]    = "Humming Flowers & Gifts <noreply@hummings.com>";
	$headers["To"]      = $to;
	$recipients         = $to.","."online@humming.com.sg";
	//$recipients         = $to;
	$headers["Subject"] = $subject;
	if($is_html) {
		$headers["Content-type"] = "text/html; charset=UTF-8" . "\r\n";
	} else {
		$headers["Content-type"] = "text/plain; charset=UTF-8" . "\r\n";
	}
	$body = $message;
	
	$params["host"] = php5GetConfig('config_smtp_host');
	$params["port"] = php5GetConfig('config_smtp_port');
	$params["auth"] = true;
	$params["username"] = php5GetConfig('config_smtp_username');
	$params["password"] = php5GetConfig('config_smtp_password');;
	
	// Create the mail object using the Mail::factory method
	$mail_object =& Mail::factory("smtp", $params);
	
	$mail_object->send($recipients, $headers, $body);

}
function send_email_all1($to, $subject, $message, $is_html = 1)
{

	$headers["From"]    = "Humming Flowers & Gifts <noreply@hummings.com>";
	$headers["To"]      = $to;
	$recipients         = $to;
	//$recipients         = $to;
	$headers["Subject"] = $subject;
	if($is_html) {
		$headers["Content-type"] = "text/html; charset=UTF-8" . "\r\n";
	} else {
		$headers["Content-type"] = "text/plain; charset=UTF-8" . "\r\n";
	}
	$body = $message;
	
	$params["host"] = php5GetConfig('config_smtp_host');
	$params["port"] = php5GetConfig('config_smtp_port');
	$params["auth"] = true;
	$params["username"] = php5GetConfig('config_smtp_username');
	$params["password"] = php5GetConfig('config_smtp_password');;
	
	// Create the mail object using the Mail::factory method
	$mail_object =& Mail::factory("smtp", $params);
	
	$mail_object->send($recipients, $headers, $body);

}

function send_email_1($to, $subject, $message, $is_html = 1)
{

	$headers["From"]    = "Humming Flowers & Gifts <noreply@hummings.com>";
	$headers["To"]      = $to;
	$recipients         = $to;
	$headers["Subject"] = $subject;
	if($is_html) {
		$headers["Content-type"] = "text/html; charset=UTF-8" . "\r\n";
	} else {
		$headers["Content-type"] = "text/plain; charset=UTF-8" . "\r\n";
	}
	$body = $message;
	
	$params["host"] = php5GetConfig('config_smtp_host');
	$params["port"] = php5GetConfig('config_smtp_port');
	$params["auth"] = true;
	$params["username"] = php5GetConfig('config_smtp_username');
	$params["password"] = php5GetConfig('config_smtp_password');
	
	// Create the mail object using the Mail::factory method
	$mail_object =& Mail::factory("smtp", $params);
	$mail_object->send($recipients, $headers, $body);
	if (PEAR::isError($mail_object)) {
		
	}	
	
	//$recipients         = "online@humming.com.sg";
	//$mail_object->send($recipients, $headers, $body);	
}

function send_email_newsletter($to, $subject, $message, $is_html = 1, $campID = '5')
{

	$headers["From"]    = "Humming Flowers & Gifts <noreply@hummings.com>";
	$headers["To"]      = $to;
	$headers['X-Smtpcom-CPID'] =  $campID;
	$recipients         = $to;
	$headers["Subject"] = $subject;
	if($is_html) {
		$headers["Content-type"] = "text/html; charset=UTF-8" . "\r\n";
	} else {
		$headers["Content-type"] = "text/plain; charset=UTF-8" . "\r\n";
	}
	$body = $message;
	
	$params["host"] = php5GetConfig('config_smtp_host');
	$params["port"] = php5GetConfig('config_smtp_port');
	$params["auth"] = true;
	$params["username"] = php5GetConfig('config_smtp_username');
	$params["password"] = php5GetConfig('config_smtp_password');;
	
	// Create the mail object using the Mail::factory method
	$mail_object =& Mail::factory("smtp", $params);
	
	$mail_object->send($recipients, $headers, $body);

}

function email_available_product($to, $subject, $message) {

	$headers["From"]    = "Humming Flower & Gifts <noreply@hummings.com>";
	$headers["To"]      = $to;
	$recipients         = $to;
	//$recipients         = $to;
	$headers["Subject"] = $subject;
	
	$headers["Content-type"] = "text/html; charset=UTF-8" . "\r\n";
	
	$body = $message;
	
	$params["host"] = php5GetConfig('config_smtp_host');
	$params["port"] = php5GetConfig('config_smtp_port');
	$params["auth"] = true;
	$params["username"] = php5GetConfig('config_smtp_username');
	$params["password"] = php5GetConfig('config_smtp_password');
	
	// Create the mail object using the Mail::factory method
	$mail_object =& Mail::factory("smtp", $params);
	
	$mail_object->send($recipients, $headers, $body);	
}

/**
 * Sends mail by connecting to an smtp server
 *
 * @param string $subject
 * @param string $smtp_server
 * @param string $smtp_username
 * @param string $smtp_password
 * @param string $html html portion of the message body
 * @param string $text text portion of the message body
 * @param string|array $to
 * @param string $from
 * @param array $cc
 * @param array $bcc
 * @return boolean|string
 */
function send_email_all4($to, $subject, $message, $is_html = 1)
{

	$headers["From"]    = "Humming Flowers & Gifts <noreply@hummings.com>";
	$headers["To"]      = $to;
	$recipients         = $to.","."online@humming.com.sg";
	//$recipients         = $to;
	$headers["Subject"] = $subject;
	if($is_html) {
		$headers["Content-type"] = "text/html; charset=UTF-8" . "\r\n";
	} else {
		$headers["Content-type"] = "text/plain; charset=UTF-8" . "\r\n";
	}
	$body = $message;
	
	$params["host"] = php5GetConfig('config_smtp_host');
	$params["port"] = php5GetConfig('config_smtp_port');
	$params["auth"] = true;
	$params["username"] = php5GetConfig('config_smtp_username');
	$params["password"] = php5GetConfig('config_smtp_password');
	
	// Create the mail object using the Mail::factory method
	$mail_object =& Mail::factory("smtp", $params);
	
	$mail_object->send($recipients, $headers, $body);
	if (PEAR::isError($mail_object)) {
		echo $mail_object->getMessage();
	} else {
		echo "Email was sent!";
	}
	//$recipients         = "online@humming.com.sg";
	//$mail_object->send($recipients, $headers, $body);	
}
//email_evoucher_email('cheryl_quek@humming.com.sg', "test email. please reply if you receive this.");

?>





