<?php

$temp_photos = "";

  $query = "SELECT * FROM #__photos ORDER BY sorting LIMIT 1";
  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadObjectList();
  if (count($rows)>0)
  {
	 foreach ($rows as $photo)
	 {  
		 //$photo = new Photos();
		 //$photo->loadData(add_prefix('photos'),'photo_id',$row['photo_id']);
		 $link_photo = sefBuild($php5WebPath, "index.php?o=eshop&m=photos&task=show&id=" .$photo->photos_id , 1)  ;		 
		  $photo->image = display_image_url($photo->image);
		   $smarty->assign('link', $photo->link );	
         $smarty->assign('resized_image', "<a href='$link_photo'>".return_resized_image(303, 267, $photo->image)."</a>" );
		  $smarty->assign('link', $photo->link );	
         $smarty->assign('photo_id', $photo->photos_id );	
       $tpl = $php5RootPath. '/templates/en/eshop/front_page/photos.tpl';		 	   
	   $temp_photos .=  $smarty->fetch($tpl);				   
	 }
	 
  }

$smarty->assign('photos', $temp_photos );	
?>
