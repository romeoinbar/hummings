<?php
$popup=1;
$clean=1;

$task= trim(php5GetParam($_REQUEST, 'task', ''));
$rating_review_id= intval(php5GetParam($_REQUEST, 'id', 0));


if ($rating_review_id&&($task!='')){
	require_once($php5RootPath . "/classes/rating_reviews.class.php");
	$row = new RatingReviews($php5DB);
	$row->load($rating_review_id);
	//print_r($row);
	if ($row->rating_review_id) {
		if ($task=='helpful')
			$row->helpful = $row->helpful+1;
		if ($task=='report_abuse')
			$row->report_abuse = $row->report_abuse+1;
		if ($row->store())
			echo '<div style="color:#a90061; margin-top:10px;">Thanks for your feedback.</div>';		
	}
	//print_r($row);
} 
return;	
	//============================================================================





