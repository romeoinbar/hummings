<?php
include('includes/send_email.php');
$to = 'tuyetanh@ua-consultants.com';
$subject = 'test subject';
$message = 'body test';
send_email_all4($to, $subject, $message);
?>