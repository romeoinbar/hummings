<?php
defined('PHP5_PHP') or die("Application is stopping!!!");

$d=1;
$r = 0;

///////////////////////////////////////////////////////////////////

$php5Session->setVar('shipping_title'.$d  , $_POST['title'.$d] );	
$php5Session->setVar('shipping_surname'.$d  , $_POST['surname'.$d] );		 	  
$php5Session->setVar('shipping_name'.$d  , $_POST['name'.$d] );
$php5Session->setVar('shipping_email'.$d  , $_POST['email'.$d] );		  
$php5Session->setVar('shipping_pre_telephone1'.$d  , '' );
$php5Session->setVar('shipping_mid_telephone1'.$d  , '' );		  
$php5Session->setVar('shipping_telephone1'.$d  , $_POST['telephone1'.$d] );		 
$php5Session->setVar('shipping_pre_telephone2'.$d  , '' );
$php5Session->setVar('shipping_mid_telephone2'.$d  , '' );		  
$php5Session->setVar('shipping_telephone2'.$d  , $_POST['telephone2'.$d] );	
$php5Session->setVar('shipping_pre_fax'.$d  , '' );
$php5Session->setVar('shipping_mid_fax'.$d  , '' );		  
$php5Session->setVar('shipping_fax'.$d  , $_POST['fax'.$d] );	
$php5Session->setVar('shipping_company'.$d  , $_POST['company'.$d] );	
$php5Session->setVar('shipping_block'.$d  , $_POST['block'.$d] );	
$php5Session->setVar('shipping_unit'.$d  , $_POST['unit'.$d] );			 		 
$php5Session->setVar('shipping_building'.$d  , $_POST['building'.$d] );	
$php5Session->setVar('shipping_address1'.$d  , $_POST['address1'.$d] );
$php5Session->setVar('shipping_address2'.$d  , '' );			 	
$php5Session->setVar('shipping_city'.$d  , $_POST['city'.$d] );	
$php5Session->setVar('shipping_state'.$d  , $_POST['state'.$d] );	
$php5Session->setVar('shipping_postcode'.$d  , $_POST['postcode'.$d] );	
$php5Session->setVar('shipping_country'.$d  , $_POST['country'.$d] );	

//////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
php5Redirect(sefBuild($php5WebPath, 'index.php?o=checkout&m=delivery' , 1));
?>