<?php
include_once 'classes/cart.class.php';
if ($php5Session->getVar('user_id')){
	header('Location: ' . sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=show&t=outsite', 1)  );
}


  $email = $_REQUEST['email'];
  $password = $_REQUEST['password'];
  
  $query = "SELECT * FROM #__user WHERE email='$email' AND password='". md5($password)."'";
  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadAssocList();

  
  if (count($rows)>0)
  {
	  	 $row= $rows['0'];
         		 
          $php5Session->setVar('user_id', $row['user_id'] );
          $php5Session->setVar('user_name', $row['name'] );
	       
		  $check =  $php5Session->getVar('begin_checkout');
		  $cart = new Cart();
	      $total = $cart->get_total_recipient();	  
//		  echo "**********" . $check;
	      if (($check == 1 ) && ($total > 0) )
         	 header('Location: ' . sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=show&t=outsite', 1)  );
		  else		  		  
         	 header('Location: ' . sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=show&t=outsite', 1)  );  
          $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'blank.tpl');		
		    
		  if ($php5Session->getVar('url_redirect')!=""){
				header('Location: ' . $php5Session->getVar('url_redirect')  );  
		  } else {
				header('Location: ' . sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=show&t=outsite', 1)  );  
		  }
		 
  }  else {
          header('Location: ' . sefBuild($php5WebPath, 'index.php?o=eshop&m=register&task=wrong&t=outsite', 1)  );  
  }
 
return;
?>
