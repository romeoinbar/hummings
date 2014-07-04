<?php
$popup=1;
$clean=1;
include_once "$php5RootPath/classes/notify.class.php"; 

$str= explode('|',trim(php5GetParam($_REQUEST, 'task', 0)));
$product_id= intval($str[0]);
$k = intval($str[1]);
$email_notify = trim(php5GetParam($_REQUEST, 'id', ''));	

if ($product_id&&(preg_match("/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/", $email_notify)!==false)){

	$php5DB_en->setQuery("SELECT notify_id FROM #__notify_quantity WHERE product_id=".$product_id." AND email='".$email_notify."'");
	
	$notify_id = $php5DB_en->loadResult();
	$notify = new Notify($php5DB_en);
		
	$notify->product_id = $product_id;		
	$notify->email = $email_notify;
	
	if ($notify_id)
		$notify->notify_id=$notify_id;
	if ($notify->store()){	
		if ($k==1)
			echo '<div style="color:#a90061; margin-top:10px;">Request received. A notification will be sent to your email once the item is back in stock.</div>';			
	}
} else{
	echo '<div style="color:#f00; margin-top:10px;">Invalid email. Please check your email again.</div>';
}
return;	
	//============================================================================





