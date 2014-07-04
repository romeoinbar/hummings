<?php



	 	 
		 $message_sender = 	    stripslashes($php5Session->getVar('message_sender'.$d));
		 $message_sender2 = 	    stripslashes($php5Session->getVar('message_sender2'.$d));
		 $message_sender3 = 	    stripslashes($php5Session->getVar('message_sender3'.$d));
		 		 		 
		 $message_receiver = 	stripslashes($php5Session->getVar('message_receiver'.$d));
		 $message_receiver2 = 	stripslashes($php5Session->getVar('message_receiver2'.$d));
		 $message_receiver3 = 	stripslashes($php5Session->getVar('message_receiver3'.$d));
		 		 		 
		 $message_content = 	stripslashes($php5Session->getVar('message_content'.$d));
		 $message_content2 = 	stripslashes($php5Session->getVar('message_content2'.$d));
		 $message_content3 = 	stripslashes($php5Session->getVar('message_content3'.$d));
		 $message_content4 = 	stripslashes($php5Session->getVar('message_content4'.$d));
		 $message_content5 = 	stripslashes($php5Session->getVar('message_content5'.$d));
		 $message_content6 = 	stripslashes($php5Session->getVar('message_content6'.$d));		 		 		 		 
 
if ($r == 0)
{
/**
    $muser = new User();
    $muser->loadData(add_prefix('user'),'user_id', $php5Session->getVar('user_id') );  
	
	if ($php5Session->getVar('user_id')!= '' )
	{
      if  ($message_sender == "" )
	   $message_sender = $muser->name ." , " .$muser->surname  ;
      if  ($message_receiver == "" )
	   $message_receiver = $muser->name . " , " .$muser->surname  ;
	  if  ($message_content == "" )
	 $message_content = "null"  ; 
	}
**/

	 	 

	 	 
}

		 
		 $smarty->assign('message_sender', $message_sender  );  
		 $smarty->assign('message_sender2', $message_sender2  );  
		 $smarty->assign('message_sender3', $message_sender3  );  
		 		 		 
		 $smarty->assign('message_receiver', stripslashes($message_receiver)  );  
		 $smarty->assign('message_receiver2', stripslashes($message_receiver2)  );  
		 $smarty->assign('message_receiver3', stripslashes($message_receiver3)  );  
		 		 		 			  
		 $smarty->assign('message_content', $message_content);	  	  
//		 echo   stripslashes($message_content2)  . "*" . $message_content2;  
		 $smarty->assign('message_content2', stripslashes($message_content2) );	
		 $smarty->assign('message_content3', $message_content3);
		 $smarty->assign('message_content4', $message_content4);	
		 $smarty->assign('message_content5', $message_content5);	
		 $smarty->assign('message_content6', $message_content6);			 		 		 			 
?>