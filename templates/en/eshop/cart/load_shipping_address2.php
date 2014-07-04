<?php
include_once 'includes/select_input.php';

$cart=new Cart();
//$cart->showvariables();
///////////////////////////////////  load from adddress book
 
$total_recipient = 	$php5Session->getVar('total_recipient');
		 
$ad = $php5Session->getVar('recipient_address_book_id' . $r);
	      


if ($r == 0)
{

    $address_book = new User();
    $address_book->loadData(add_prefix('user'),'user_id', $php5Session->getVar('user_id') );  


}	 
elseif (isset($ad))
{
    $address_book = new Address_book();	  
    $address_book->loadData(add_prefix('address_book'),'address_book_id', $ad );

    $name = $php5Session->getVar('shipping_name' . $d);
	$remarks = "*this will update current address book";
}


/////////////////////////////////////


$user = new User();

$user->title = $php5Session->getVar('shipping_title' . $d);
$user->name = $php5Session->getVar('shipping_name' . $d);
$user->email = $php5Session->getVar('shipping_email' . $d);
$user->pre_telephone1 = $php5Session->getVar('shipping_pre_telephone1' . $d);
$user->mid_telephone1 = $php5Session->getVar('shipping_mid_telephone1' . $d);
$user->telephone1 = $php5Session->getVar('shipping_telephone1' . $d); 
$user->pre_telephone2 = $php5Session->getVar('shipping_pre_telephone2' . $d);
$user->mid_telephone2 = $php5Session->getVar('shipping_mid_telephone2' . $d);
$user->telephone2 = $php5Session->getVar('shipping_telephone2' . $d); 
$user->pre_fax = $php5Session->getVar('shipping_pre_fax' . $d);
$user->mid_fax = $php5Session->getVar('shipping_mid_fax' . $d);
$user->fax = $php5Session->getVar('shipping_fax' . $d); 
$user->company = $php5Session->getVar('shipping_company' . $d); 
$user->block = $php5Session->getVar('shipping_block' . $d); 
$user->unit = $php5Session->getVar('shipping_unit' . $d); 
$user->building = $php5Session->getVar('shipping_building' . $d); 
$user->address1 = $php5Session->getVar('shipping_address1' . $d); 
$user->city = $php5Session->getVar('shipping_city' . $d); 
$user->state = $php5Session->getVar('shipping_state' . $d); 
$user->postcode = $php5Session->getVar('shipping_postcode' . $d); 
$user->country = $php5Session->getVar('shipping_country' . $d); 

$loaded_from_session = ($user->name) ? 1 : 0;



if ($loaded_from_session  )
{
echo $php5Session->getVar('telephone');
//  echo $php5Session->getVar('tbl_user_country') . $user->country;	 
  $smarty->assign('country', gen_select(add_prefix('country'), 'country', 'country' . $d, 'country_code', 'country', $user->country ) );	
  $smarty->assign('gender', gen_select(add_prefix('gender'), 'gender', 'gender' . $d, 'gender', 'gender', $user->gender) );	
  $smarty->assign('title', gen_select(add_prefix('title'), 'title', "title".$d, 'title', 'title', $user->title) );
}
else
{

  $smarty->assign('country', gen_select(add_prefix('country'), 'country', 'country' . $d, 'country_code', 'country', 'SG' ) );	
  $smarty->assign('gender', gen_select(add_prefix('gender'), 'gender', 'gender' . $d, 'gender', 'gender', '') );	
  $smarty->assign('title', gen_select(add_prefix('title'), 'title', "title" . $d, 'title', 'title', ' ') );	

}

  $smarty->assign('pre_telephone1', $php5Session->getVar('shipping_pre_telephone1' . $d) );
  $smarty->assign('mid_telephone1', $php5Session->getVar('shipping_mid_telephone1' . $d) );
  $smarty->assign('pre_telephone2', $php5Session->getVar('shipping_pre_telephone2' . $d) );
  $smarty->assign('mid_telephone2', $php5Session->getVar('shipping_mid_telephone2' . $d) );
  $smarty->assign('pre_fax', $php5Session->getVar('shipping_pre_fax' . $d) );
  $smarty->assign('mid_fax', $php5Session->getVar('shipping_mid_fax' . $d) );    
  $smarty->assign('obj', $user );
?>