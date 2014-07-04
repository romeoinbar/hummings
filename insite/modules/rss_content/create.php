<?php
/***************************************************************************
*                                register.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();
require_once($php5RootPath . "/classes/rss.class.php");
$row = new RSS($php5DB_en);

$task 		= php5GetParam($_REQUEST, 'task', '');
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'rss_content'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'rss_content', 'create.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//list category
$where = array();
$where[] = " type = 2 ";
$rows_temp = array();
$query = "SELECT * "
. "\n FROM #__category "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY id";
$php5DB_en->setQuery( $query );//echo $query;
$rows_temp = $php5DB_en->loadObjectList();
$categories = array();
$categories[0] = "--Select Category--";
foreach($rows_temp as $row_temp) {
	$categories[$row_temp->id] = $row_temp->name;
}

//check task
$msg = '';
$noerr = 1;
switch($task)
{
	case 'add':
		$row->bind( $_POST );
		$publish 		= php5GetParam($_REQUEST, 'publish', '');
		if(!$publish[0]) {
			$row->status = 0;
		} else {
			$row->status = 1;
		}
		if(!trim($row->title)) {
			$noerr = 0;
			$msg = $msgAlert = sprintf($lang['_BLANK_MSG_'], 'Title');
		}
		if($noerr) {
			$row->id = '';
			if (!$row->store()) {
				$msg = $msgAlert = "Error!!! Please try again!!!";		
			} else {
				$msg = $msgAlert = $lang['_UPDATE_MSG_'];
				$redirect = sefBuild($php5WebPath, 'index.php?o=rss_content&m=main', 0);
			}
		}
		break;
	default:
		$row->date = date('d/m/Y');
		break;	
		
}
if($msg) {
	$smarty->assign('msg', $msg);
}
//assign
$smarty->assign('title', $row->title);
$smarty->assign('category_id', $row->category_id);
$smarty->assign('description', $row->description);
$smarty->assign('link', $row->link);
$smarty->assign('date', $row->date);
$smarty->assign('s_date', $row->s_date);
$smarty->assign('status', $row->status);
$smarty->assign('categories', $categories);
$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=rss_content&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=rss_content&m=create&task=add', 0));
$smarty->assign('main', $smarty->fetch($tpl));
//$smarty->display($tpl);

return;
