<?php


$user_id =  $php5Session->getVar('user_id');
$user_name =  $php5Session->getVar('user_name');

    session_start();
    session_destroy();
    session_start();
	
 $php5Session->setVar('user_id', $user_id );
 $php5Session->setVar('user_name', $user_name  );
 
  header('Location: ' .  sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=order_history' , 1)	 );
 
 ?>