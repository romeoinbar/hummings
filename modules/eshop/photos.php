<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");

include_once "$php5RootPath/classes/images.class.php"; 
$task 		= php5GetParam($_REQUEST, 'task', '');
$id 		= php5GetParam($_REQUEST, 'id', '');

if($id < 1) {
	$prev 		= php5GetParam($_REQUEST, 'prev', '');
  $next 		= php5GetParam($_REQUEST, 'next', '');
	$query = "SELECT COUNT(*) FROM #__photos ";
	$php5DB->setQuery( $query );
	$recordTotal = intval($php5DB->loadResult());	
	$temp_photos = "";
	if($next) {
	  $query = "SELECT * FROM #__photos ORDER BY sorting LIMIT $next, 1";
		$prev = "javascript:gotoPhoto('','".($next-1)."');";
		if($recordTotal > ($next+1)) {
			$next ="javascript:gotoPhoto('".($next+1)."','');";
		} else {
			$next ="";
		}
	} else if($prev >= 0) {
	  $query = "SELECT * FROM #__photos ORDER BY sorting LIMIT $prev, 1";
		if(($prev-1) >= 0) {
			$prev = "javascript:gotoPhoto('','".($prev-1)."');";
		} else {
			$prev = "";
		}
		$next ="javascript:gotoPhoto('".($prev+1)."','');";
	} else {
		$query = "SELECT * FROM #__photos ORDER BY sorting LIMIT 0, 1";
		$prev = "";
		$next ="";
	}
  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadObjectList();
	
  if (count($rows)>0)
  {
		
	 foreach ($rows as $photo)
	 {  
		 //$photo = new Photos();
		 //$photo->loadData(add_prefix('photos'),'photo_id',$row['photo_id']);
			$photo->image = display_image_url($photo->image);
			$smarty->assign('description', $photo->description );	
			//$smarty->assign('resized_image', "<a href='$link_photo'>".return_resized_image(332, 337, $photo->image)."</a>" );	
			$smarty->assign('resized_image', $photo->image);	
	 }
	 
  } else {
		
	}
	 $smarty->assign('prev', $prev );	
	 $smarty->assign('next', $next );	
	
	$tpl = $php5RootPath. '/templates/en/eshop/front_page/photos.tpl';		 	   
  $temp_photos .=  $smarty->fetch($tpl);				   
	
	echo $temp_photos;return;
} else {
	$photo = new Photos();
	$photo->loadData(add_prefix('photos'),'photos_id',$id);
	if(intval($photo->photos_id) < 1) {
		return;
	}
	$photo->image = display_image_url($photo->image);
	$smarty->assign('resized_image', "<a href='#'>".return_resized_image(332, 337, $photo->image)."</a>" );	
	$tpl = sprintf($php5TemplateFile, $language, 'eshop', 'photos.tpl');
	if(!is_file($tpl )) {
		die("can not find template");
	}
	
	$smarty->assign('main',$smarty->fetch($tpl));
}
return;

