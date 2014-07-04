<?php

$to      = 'charlestoh22@live.com';
$subject = 'Hummings Flowers & Gifts :test';
$message = "forward this email to mingliang@ua-consultants.com if you have receive this email";
$headers = 'From: goto@humming.com.sg' . "\r\n" .
    'Reply-To: goto@humming.com.sg' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();

mail($to, $subject, $message, $headers);

?>





