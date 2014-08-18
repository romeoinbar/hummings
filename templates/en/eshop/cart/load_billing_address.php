<?php
include_once 'includes/select_input.php';

if ( empty($_POST['checkout_type']))
{
   $checkout_type = $php5Session->getVar('checkout_type');	
}
else
$checkout_type = $_POST['checkout_type'];

$user = new User();
$user->load_from_session(add_prefix('user'),'');
 
$loaded_from_session = ($user->name) ? 1 : 0;


if (!$user->name)
$user->loadData(add_prefix('user'), 'user_id', $php5Session->getVar('user_id'));
$loaded_from_db = ($user->name) ? 1 : 0;

if ($loaded_from_session || $loaded_from_db )
{

//  echo $php5Session->getVar('tbl_user_country') . $user->country;	 
  $smarty->assign('country', gen_select(add_prefix('country'), 'country', 'country', 'country_code', 'country', $user->country ) );	
  $smarty->assign('gender', gen_select(add_prefix('gender'), 'gender', 'gender', 'gender', 'gender', $user->gender) );	
  $smarty->assign('title', gen_select(add_prefix('title'), 'sorting', 'title', 'title', 'title', $user->title) );
}
else
{

  $smarty->assign('country', gen_select(add_prefix('country'), 'country', 'country', 'country_code', 'country', 'SG' ) );	
  $smarty->assign('gender', gen_select(add_prefix('gender'), 'gender', 'gender', 'gender', 'gender', '') );	
  $smarty->assign('title', gen_select(add_prefix('title'), 'title', 'title', 'title', 'title', ' ') );	

}

if(trim($user->city) == '')  {
	$user->city = "Singapore";
}
if(trim($user->state) == '')  {
	$user->state = "Singapore";
}
  $smarty->assign('obj', $user );
?>