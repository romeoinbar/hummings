<?php


function shows($variable)
{
global $php5Session;

echo "<div style='display:inline-block; width:180px;'>$variable : </div>" . $php5Session->getVar($variable) . "<br/>" ;	
}


$sesssion_vars = 
"checkout_type,
user_id,
tbl_user_title,
tbl_user_name,
tbl_user_company,
tbl_user_block,
tbl_user_unit,
tbl_user_building,
tbl_user_address1,
tbl_user_address2,
tbl_user_address3,
tbl_user_address4,
tbl_user_postcode,
tbl_user_city,
tbl_user_country,
tbl_user_email,
tbl_user_password,
tbl_user_telephone1,
tbl_user_telephone2,
tbl_user_fax,
shipping_tbl_user_title,
shipping_tbl_user_name,
shipping_tbl_user_company,
shipping_tbl_user_block,
shipping_tbl_user_unit,
shipping_tbl_user_building,
shipping_tbl_user_address1,
shipping_tbl_user_address2,
shipping_tbl_user_address3,
shipping_tbl_user_address4,
shipping_tbl_user_postcode,
shipping_tbl_user_city,
shipping_tbl_user_country,
shipping_tbl_user_email,
shipping_tbl_user_telephone1,
shipping_tbl_user_telephone2,
shipping_tbl_user_fax,
delivery_from_date,
delivery_to_date,
delivery_time,
call_before_delivery,
avoid_lunch,
message_sender,
message_receiver,
message_content,
";

$vars = explode( ",
", $sesssion_vars);
foreach ($vars as $var)
{
	shows($var);

}



?>