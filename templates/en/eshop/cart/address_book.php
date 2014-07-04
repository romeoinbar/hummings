<?php
include_once 'includes/select_input.php';
$user_id = $php5Session->getVar('user_id');
  $address_book = "";
if ($user_id)
{


  $query = "SELECT * FROM #__address_book WHERE user_id='$user_id' ";
  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadAssocList();

	 foreach ($rows as $row)
		 $address_book .=  "<a href='". 
		     sefBuild($php5WebPath, "index.php?o=eshop&m=checkout&t=outsite&task=shipping_address_load_user&id=" .$row['address_book_id'] , 1) . 
			 "'>" . $row['name'] . "</a><br/>";
  
	
	
	
}

$smarty->assign('address_book', $address_book);
?>