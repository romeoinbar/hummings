<?php

global $php5Session;
 
if ($id)
{	
$address_book = new Address_book();
$address_book->loadData(add_prefix('address_book'),'address_book_id', $id );
$address_book->showvariables();
$address_book->book_to_session(add_prefix('address_book'), 'shipping_');	
}
else
{
$user_id =  $php5Session->getVar('user_id');	
$user = new User();
$user->loadData(add_prefix('user'),'user_id', $user_id );
$user->session_to_session(add_prefix('user'), 'shipping_');
}
?>