<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
if($env!='PC') {
	include_once "$php5RootPath/classes/images.class.php"; 
	include_once "$php5RootPath/classes/tables.class.php"; 
	include_once "$php5RootPath/includes/call_rating1.php"; 
	$tpl = sprintf($php5TemplateFile, $language, 'eshop', 'smp_product_page.tpl');
  $product = new Product();
		 $product->loadData(add_prefix('product'),'product_id',$id);
	///addon
  $query = "SELECT addon_id FROM #__product_addon_link WHERE product_id='$id' ORDER BY sorting";
  $php5DB_en->setQuery( $query );  
  $arrTemp = $php5DB_en->loadResultArray();
	$addons = '';
	$arrAddons = array();
	if(count($arrTemp)) {
		$query = "SELECT * FROM #__product WHERE product_id IN (". implode(',' ,$arrTemp).")";
		$php5DB_en->setQuery( $query );  
		$arrAddons = $php5DB_en->loadObjectList();
		if(count($arrAddons)) {
			$k=1;
			foreach ($arrAddons as $arrAddon){
				$addons .= '
				<table width="100%" border="0" cellspacing="0" cellpadding="5">
				  <tr>
					<td valign="top" width="40">'.return_resized_image(30, 30, $php5WebPath.'/'.$arrAddon->image).'</td>
					<td valign="top" width="20"><input name="addon'.$k.'" value="'.$arrAddon->product_id.'" type="checkbox"></td>
					<td valign="top"><strong>'.$arrAddon->name.'</strong><br />
						S$'.$arrAddon->price.'</td>
				  </tr>
				</table>'
				;
				$k++;
			}
		}
	}
	
	if(is_file($php5RootPath . "/".$product->image)) {
		$smarty->assign('image', $php5WebPath.'/'.$product->image);
	} else {
		$smarty->assign('image', $php5WebPath.'/images/no_image.gif');
	}	
	$smarty->assign('url_add', sefBuild($php5WebPath, 'index.php?o=eshop&m=cart&task=add', 1) );
	$smarty->assign('name', $product->name);
	$smarty->assign('rating', call_rating($product->product_id));	
	$smarty->assign('price', price_tag($product->price));
	$smarty->assign('product_id', $id);
	$smarty->assign('addons', $addons);
	$smarty->assign('total_addon', count($arrAddons));
	
	$smarty->assign('description_short', $product->description_short);
	$smarty->assign('description', $product->description);
	$smarty->assign('sku', $product->sku);
	$smarty->assign('gst_price', $product);
	
	$smarty->assign('lead_time', $product->show_availability() ); 
		 
   if ($product->available_date > date('Y-m-d'))
   $smarty->assign('lead_time', "<font size=+1><b>From " . date( "d M Y" , strtotime($product->available_date) ) . "</b></font>"  ); 


   if ($product->lead_time >  0)
   		$smarty->assign('show_lead_time', "This item requires " . $product->lead_time. "hours to be prepared. <br/>"  ); 
   else
		   $smarty->assign('show_lead_time', ""  ); 		 
   
 	$smarty->assign('url_add', sefBuild($php5WebPath , 'index.php?o=eshop&m=cart&task=add', 1 )  );	  
   
   /*if($product->show_availability() == 'available') {
       $smarty->assign('url_add', sefBuild($php5WebPath , 'index.php?o=eshop&m=cart&task=add', 1 )  );        	 
	} else
       $smarty->assign('url_add', ""  );*/
	   
	if ($product->show_availability() == 'out of stock')		
		 	$smarty->assign('button','');			
		else
			$smarty->assign('button',  "<input type=image src='$php5WebPath/images/btn-buy.gif' style='border:none; width:91px; height:22px;'>");		   
	
   $smarty->assign('main', $smarty->fetch($tpl));		
} else {

	$php5Session->setVar('storepage',  sefBuild($php5WebPath, 'index.php?o=eshop&m=product_detail&t=outsite&task=show&id=' . $id, 1)  );
	$task 		= php5GetParam($_REQUEST, 'task', '');
	$currPage = php5GetParam($_REQUEST, 'p', 1);
	if(!$currPage) {
		$currPage = 1;
	}
	//$smarty->set_compile_path(sprintf($php5TempaltePath, $language, 'eshop'));
	
	
			 
	
	//////////////////////////////
	switch($task)
	{
			case 'addreview':
			require_once($php5RootPath . "/classes/rating_reviews.class.php");
			require_once($php5RootPath . "/classes/rating_votes.class.php");
			require_once($php5RootPath . "/classes/ratings.class.php");
			$ratingReviews = new RatingReviews($php5DB);
			$ratingVotes = new RatingVotes($php5DB);
			$ratingReviews->created_on = date('Y-m-d H:i:s', php5GMTTime());
			$ratingReviews->modified_on = date('Y-m-d H:i:s', php5GMTTime());
			$ratingVotes->created_on = date('Y-m-d H:i:s', php5GMTTime());
			$ratingVotes->modified_on = date('Y-m-d H:i:s', php5GMTTime());
			$ratingReviews->bind( $_POST );
			$ratingVotes->bind( $_POST );
			$ratingReviews->store();
			$ratingVotes->store();
			
			$ratings = new Ratings($php5DB);
			$ratings->load($ratingReviews->product_id);
			$ratings->created_on = date('Y-m-d H:i:s', php5GMTTime());
			$ratings->modified_on = date('Y-m-d H:i:s', php5GMTTime());
			if(!$ratings->rating_id) {
				$ratings->product_id = $ratingReviews->product_id;
				$ratings->store(false, false);
				$ratings->load($ratingReviews->product_id);
			}
			$ratings->updateRating($php5DB);
		  $ratingReviews = NULL;
			$ratingVotes = NULL;
			$ratings = NULL;		
			php5Redirect(sefBuild($php5WebPath, 'index.php?o=eshop&m=product_detail&t=outsite&task=show&id=' . php5GetParam($_REQUEST, 'product_id', '')));
		  break;
		default:
	
			break;
	}
	///////////////////////////
	if ($task == 'search') {
	
	}
	
	$smarty->assign('cur_page',  sefBuild($php5WebPath, "index.php?o=eshop&m=product_detail&t=outsite&task=show&id=" .$id , 1));		   
	include $php5RootPath.'/templates/en/eshop/browse/related.php';
	include $php5RootPath.'/templates/en/eshop/browse/product_detail.php';
	
	$smarty->assign('cur_page_encode',  urlencode( sefBuild($php5WebPath, "index.php?o=eshop&m=product_detail&t=outsite&task=show&id=" .$id , 1)));
	$tpl = sprintf($php5TemplateFile, $language, 'eshop', 'product_page.tpl');
	if(!is_file($tpl )) {
		die("can not find template");
	}
	
	$smarty->assign('main',$smarty->fetch($tpl));

}

return;