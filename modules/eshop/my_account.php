<?php

/* * *************************************************************************
 *                                request.php
 *
 *   Begin date           	:
 *   Copyright            	:
 *   Email                	:
 * ************************************************************************* */
defined('PHP5_PHP') or die("Application is stopping!!!");
$task = php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);

if ($task != 'order_history') {
    include 'blocks/check_login.php';
}

include 'includes/select_input.php';
include_once 'classes/cart.class.php';
include_once 'classes/tc_calendar.php';

include 'includes/generate.php';
//$smarty->set_compile_path(sprintf($php5TempaltePath, $language, 'eshop'));

include 'templates/en/eshop/right_column/right_menu.php';
include 'templates/en/eshop/left/user_menu.php';

//////////////////////////////
$smarty->assign('url_back', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account', 1));


if ($env == 'smp') {
    $smarty->assign('url_my_account', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account', 1));
}

switch ($task) {
    case 'edit_account' :
        $user = new User();
        $user->loadData(add_prefix('user'), 'user_id', $php5Session->getVar('user_id'));
        if ($user->country == '')
            $user->country = "SG";
        if ($env == 'PC')
            $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'user/edit_form.tpl');
        else
            $tpl = sprintf($php5TemplateFile, $language, 'mobile', 'myaccount/edit_form.tpl');
        $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=edit_account2&t=outsite', 1));

        $smarty->assign('user', $user);
        $smarty->assign('country', gen_select(add_prefix('country'), 'country', 'country', 'country_code', 'country', 'SG'));
        $smarty->assign('gender', gen_select(add_prefix('gender'), 'gender', 'gender', 'id', 'gender', $user->gender));
        $smarty->assign('title', gen_select(add_prefix('title'), 'sorting', 'title', 'title', 'title', $user->title));
        $smarty->assign('day', gen_select(add_prefix('day'), 'day', 'day', 'day', 'day', $user->day));
        $smarty->assign('month', gen_select(add_prefix('month'), 'month', 'month', 'month', 'en', $user->month));
        $checked = "";
        if ($user->in_newsletter($user->email, ' AND status =1 '))
            $checked = "checked";
        $smarty->assign('checked1', $checked);
        $smarty->assign('checked2', $user->newsletter_by_phone);

        $smarty->assign('user', $user);
        $main = $smarty->fetch($tpl);
        $smarty->assign('main', $main);
        break;

    case 'edit_account2' :
        $user = new User();
        $user->loadData(add_prefix('user'), 'user_id', $php5Session->getVar('user_id'));
        $name = $user->name;
        $newsletter_by_phone = php5GetParam($_REQUEST, 'newsletter_by_phone', '0');
        if (!$newsletter_by_phone)
            $_REQUEST['newsletter_by_phone'] = 0;
        $_REQUEST['email_date'] = php5GMTTime();
        $_REQUEST['phone_date'] = php5GMTTime();
        $user->bindRequest();
        $user->updateDBRQ(add_prefix('user'), 'user_id', $php5Session->getVar('user_id'));
        $php5Session->setVar('user_name', $user->name);

        $user->loadData(add_prefix('user'), 'user_id', $php5Session->getVar('user_id'));
//		  $user->showvariables();

        $n_user = new Newsletter_user();
        $n_user->loadData(add_prefix('newsletter_user'), 'email', $user->email);

        $newsletter_email = php5GetParam($_REQUEST, 'newsletter_email', '');
        $newsletter_by_phone = php5GetParam($_REQUEST, 'newsletter_by_phone', '');

        $n_user->subscribe = 2;
        if ($newsletter_email) {
            $n_user->subscribe = 1;
        }
        $n_user->subscribe_by_phone = 2;
        if ($newsletter_by_phone) {
            $n_user->subscribe_by_phone = 1;
        }
        $n_user->name = $user->name;
        if (isset($_REQUEST['newsletter_email'])) {
            if ($user->in_newsletter($user->email)) {
                $n_user->date = php5GMTTime();
                $n_user->phone_date = php5GMTTime();
                $n_user->status = 1;
                $n_user->ip = $_SERVER['REMOTE_ADDR'];
                $n_user->updateDB(add_prefix('newsletter_user'), 'email', $user->email);
            } else {
                $n_user->id = '0';
                $n_user->email = $user->email;
                $n_user->status = 1;
                $n_user->date = php5GMTTime();
                $n_user->phone_date = php5GMTTime();
                $n_user->ip = $_SERVER['REMOTE_ADDR'];
                $n_user->addDB(add_prefix('newsletter_user'));
            }
        } else {
            if ($id = $user->in_newsletter($user->email)) {
                $n_user->date = php5GMTTime();
                $n_user->status = 2;
                $n_user->ip = $_SERVER['REMOTE_ADDR'];
                //$n_user->deleteDB(add_prefix('newsletter_user'), 'email', $user->email);
                $n_user->updateDB(add_prefix('newsletter_user'), 'email', $user->email);
            } else {

            }
        }

//		  	generate_customer_file( $php5Session->getVar('user_id'), 1);

        if ($name == '')
            if ($php5Session->getVar('storepage_shopping') != null)
                header('Location: ' . $php5Session->getVar('storepage_shopping'));
        include 'modules/eshop/action/update_address.php';
        if ($env == 'PC') {
            $smarty->assign('main', "<div class=message>" . $user->mysql_error_message() . "</div><br/><br/><br/><a href='" .
                    sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&t=outsite') . "'>[ Back ]</a> ");
        } else {
            $smarty->assign('message', $user->mysql_error_message());
            $tpl = sprintf($php5TemplateFile, $language, 'mobile', 'myaccount/success.tpl');
            $main = $smarty->fetch($tpl);
            $smarty->assign('main', $main);
        }

        break;

    case 'change_password' :
        $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=change_password2&t=outsite', 1));
        if ($env == 'PC')
            $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'user/change_password_form.tpl');
        else
            $tpl = sprintf($php5TemplateFile, $language, 'mobile', 'myaccount/change_password_form.tpl');
        $main = $smarty->fetch($tpl);
        $smarty->assign('main', $main);
        break;
    case 'change_password2' :
        $user = new User();
        $old_password = $_REQUEST['old_password'];
        $new_password1 = $_REQUEST['new_password1'];
        $new_password2 = $_REQUEST['new_password2'];

        $query = "SELECT * FROM #__user WHERE user_id='" . $php5Session->getVar('user_id') . "' AND password='" . md5($old_password) . "'";
        $php5DB_en->setQuery($query);
        $rows = $php5DB_en->loadAssocList();
        if (count($rows) > 0) {
            $row = $rows['0'];
            if ($new_password1 == $new_password2) {
                $user->loadData(add_prefix('user'), 'user_id', $php5Session->getVar('user_id'));
                $user->password = md5($new_password1);
                $user->updateDB(add_prefix('user'), 'user_id', $php5Session->getVar('user_id'));
                $smarty->assign('message', $user->mysql_error_message());
            } else
                $smarty->assign('message', 'Passwords not match.');
        } else
            $smarty->assign('message', 'Wrong password.');

        $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'user/my_account_after_query.php');
        $main = $smarty->fetch($tpl);
        $smarty->assign('main', $main);
        break;
    case 'address_book_list' :
        include 'modules/eshop/user/address_book_list.php';
        break;
    case 'address_book_add' :
        if ($env == 'PC')
            $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'user/address_form.tpl');
        else
            $tpl = sprintf($php5TemplateFile, $language, 'mobile', 'myaccount/address_form.tpl');

        $smarty->assign('country', gen_select(add_prefix('country'), 'country', 'country', 'country_code', 'country', 'SG'));
        $smarty->assign('gender', gen_select(add_prefix('gender'), 'gender', 'gender', 'id', 'gender', ' '));
        $smarty->assign('title', gen_select(add_prefix('title'), 'title', 'title', 'title', 'title', ''));
        $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=address_book_add2&t=outsite', 1));
        $smarty->assign('form_title', 'ADD RECIPIENT ADDRESS');
        $smarty->assign('button_name', 'ADD');
        $main = $smarty->fetch($tpl);


        $smarty->assign('main', $main);
        break;
    case 'address_book_add2' :
        $address_book = new Address_book();
        $address_book->user_id = $php5Session->getVar('user_id');
        $address_book->bindRequest();
        $address_book->addDB(add_prefix('address_book'));
        $smarty->assign('message', $address_book->mysql_error_message());
        if ($env == 'PC')
            $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'user/my_account_after_query.php');
        else
            $tpl = sprintf($php5TemplateFile, $language, 'mobile', 'myaccount/success1.tpl');

        $main = $smarty->fetch($tpl);
        $php5Session->setVar('used_address_book', 0);
        $smarty->assign('main', $main);
        break;
    case 'address_book_edit' :
        $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'user/address_form.tpl');
        $address_book = new Address_book();
        $address_book->loadData(add_prefix('address_book'), 'address_book_id', $id);
        $smarty->assign('gender', gen_select(add_prefix('gender'), 'gender', 'gender', 'id', 'gender', $address_book->gender));
        $smarty->assign('country', gen_select(add_prefix('country'), 'country', 'country', 'country_code', 'country', $address_book->country));
        $smarty->assign('title', gen_select(add_prefix('title'), 'title', 'title', 'title', 'title', $address_book->title));
        $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=address_book_edit2&t=outsite&id=' . $id, 1));
        $smarty->assign('form_title', 'UPDATE RECIPIENT ADDRESS');
        $smarty->assign('button_name', 'UPDATE');
        $smarty->assign('obj', $address_book);

        $main = $smarty->fetch($tpl);
        $smarty->assign('main', $main);
        break;
    case 'address_book_edit2' :
        $address_book = new Address_book();
        $address_book->bindRequest();
        $address_book->updateDBRQ(add_prefix('address_book'), 'address_book_id', $id);
        $smarty->assign('message', $address_book->mysql_error_message());
        $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'user/my_account_after_query.php');
        $main = $smarty->fetch($tpl);
        $smarty->assign('main', $main);
        break;
    case 'address_book_delete' :
        $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'user/address_form.tpl');
        $address_book = new Address_book();
        $address_book->loadData(add_prefix('address_book'), 'address_book_id', $id);
        $smarty->assign('country', gen_select(add_prefix('country'), 'country', 'country', 'country_code', 'country', $address_book->country));
        $smarty->assign('title', gen_select(add_prefix('title'), 'title', 'title', 'title', 'title', $address_book->title));
        $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=address_book_delete2&t=outsite&id=' . $id, 1));
        $smarty->assign('button_name', 'DELETE');
        $smarty->assign('form_title', 'DELETE RECIPIENT ADDRESS');
        $php5Session->setVar('used_address_book', 0);
        $smarty->assign('obj', $address_book);
        $main = $smarty->fetch($tpl);
        $smarty->assign('main', $main);
        break;

    case 'address_book_delete2' :
        $address_book = new Address_book();
        $address_book->deleteDB(add_prefix('address_book'), 'address_book_id', $id);
        $smarty->assign('message', $address_book->mysql_error_message());
        $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'user/my_account_after_query.php');
        $main = $smarty->fetch($tpl);
        $smarty->assign('main', $main);
        break;

    /* case 'order_history' :
      include 'templates/en/eshop/user/order_history.php';

      $smarty->assign('main',$main);
      // include ($php5RootPath.'/under-construction.php');

      break; */
    case 'order_history' :
        $user_id = $php5Session->getVar("user_id");
        // $user_id =2856;
        $php5DB_en->setQuery("SELECT o.*, d.caption
		  					FROM #__order AS o
							INNER JOIN #__delivery_status AS d ON d.delivery_status_id = o.delivery_status
							WHERE o.user_id=" . $user_id . " ORDER BY o.order_date DESC");
        $orders = $php5DB_en->loadObjectList();
        foreach ($orders as $order) {
            $order->order_date = date("j/m/Y", strtotime($order->order_date));
            // Delivery
            $php5DB_en->setQuery("SELECT od.*, dt.caption
			  						FROM #__order_delivery AS od
									INNER JOIN #__delivery_time AS dt ON dt.delivery_time_id = od.delivery_time_id
			  						WHERE od.order_id = " . $order->order_id . " ORDER BY od.delivery_line");
            $rows = $php5DB_en->loadObjectList();
            foreach ($rows as $row) {
                $row->from_date = date("j/m/Y", strtotime($row->from_date));
                $row->to_date = date("j/m/Y", strtotime($row->to_date));
                // Order item
                $php5DB_en->setQuery("SELECT oi.*, p.name
				  					FROM #__order_item AS oi
									LEFT JOIN #__product AS p ON oi.product_id = p.product_id
									WHERE oi.delivery_id = " . $row->order_delivery_id . " ORDER BY oi.item_number");
                $rows1 = $php5DB_en->loadObjectList();
                $total_price = 0;
                $surcharge = 0;
                foreach ($rows1 as $row1) {
                    $unit_price = lib_get_discounted_price(intval($row1->unit_price), $row1->condtype2, $row1->discount);
                    $row1->unit_price = price_tag($unit_price);
                    $total_rate = $unit_price * $row1->qty;
                    $row1->total_rate = price_tag($total_rate);
                    $total_price += $total_rate;
                    $surcharge += $row1->other_surcharge_amount;
                    // Add on
                    $php5DB_en->setQuery("SELECT oa.*, p.name, p.price
					  					FROM #__order_addon AS oa
										INNER JOIN #__product AS p ON oa.addon_product_id = p.product_id
										WHERE oa.order_item_id = " . $row1->order_item_id);
                    $addons = $php5DB_en->loadObjectList();
                    $row1->addons = $addons;
                }
                $row->products = $rows1;
                $row->total_price = price_tag($total_price);
                $row->delivery_fee = price_tag($surcharge);
                $row->gst = price_tag(lib_gst($total_price + $surcharge));
                $row->total_payable = price_tag($total_price + lib_gst($total_price + $surcharge) + $surcharge);
            }

            $order->deliveries = $rows;
        }
        $smarty->assign('orders', $orders);
        if ($env == 'PC')
            $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'user/order_status.php');
        else
            $tpl = sprintf($php5TemplateFile, $language, 'mobile', 'myaccount/order_status.tpl');
        $main = $smarty->fetch($tpl);
        $smarty->assign('main', $main);
        break;
    case 'order_history2' :
        include 'templates/en/eshop/user/order_status2.php';
        $smarty->assign('main', $main);
        break;

    case 'cancel' :
        $query = "SELECT * FROM #__order_delivery WHERE  order_delivery_id = $id ";
        $php5DB_en->setQuery($query);
        $order_deliveries = $php5DB_en->loadAssocList();
        foreach ($order_deliveries as $order_delivery) {
            $query = "SELECT * FROM #__order WHERE  delivery_id = $id ";
            $php5DB_en->setQuery($query);
            $orders = $php5DB_en->loadAssocList();
            foreach ($orders as $order) {

                $query = "DELETE FROM #__order_payment WHERE order_payment_id = " . $order['payment_id'] . " ";
                $php5DB_en->setQuery($query);
                $php5DB_en->query();

                $query = "DELETE FROM #__order_item WHERE order_id = " . $order['order_id'] . " ";
                $php5DB_en->setQuery($query);
                $php5DB_en->query();
            }
            $query = "DELETE FROM #__order WHERE delivery_id = $id ";
            $php5DB_en->setQuery($query);
            $php5DB_en->query();
            $query = "DELETE FROM #__order_delivery WHERE order_delivery_id = $id ";
            $php5DB_en->setQuery($query);
            $php5DB_en->query();
        }
        header('Location: ' . sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=order_history&t=outsite', 1));
        break;


    case 'pay_enets' :
        include 'templates/en/eshop/user/pay_enets.php';
        $smarty->assign('main', $main);
        break;

    case 'reward' :
        if ($env == 'smp') {
            $tpl = sprintf($php5TemplateFile, $language, 'mobile', 'myaccount/reward_point.tpl');
            $main = $smarty->fetch($tpl);
            $smarty->assign('main', $main);
        } else {
            include 'templates/en/eshop/user/reward.php';
            $smarty->assign('main', $main);
        }
        break;

    case 'detail':
        $user = new User();
        $user->loadData(add_prefix('user'), 'user_id', $php5Session->getVar('user_id'));
        $gender = new Gender();
        $gender->loadData(add_prefix('gender'), 'id', $user->gender);
        $smarty->assign('user', $user);
        $smarty->assign('url_change_password', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=change_password&t=outsite', 1));
        $smarty->assign('url_edit_account', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=edit_account&t=outsite', 1));

        $tpl = sprintf($php5TemplateFile, $language, 'mobile', 'myaccount/account_detail.tpl');
        $main = $smarty->fetch($tpl);
        $smarty->assign('main', $main);
        break;
    default:
        if ($env == 'PC') {
            $user = new User();
            $user->loadData(add_prefix('user'), 'user_id', $php5Session->getVar('user_id'));
            $gender = new Gender();
            $gender->loadData(add_prefix('gender'), 'id', $user->gender);
            if ($env == 'PC') {
                if ($user->name == '')
                    header('Location: ' . sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=edit_account&t=outsite&id=' . $php5Session->getVar('user_id'), 1));
            }
            $smarty->assign('url_edit_accont', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=edit_account&t=outsite', 1));
            $smarty->assign('url_change_password', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=change_password&t=outsite', 1));
            $smarty->assign('url_address_book', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=address_book_list&t=outsite', 1));
            $smarty->assign('url_order_history', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=order_history&t=outsite', 1));
            $smarty->assign('url_reward_point', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=reward_point&t=outsite', 1));
            $smarty->assign('url_newsletter', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=newsletter&t=outsite', 1));
            $smarty->assign('gender', $gender->gender);
            $user = new User();
            $user->loadData(add_prefix('user'), 'user_id', $php5Session->getVar('user_id'));
            $smarty->assign('user', $user);
            $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'user/my_account_index.tpl');
        } else {
            $tpl = sprintf($php5TemplateFile, $language, 'mobile', 'myaccount/account_main.tpl');
        }
        $smarty->assign('url_account_detail', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=detail', 1));
        $smarty->assign('url_edit_accont', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=edit_account&t=outsite', 1));
        $smarty->assign('url_change_password', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=change_password&t=outsite', 1));
        $smarty->assign('url_address_book', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=address_book_list&t=outsite', 1));
        $smarty->assign('url_order_history', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=order_history&t=outsite', 1));
        $smarty->assign('url_reward_point', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=reward&t=outsite', 1));
        $smarty->assign('url_newsletter', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=newsletter&t=outsite', 1));
        $main = $smarty->fetch($tpl);
        $smarty->assign('main', $main);
        break;
}
///////////////////////////



$smarty->assign('task', $task);
if ($env == 'PC') {
    $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'full_page_user.tpl');
    if (!is_file($tpl)) {
        die("can not find template");
    }
    $smarty->assign('main', $smarty->fetch($tpl));
}



//$tpl = sprintf($php5TemplateFile, $language, 'eshop', 'create.tpl');
//$smarty->display($tpl);

return;

