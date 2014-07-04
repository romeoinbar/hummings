<?php 
/*include "$php5RootPath/languages/en/eshop/header_item/top_left.php";
$php5Session->getVar('user_id');

 
 $home_link = sefBuild($php5WebPath, 'index.php?o=eshop&m=main', 1);
 $top_left =  "
<div class=top_left>
  <div class=line style='float:left;'></div><div class=line style='float:left;'></div>
    <div style='float:left;'> <a href='$home_link'> $lang_home </a></div>  
  <div class=line style='float:left;'></div>
    <div style='float:left;'>  ";
    
    
    if ($php5Session->getVar('user_id')) 
    {
    
    $top_left .=  "    
    &nbsp;  You are logged in as ".  $php5Session->getVar('user_name') . "  (<a href='" . 
	sefBuild($php5WebPath, 'index.php?o=eshop&m=logout&t=outsite', 1) . "'>LOGOUT</a>)    &nbsp;";

    
    }
    else
    {
    
     $signup_link = sefBuild($php5WebPath, 'index.php?o=eshop&m=register', 1);
     
     $top_left .= " 
	 <table> 
	  <tr>   
      <td>
	   <a href='$signup_link '>$lang_signup</a>
	  </td>
	  <td valign=top>  
	     <span style='padding:0px;'>$lang_or</span>
	  </td>
	  <td>	 
      <a href='$signup_link '>$lang_login</a>
       &nbsp;
	  </td>  
	  </tr> 
	  </table> 
	   ";


	}

     $top_left .= "
     </div>
  <div class=line style='float:left;'></div>
  <div class=line style='float:left;'></div>
  <div  style='clear:both;'></div>      
</div><br />";*/

$smarty->assign('logined', ($php5Session->getVar('user_id'))?1:0);
$smarty->assign('displlay_information', ($php5Session->getVar('user_id'))?"<span style='color:yellow;'>Welcome, ". $php5Session->getVar('user_name'). " (<a href='" . 
	sefBuild($php5WebPath, 'index.php?o=eshop&m=logout&t=outsite', 1) . "' rel=tooltip title='This will reset your shopping cart items' >Logout</a>)</span>":"");
$smarty->assign('signup_link', sefBuild($php5WebPath, 'index.php?o=eshop&m=register', 1));
?>