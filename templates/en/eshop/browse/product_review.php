<?php 
  $user = new User();
	$user->loadData(add_prefix('user'), 'user_id', $php5Session->getVar('user_id') );
	$product_detail="";
	$arrVote = $define->VOTES();
	$where = array();
	
	if (@$id) {
		$where[] = " `rv`.product_id = '" . mysql_real_escape_string($id) . "' ";
	} else {
		$where[] = " 1 > 2 ";
	}
	
	$query = "SELECT COUNT(*) "
	. "\n FROM `#__cart_rating_reviews` AS `pr`
			LEFT JOIN `#__cart_rating_votes` as `rv` on `rv`.`product_id`=`pr`.`product_id`  and `rv`.`created_by`= `pr`.`created_by`  "
	. "\n LEFT JOIN `#__user` AS `u`	ON `pr`.`created_by` = `u`.`user_id`"		
	.	"\n	LEFT JOIN `#__product` as `p` on `rv`.`product_id`=`p`.`product_id`  "
	. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ). ' AND `pr`.published >0' : " `pr`.published >0" )
	;
	
	$php5DB->setQuery( $query );
	$recordTotal = $php5DB->loadResult();
	
	//assign
	$ratings = '';
	$user_exist = 0;
	if($recordTotal>0) {
		//list ratings
		$query = "SELECT `rv`.*,`pr`.`rating_review_id`, `pr`.`report_abuse`, `pr`.helpful, `pr`.`title`, `pr`.`comment`, `p`.`name`, `u`.`name` as user_name FROM `#__cart_rating_reviews` AS `pr`
			LEFT JOIN `#__cart_rating_votes` as `rv` on `rv`.`product_id`=`pr`.`product_id`  and `rv`.`created_by`= `pr`.`created_by` "
		. "\n LEFT JOIN `#__user` AS `u`	ON `pr`.`created_by` = `u`.`user_id`"	
		.	"\n	LEFT JOIN `#__product` as `p` on `rv`.`product_id`=`p`.`product_id`  "
		. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ). ' AND `pr`.published >0' : " `pr`.published >0" )
		;
		//. "\n LIMIT $startLimit, $limit";
		$php5DB->setQuery( $query );//echo $query;
		$rowTemps = $php5DB->loadObjectList();
		$i = 1;
		foreach($rowTemps as $key => $row) {
			$ratings[$key] = array();
			$ratings[$key]['rating_review_id'] = $row->rating_review_id;
			$ratings[$key]['idx'] = $i;
			$ratings[$key]['helpful'] = $row->helpful;
			$ratings[$key]['report_abuse'] = $row->report_abuse;
			$ratings[$key]['rating_vote_id'] = $row->rating_vote_id;
			$ratings[$key]['product_id'] = $row->product_id;
			$ratings[$key]['product_name'] = $row->name;
			$ratings[$key]['comment'] = stripslashes($row->comment);
			$ratings[$key]['title'] = stripslashes($row->title);
			$ratings[$key]['vote'] = $row->vote;
			$ratings[$key]['voteText'] = $arrVote[$row->vote];
			$ratings[$key]['user_name'] = $row->user_name;
			$ratings[$key]['created_on'] = date("M d, Y", strtotime($row->created_on));
			$ratings[$key]['created_by'] = $row->created_by;
			$ratings[$key]['modified_on'] = $row->modified_on;
			$ratings[$key]['modified_by'] = $row->modified_by;
			$ratings[$key]['star'] = $row->vote * 14;
			$ratings[$key]['link'] = sefBuild($php5WebPath, 'index.php?o=ratings&m=edit&task=view&id='. $row->rating_review_id, 0);
			$ratings[$key]['hr'] = ($i<(count($rowTemps)-1))?'<hr size="1" color="#ccc">':'';
			if($i % 2 == 0) $ratings[$key]['row'] = 0;
			else $ratings[$key]['row'] = 1;
			if($user->user_id == $row->created_by) {
				$user_exist = 1;
			}
			$i++;
		}
	} 
	$smarty->assign('votes', $define->VOTES());
	$smarty->assign('user', $user);
	$smarty->assign('product_id', $id);
	$smarty->assign('ratings', $ratings);
	$smarty->assign('user_exist', $user_exist);
	$smarty->assign('url_review', sefBuild($php5WebPath, "index.php?o=eshop&m=product_detail&t=outsite&task=show" , 1));
	
	$smarty->assign('url_login', sefBuild($php5WebPath, 'index.php?o=eshop&m=register', 1));
	$tpl = $php5RootPath. '/templates/en/eshop/browse/product_review.tpl';
	$smarty->assign('product_review_main', $smarty->fetch($tpl));
	$smarty->assign('product_review', $product_detail );	
  
?>
