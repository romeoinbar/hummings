<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
require_once($php5RootPath . "/classes/newsletter_user_group.class.php");
$currPage = php5GetParam($_REQUEST, 'p', 1);
$list_id = php5GetParam($_REQUEST, 'list_id', '');
$type_id = php5GetParam($_REQUEST, 'type_id', '');
$task = php5GetParam($_REQUEST, 'task', '');
$email = php5GetParam($_REQUEST, 'email', '');
$id = php5GetParam($_REQUEST, 'id', '');
$rowGroup = new NewsletterUserGroup($php5DB);
if(!$currPage) {
	$currPage = 1;
}
$limit = 84;
//list user
$where = array();
$rows_temp = array();
$where[] = " email != '' ";
$where[] = " subscribe = '1' ";
if($email) {
	$where[] = " email LIKE '%$email%' ";
}

if($type_id !='') {
	/*$where[] = " type = '$type_id' ";
	if($type_id == 3) {
		$rowGroup->load(1);
	} else if($type_id == 2) {
		$rowGroup->load(2);
	} else {
		$rowGroup->load(3);
	}*/
	$rowGroup->load($type_id);
	$list_id = $rowGroup->list_id;
	$list_uncheck_id = $rowGroup->list_uncheck_id;
	$arr1 = explode(';', $list_id);
	$arr2 = explode(';', $list_uncheck_id);
	if(count($arr2) > 0 && $arr2[0] > 0) {
		$result = array_merge((array)$arr1, (array)$arr2);
	} else {
		$result = $arr1;
	}
	$where[] = " id IN (".implode( ',', $result ).") ";
	//$where[] = " id IN (".implode( ',', $arr2 ).") ";
	
} else {
	$where[] = " 1 = 2 ";
}

if($rowGroup->id > 0) {
	if($task=='add') {
		$arr = explode(';', $list_id);
		$arr2 = explode(';', $list_uncheck_id);
		$arr_temp = array();
		foreach($arr2 as $k => $v) {
			if($v != $id) {
				$arr_temp[] = $v;
			}
		}
		$arr2 = $arr_temp;
		////////////////
		$arr[] = $id;
		if(trim($list_id)) {
			$list_id = $rowGroup->list_id = implode(';', $arr);
		} else {
			$list_id = $rowGroup->list_id = $id;
		}
		$rowGroup->list_uncheck_id = implode(';', $arr2);
		$rowGroup->store();
	} else if($task=='remove') {
		$arr = explode(';', $list_id);
		$arr2 = explode(';', $list_uncheck_id);
		$arr_temp = array();
		foreach($arr as $k=>$v) {
			if($v != $id) {
				$arr_temp[$k] = $v;
			}
		}
		$arr = $arr_temp;
		$arr2[] = $id;
		$list_id = $rowGroup->list_id = implode(';', $arr);
		if(trim($list_uncheck_id)) {
			$rowGroup->list_uncheck_id = implode(';', $arr2);
		} else {
			$rowGroup->list_uncheck_id = $id;
		}
		$rowGroup->store();	
	}
}
/////////count
$query = "SELECT count(*) "
. "\n FROM #__newsletter_user "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ";
$php5DB->setQuery( $query );
$recordTotal = $countUsers = $php5DB->loadResult();
$startLimit= ($currPage - 1) * $limit;
////////////////
$query = "SELECT id, name, email, type, status "
. "\n FROM #__newsletter_user "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY id  LIMIT $startLimit, $limit";
$php5DB->setQuery( $query );
$rows_user = $rows_temp = $php5DB->loadObjectList();
//paging
$pageTotal = ceil($recordTotal / $limit);
$currPage = $currPage > $pageTotal ? $pageTotal : $currPage;
$paging = new php5Paging($pageTotal, $currPage);
$paging->js = 1;
$paging->url = sefBuild($php5WebPath, 'index.php?o=newsletters&m=main', 0)."?";

$usertotal = count($rows_temp);
$users = array();
$nextUsers = array();
$i = 0;
$j = 0;
$k = 0;

if(count($rows_temp)) {
	foreach($rows_temp as $row_temp) {
		if($j==3) {
			$i++;
			$j = 0;
		}
		if($j == 0) {
			$users[$i][0]['idx'] = $k++;
			$users[$i][0]['id'] = '';
			$users[$i][0]['name'] = '';
			$users[$i][0]['email'] = '';
			$users[$i][0]['type'] = 'subscribers';
			$users[$i][0]['checked'] = 0;
			$users[$i][1]['idx'] = $k++;
			$users[$i][1]['id'] = '';
			$users[$i][1]['name'] = '';
			$users[$i][1]['email'] = '';
			$users[$i][1]['type'] = 'subscribers';
			$users[$i][1]['checked'] = 0;
			$users[$i][2]['idx'] = $k++;
			$users[$i][2]['id'] = '';
			$users[$i][2]['name'] = '';
			$users[$i][2]['email'] = '';
			$users[$i][2]['type'] = 'subscribers';
			$users[$i][2]['checked'] = 0;
		}
		$users[$i][$j]['id'] = $row_temp->id;
		$users[$i][$j]['name'] = $row_temp->name;
		$users[$i][$j]['email'] = $row_temp->email;
		$users[$i][$j]['status'] = $row_temp->status;
		if($row_temp->type == 2) {
			$users[$i][$j]['type'] = 'registered and bought';
		} else if($row_temp->type == 3) {
			$users[$i][$j]['type'] = 'registered';
		}
		$users[$i][$j]['checked'] = 0;
		$j++;
		
	}
}
if($list_id) {
	//check user
	$arr = explode(';', $list_id);
	if(count($arr) > 0) {
		$i = 0;
		foreach($users as $i => $arrTemps) {
			foreach($arrTemps as $j => $arrTemp) {
				foreach($arr as $k => $v) {
					if($v == $arrTemp['id']) {
						$users[$i][$j]['checked'] = 1;
						break;
					}
				}
			}
			
		}
	}	
}


$tpl = sprintf($php5TemplateFile, $language, 'load_newsletter_user', 'main.tpl');	

if(count($users) > 0) {
	$smarty->assign('users', $users);
	$smarty->assign('usertotal', $usertotal);
	if(($currPage + 1) > $countUsers) {
		$smarty->assign('nextp', $countUsers);
	} else {
		$smarty->assign('nextp', $currPage + 1);
	}
	
	if(($currPage - 1) < 1) {
		$smarty->assign('prevp', 1);
	} else {
		$smarty->assign('prevp', $currPage - 1);
	}	
}
$smarty->assign('link', $php5WebPath."/load_newsletter_user.php");
$smarty->assign('paging', $paging->showDivPages());
$smarty->display($tpl);
?>