<?php


$php5Session->setVar('delivery_from_date'  , convert_date2($_POST['delivery_from_date']) );
$php5Session->setVar('delivery_to_date'  , convert_date2($_POST['delivery_to_date']));
$php5Session->setVar('delivery_time'  , $_POST['delivery_time']);
$php5Session->setVar('call_before_delivery'  , $_POST['call_before_delivery']);
$php5Session->setVar('avoid_lunch'  , $_POST['avoid_lunch']);

	     



?>