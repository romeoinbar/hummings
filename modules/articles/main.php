<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
global $tpl;
require_once($php5RootPath . "/classes/content.class.php");
require_once($php5RootPath . "/classes/content.category.class.php");

$smarty->assign('url_all', sefBuild($php5WebPath, 'index.php?o=articles', 1));

// Header
/*$header_tpl = sprintf($php5TemplateFile, $language, 'main', 'header.tpl');
$header_content =  $smarty->fetch($header_tpl);  
$smarty->assign('header',$header_content);	*/

$task = php5GetParam($_REQUEST, 'task', 'main');
switch ($task){
	case "category":
		$cat_id = php5GetParam($_REQUEST, 'id', 0);
		viewCategory($cat_id);
		break;
	case "view":
		$content_id = php5GetParam($_REQUEST, 'id', 0);
		viewArticle($content_id);
		break;
	case "contact":
		ContactUs();
		break;	
	case "request":
		requestCatalogue();
		break;
	default:
		allArticles();
		break;
}
function ContactUs(){
	global $tpl, $main_content, $php5DB_en, $smarty, $language, $php5TemplateFile, $php5WebPath;
	include("includes/send_email.php");
	$content_id = 19;
	$row = new Content($php5DB_en);
	$row->load($content_id);
	$row->title = php5FormatContent($row->title);
	$row->fulltext = php5FormatContent($row->fulltext);	
	$smarty->assign('content', $row);	
	
	$cat = new ContentCategory($php5DB_en);
	$cat->load($row->category_id);
		
	$smarty->assign('url_cat', sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=category&id='.$row->category_id, 1));
	$smarty->assign('pathway', $cat);	
	
	// The same type
		$php5DB_en->setQuery("SELECT * FROM #__content_category WHERE category_type=".$cat->category_type." AND publish>0 ORDER BY sorting ASC");		
		$other_cats = $php5DB_en->loadObjectList();
		$rights = array();
		$i=0;
		foreach ($other_cats as $other_cat){
			$php5DB_en->setQuery("SELECT * FROM #__content WHERE category_id=".$other_cat->content_category_id." ORDER BY sorting ASC, created_date DESC");			
			$other_contents = $php5DB_en->loadObjectList();
			if (count($other_contents)>0){
				$other_cat->category_name = stripslashes($other_cat->category_name);
				$other_cat->url =  sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=category&id='.$other_cat->content_category_id, 1);
				$rights[$i]= $other_cat;
				foreach ($other_contents as $other_content){
					$other_content->title = stripslashes($other_content->title);
					$other_content->activemenu = ($other_content->content_id==$content_id)?"activemenu":"";
					$other_content->url = sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=view&id='.$other_content->content_id, 1);
				}
				$rights[$i]->other_contents = $other_contents;
				$i++;
			}			
		}	
	
	$smarty->assign('right_menus', $rights);	
	
	// Send email
	$from = php5GetParam($_REQUEST, 'email_address', '');
	$fromname = php5GetParam($_REQUEST, 'name', '');	
	$recipient = 'online@humming.com.sg';
	//$recipient = 'tuyetanh@ua-consultants.com';
	//$recipient = 'dathy82@yahoo.com';
	$subject = "Contact Us";
	$body = '
		<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
		<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>::: Hummings :::</title>
		<style type="text/css">
		body{
			margin:0;
			padding:0;
			font-family:Arial, Helvetica, sans-serif;
			font-size:12px;
			color:#333;
			background-color:#f4e8d8;
		}
		</style>
		</head>
		
		<body>
		<table width="810" border="0" cellspacing="0" cellpadding="0" align="center">
		  <tr>
			<td align="center"><img src="'.$php5WebPath.'/images/banner_email.jpg" width="800" height="77" /></td>
		  </tr>
		  <tr>
			<td height="22" bgcolor="#f4e8d8"><h2 style="color:#5a042b; padding-left:5px;">Contact Us</h2></td>
		  </tr>
		  <tr>
			<td bgcolor="#f4e8d8"><table width="100%" border="0" cellspacing="0" cellpadding="5">
			  <tr>
				<td width="150" height="22">Name</td>
				<td height="22">'.php5GetParam($_REQUEST, 'name', '').'</td>
			  </tr>
			  <tr>
				<td width="150" height="22">Address</td>
				<td height="22">'.php5GetParam($_REQUEST, 'address', '').'</td>
			  </tr>
			  <tr>
				<td width="150" height="22">Address</td>
				<td height="22">'.php5GetParam($_REQUEST, 'address1', '').'</td>
			  </tr>
			  <tr>
				<td width="150" height="22">City</td>
				<td height="22">'.php5GetParam($_REQUEST, 'city', '').'</td>
			  </tr>
			  <tr>
				<td width="150" height="22">Postal code</td>
				<td height="22">'.php5GetParam($_REQUEST, 'postal_code', '').'</td>
			  </tr>
			  <tr>
				<td width="150" height="22">Country</td>
				<td height="22">'.php5GetParam($_REQUEST, 'country', '').'</td>
			  </tr>
			  <tr>
				<td width="150" height="22">Email address</td>
				<td height="22">'.php5GetParam($_REQUEST, 'email_address', '').'</td>
			  </tr>
			  <tr>
				<td width="150" height="22">Telephone</td>
				<td height="22">'.php5GetParam($_REQUEST, 'telephone', '').'</td>
			  </tr>
			  <tr>
				<td width="150" height="22">Handphone</td>
				<td height="22">'.php5GetParam($_REQUEST, 'handphone', '').'</td>
			  </tr>
			   <tr>
				<td width="150" height="22">Enquiry</td>
				<td height="22">'.php5GetParam($_REQUEST, 'enquiry', '').'</td>
			  </tr>			  
			</table></td>
		  </tr>
		  <tr>
			<td height="3" bgcolor="#F4E8D8"></td>
		  </tr>
		  <tr>
			<td height="22" align="center" bgcolor="#f4e8d8"><strong>© Copyright Humming Flowers &amp; Gifts Pte Ltd. All Right Reserved.</strong></td>
		  </tr>
		</table>
		</body>
		</html>
	';
	//php5Mail( $from, $fromname, $recipient, $subject, $body, 1);
	$headers  = 'MIME-Version: 1.0' . "\r\n";
	$headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";

	// Additional headers
	$headers .= 'To: Hummings.com <'.$recipient.'>' . "\r\n";
	$headers .= 'From: '.$fromname.'<'.$from.'>' . "\r\n";
	//mail($recipient, $subject, $body, $headers);
	send_email_1($recipient, $subject, $body);
	
	$tpl = sprintf($php5TemplateFile, $language, 'articles', 'contact.tpl');	
}
function requestCatalogue(){
	global $tpl, $main_content, $php5DB_en, $smarty, $language, $php5TemplateFile, $php5WebPath;
	include("includes/send_email.php");
	$content_id = 20;
	$row = new Content($php5DB_en);
	$row->load($content_id);
	$row->title = php5FormatContent($row->title);
	$row->fulltext = php5FormatContent($row->fulltext);	
	$smarty->assign('content', $row);	
	
	$cat = new ContentCategory($php5DB_en);
	$cat->load($row->category_id);
		
	$smarty->assign('url_cat', sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=category&id='.$row->category_id, 1));
	$smarty->assign('pathway', $cat);	
	
	// The same type
		$php5DB_en->setQuery("SELECT * FROM #__content_category WHERE category_type=".$cat->category_type." AND publish>0 ORDER BY sorting ASC");		
		$other_cats = $php5DB_en->loadObjectList();
		$rights = array();
		$i=0;
		foreach ($other_cats as $other_cat){
			$php5DB_en->setQuery("SELECT * FROM #__content WHERE category_id=".$other_cat->content_category_id." ORDER BY sorting ASC, created_date DESC");			
			$other_contents = $php5DB_en->loadObjectList();
			if (count($other_contents)>0){
				$other_cat->category_name = stripslashes($other_cat->category_name);
				$other_cat->url =  sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=category&id='.$other_cat->content_category_id, 1);
				$rights[$i]= $other_cat;
				foreach ($other_contents as $other_content){
					$other_content->title = stripslashes($other_content->title);
					$other_content->activemenu = ($other_content->content_id==$content_id)?"activemenu":"";
					$other_content->url = sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=view&id='.$other_content->content_id, 1);
				}
				$rights[$i]->other_contents = $other_contents;
				$i++;
			}			
		}	
	
	$smarty->assign('right_menus', $rights);	
	
	// Send email
	$from = php5GetParam($_REQUEST, 'email_address', '');
	$fromname = php5GetParam($_REQUEST, 'name', '');	
	$recipient = 'goto@humming.com.sg';
	//$recipient = 'nam@ua-consultants.com';
	$subject = "Request For Catalogue";
	$body = '
		<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
		<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>::: Hummings :::</title>
		<style type="text/css">
		body{
			margin:0;
			padding:0;
			font-family:Arial, Helvetica, sans-serif;
			font-size:12px;
			color:#333;
			background-color:#f4e8d8;
		}
		</style>
		</head>
		
		<body>
		<table width="810" border="0" cellspacing="0" cellpadding="0" align="center">
		  <tr>
			<td align="center"><img src="'.$php5WebPath.'/images/banner_email.jpg" width="800" height="77" /></td>
		  </tr>
		  <tr>
			<td height="22" bgcolor="#f4e8d8"><h2 style="color:#5a042b; padding-left:5px;">Request For Catalogue</h2></td>
		  </tr>
		  <tr>
			<td bgcolor="#f4e8d8"><table width="100%" border="0" cellspacing="0" cellpadding="5">
			  <tr>
				<td width="150" height="22">Name</td>
				<td height="22">'.php5GetParam($_REQUEST, 'name', '').'</td>
			  </tr>
			  <tr>
				<td width="150" height="22">Address</td>
				<td height="22">'.php5GetParam($_REQUEST, 'address', '').'</td>
			  </tr>
			  <tr>
				<td width="150" height="22">Address</td>
				<td height="22">'.php5GetParam($_REQUEST, 'address1', 0).'</td>
			  </tr>
			  <tr>
				<td width="150" height="22">City</td>
				<td height="22">'.php5GetParam($_REQUEST, 'city', 0).'</td>
			  </tr>
			  <tr>
				<td width="150" height="22">Postal code</td>
				<td height="22">'.php5GetParam($_REQUEST, 'postal_code', '').'</td>
			  </tr>
			  <tr>
				<td width="150" height="22">Country</td>
				<td height="22">'.php5GetParam($_REQUEST, 'country', '').'</td>
			  </tr>
			  <tr>
				<td width="150" height="22">Email address</td>
				<td height="22">'.php5GetParam($_REQUEST, 'email_address', 0).'</td>
			  </tr>
			</table></td>
		  </tr>
		  <tr>
			<td height="3" bgcolor="#F4E8D8"></td>
		  </tr>
		  <tr>
			<td height="22" align="center" bgcolor="#f4e8d8"><strong>© Copyright Humming Flowers &amp; Gifts Pte Ltd. All Right Reserved.</strong></td>
		  </tr>
		</table>
		</body>
		</html>
	';
	
	$headers  = 'MIME-Version: 1.0' . "\r\n";
	$headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";

	// Additional headers
	$headers .= 'To: Hummings.com <'.$recipient.'>' . "\r\n";
	$headers .= 'From: '.$fromname.'<'.$from.'>' . "\r\n";
	//mail($recipient, $subject, $body, $headers);
	send_email_1($recipient, $subject, $body);
	
	$tpl = sprintf($php5TemplateFile, $language, 'articles', 'request.tpl');	
}
function viewCategory($cat_id){
	global $tpl, $main_content, $php5DB_en, $smarty, $php5TemplateFile, $php5WebPath, $language, $env;
	
	$cat = new ContentCategory($php5DB_en);
	$cat->load($cat_id);
	$smarty->assign('pathway', $cat);	
	
	$php5DB_en->setQuery("SELECT *
							FROM #__content
							WHERE publish>0 AND category_id = ".$cat_id."
							ORDER BY sorting ASC, created_date DESC");
	$rows = $php5DB_en->loadObjectList();

	if (count($rows)>0){		
		foreach ($rows as $row){
			$row->title = php5FormatContent($row->title);
			$row->introtext = php5FormatContent($row->introtext);			
			$row->url = sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=view&id='.$row->content_id, 1);
		}	
		$smarty->assign('articles', $rows);		
	} else{
		php5Redirect(sefBuild($php5WebPath, 'index.php?o=articles', 1));
	}
	
	if ($env=='smp'){
		$tpl = sprintf($php5TemplateFile, $language, 'mobile', 'articles/category.tpl');			
	} else {
		$tpl = sprintf($php5TemplateFile, $language, 'articles', 'category.tpl');
	}
}
function viewArticle($content_id){
	global $tpl, $main_content, $php5DB_en, $smarty, $php5TemplateFile, $php5WebPath, $language, $env;
	
	$row = new Content($php5DB_en);
	$row->load($content_id);
	if ($row->title==''){		
		php5Redirect(sefBuild($php5WebPath, 'index.php?o=articles', 1));
	} else {	
		$cat = new ContentCategory($php5DB_en);
		$cat->load($row->category_id);
		$row->title = php5FormatContent($row->title);
		$row->fulltext = php5FormatContent($row->fulltext);
		$smarty->assign('url_cat', sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=category&id='.$row->category_id, 1));
		$smarty->assign('pathway', $cat);	
		$smarty->assign('content', $row);	
		
		// Others
		$php5DB_en->setQuery("SELECT * FROM #__content WHERE content_id!=".$content_id." AND category_id=".$row->category_id." AND publish>0 ORDER BY sorting ASC, created_date DESC");
		$others = $php5DB_en->loadObjectList();
		foreach ($others as $other){
			$other->title = stripslashes($other->title);
			$other->url = sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=view&id='.$other->content_id, 1);
		}
		$smarty->assign('other_news', $others);	
		
		// The same type
		$php5DB_en->setQuery("SELECT * FROM #__content_category WHERE category_type=".$cat->category_type." AND publish>0 ORDER BY sorting ASC");		
		$other_cats = $php5DB_en->loadObjectList();
		$rights = array();
		$i=0;
		foreach ($other_cats as $other_cat){
			$php5DB_en->setQuery("SELECT * FROM #__content WHERE category_id=".$other_cat->content_category_id." ORDER BY sorting ASC, created_date DESC");			
			$other_contents = $php5DB_en->loadObjectList();
			if (count($other_contents)>0){
				$other_cat->category_name = stripslashes($other_cat->category_name);
				$other_cat->url =  sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=category&id='.$other_cat->content_category_id, 1);
				$rights[$i]= $other_cat;
				foreach ($other_contents as $other_content){
					$other_content->title = stripslashes($other_content->title);
					$other_content->activemenu = ($other_content->content_id==$content_id)?"activemenu":"";
					$other_content->url = sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=view&id='.$other_content->content_id, 1);
				}
				$rights[$i]->other_contents = $other_contents;
				$i++;
			}			
		}	
	
		$smarty->assign('right_menus', $rights);		
		
		// Country
		$php5DB_en->setQuery("SELECT * FROM #__country WHERE 1 ORDER BY `country` ASC");
		$countries = $php5DB_en->loadObjectList();
		$smarty->assign('countries', $countries);
		$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=request', 1));
		$smarty->assign('contact_action', sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=contact', 1));
		if ($env=='smp') 	
			$tpl = sprintf($php5TemplateFile, $language, 'mobile', 'articles/view.tpl');
		else	
			$tpl = sprintf($php5TemplateFile, $language, 'articles', 'view.tpl');
	}
}
function allArticles(){
	global $tpl, $main_content, $php5DB_en, $smarty, $php5TemplateFile, $php5WebPath, $language;
	// Content
	$main_content = "";
	$php5DB_en->setQuery("SELECT *
				FROM #__content_category
				WHERE publish>0 
				ORDER BY sorting ASC");
	$cats = $php5DB_en->loadObjectList();
	$contents = array();
	$i=0;
	foreach ($cats as $cat){
		
		$php5DB_en->setQuery("SELECT *
							FROM #__content
							WHERE publish>0 AND category_id = ".$cat->content_category_id."
							ORDER BY sorting ASC
							LIMIT 0,5");
		$articles = $php5DB_en->loadObjectList();
		
		if (count($articles)>0){
			$contents[$i]->cat_name = php5FormatContent($cat->category_name);
			$contents[$i]->cat_url = sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=category&id='.$cat->content_category_id, 1);
			foreach ($articles as $article){
				$article->title = php5FormatContent($article->title);
				$article->introtext = php5FormatContent($article->introtext);			
				$article->url = sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=view&id='.$article->content_id, 1);
			}
			$contents[$i]->articles = $articles;
			$i++;
		}
		
	}
	$smarty->assign('contents',$contents);	
	
	$tpl = sprintf($php5TemplateFile, $language, 'articles', 'main.tpl');	
}

$main_content .=  $smarty->fetch($tpl); 
$smarty->assign('main',$main_content);	
?>