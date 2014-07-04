<?php 
$left ="";

$url_my_profile = sefBuild($php5WebPath, "index.php?o=eshop&m=my_account&task=&t=outsite");
$url_address_book = sefBuild($php5WebPath, "index.php?o=eshop&m=my_account&task=address_book_list&t=outsite");
$url_order_history = sefBuild($php5WebPath, "index.php?o=eshop&m=my_account&task=order_history&t=outsite");
$url_reward = sefBuild($php5WebPath, "index.php?o=eshop&m=my_account&task=reward&t=outsite");

$c1 = $c2 = $c3 = $c4 = "lmenu_2";
if ($module == 'my_account')
switch ($task)
{
case 'edit_account' : $c1 = "lmenu_2_hover";  break;	
case 'address_book_list' : $c2 = "lmenu_2_hover";  break;	
case 'order_history' : $c3 = "lmenu_2_hover";  break;	
case 'reward' : $c4 = "lmenu_2_hover";  break;	

}
$left .="<a href='$url_my_profile' class=$c1>MY PROFILE</a>";			  
$left .="<a href='$url_address_book' class=$c2>ADDRESS BOOK</a>";		
$left .="<a href='$url_order_history' class=$c3>ORDER HISTORY</a>";		
$left .="<a href='$url_reward' class=$c4>REWARD POINTS</a>";		

$smarty->assign('left',  $left);	
?>
