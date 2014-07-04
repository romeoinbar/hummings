<?php


$ip = $_POST['ip'];
$order_id = $_POST['order_id'];
$paymode = $_POST['paymode'];
$submitMode = $_POST['submitMode'];


$order = new Order();
$order->loadData(add_prefix('order'), 'order_id', $order_id);
$order->payment_status = 1;
$order->updateDB(add_prefix('order'), 'order_id', $order_id);


?>