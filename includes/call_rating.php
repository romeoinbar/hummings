<?php
function call_rating($product_id)
{
	global $php5DB, $php5RootPath;
	require_once($php5RootPath . "/classes/ratings.class.php");
	$ratings = new Ratings($php5DB);
	$ratings->load($product_id);
	$ratings->rates = ($ratings->rates==0)?3:$ratings->rates;
	$rate = ($ratings->rates>0)?$ratings->rates*14:0;
	//return "Rating : ". $ratings->rates;
	//return '<div style="color:#666; font-size:11px;"><span style="padding-bottom:5px;display:inline-block;">Rating</span> </div>';
  return '<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
			<td width="40" style="color:#666; font-size:11px;">Rating</td>
			<td><span title="" class="vmicon ratingbox" style="display:inline-block;width:70px;">
			<span class="stars-orange" style="width:'.$rate.'px">		
			</span>		
		  </span></td>
		  </tr>
		</table>
';
}
function display_rating($product_id)
{
	global $php5DB, $php5RootPath;
	require_once($php5RootPath . "/classes/ratings.class.php");
	$ratings = new Ratings($php5DB);
	$ratings->load($product_id);	
	$ratings->rates = ($ratings->rates==0)?3:$ratings->rates;
	$rate = ($ratings->rates>0)?$ratings->rates*14:0;
	//return "Rating : ". $ratings->rates;
	//return '<div style="color:#666; font-size:11px;"><span style="padding-bottom:5px;display:inline-block;">Rating</span> </div>';
  return '<span title="" class="vmicon ratingbox" style="display:inline-block;width:70px;">
			<span class="stars-orange" style="width:'.$rate.'px">		
			</span>		
		  </span>';
}
function getRating($product_id)
{
	global $php5DB, $php5RootPath;
	require_once($php5RootPath . "/classes/ratings.class.php");
	$ratings = new Ratings($php5DB);
	$ratings->load($product_id);	

 	return $ratings->rating;
}
?>





