<?php
/***************************************************************************
*                                ratings.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();
require_once($php5RootPath . "/classes/rating_reviews.class.php");
require_once($php5RootPath . "/classes/rating_votes.class.php");
require_once($php5RootPath . "/classes/ratings.class.php");
//$row = new Category($php5DB_en);
$task 		= php5GetParam($_REQUEST, 'task', '');
$rating_review_id 		= intval(php5GetParam($_REQUEST, 'id', ''));

$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'ratings'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'ratings', 'edit.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//check task
$msg = '';
$noerr = 1;
switch($task)
{
	case 'update':
		$ratingReviews = new RatingReviews($php5DB);
		$ratingVotes = new RatingVotes($php5DB);
		$ratingReviews->bind( $_POST );
		$ratingVotes->bind( $_POST );
		$votes 		= php5GetParam($_REQUEST, 'votes', '');
		
		if($noerr) {
			if (!$ratingReviews->store()) {
				$msg = $msgAlert = "Error!!! Please try again!!!";		
			} else {
				$msg = $msgAlert = $lang['_UPDATE_MSG_'];
				$redirect = sefBuild($php5WebPath, 'index.php?o=ratings&m=list&id='.$ratingReviews->product_id, 0);
			}
			$ratingVotes->vote  = @$votes[0];
			if (!$ratingVotes->store()) {
				$msg = $msgAlert = "Error!!! Please try again!!!";		
			} else {
				$msg = $msgAlert = $lang['_UPDATE_MSG_'];
				$redirect = sefBuild($php5WebPath, 'index.php?o=ratings&m=list&id='.$ratingReviews->product_id, 0);
			}
			$ratings = new Ratings($php5DB);
			$ratings->load($ratingReviews->product_id);
			$ratings->updateRating($php5DB);
		}
		break;
	default:
		break;	
		
}
if($msg) {
	$smarty->assign('msg', $msg);
}
$query = 'SELECT `pr`.*,`rv`.`vote`, `rv`.`rating_vote_id` FROM `#__cart_rating_reviews` AS `pr`
		LEFT JOIN `#__cart_rating_votes` as `rv` on `rv`.`product_id`=`pr`.`product_id`  and `rv`.`created_by`= `pr`.`created_by`
      WHERE `pr`.rating_review_id="'. $rating_review_id .'" ';
$php5DB->setQuery( $query );//echo $query;
$php5DB->loadObject($row);
if(empty($row->rating_review_id)) {
	return;
}
//assign
$smarty->assign('votes', $define->VOTES());
$smarty->assign('comment', $row->comment);
$smarty->assign('published', $row->published);
$smarty->assign('vote', $row->vote);
$smarty->assign('rating_vote_id', $row->rating_vote_id);
$smarty->assign('rating_review_id', $row->rating_review_id);
$smarty->assign('product_id', $row->product_id);

$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=ratings&m=list&id='.$row->product_id, 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=ratings&m=edit&task=update&id='.$id, 0));
$smarty->assign('main', $smarty->fetch($tpl));
//$smarty->display($tpl);

return;
