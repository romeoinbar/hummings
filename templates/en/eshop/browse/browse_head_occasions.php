<?php 
include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/images.class.php"; 

$occasions = new Occasions();
$occasions->loadData(add_prefix('occasions'), 'occasions_id', $id);

$smarty->assign('image', display_image_url($occasions->image) );	
$smarty->assign('resized_image', "<a href='".$occasions->image."'  style='padding:10px; border:5p solid #ccc;' rel='lightbox'>".return_resized_image(278, 500, $occasions->image)."</a>" );	
$smarty->assign('name', $occasions->name );	
$smarty->assign('description', $occasions->description );	

$tpl = $php5RootPath. '/templates/en/eshop/browse/browse_head_occasions.tpl';
$smarty->assign('browse_head', $smarty->fetch($tpl)  );	


?>
