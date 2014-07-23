<?php
/***************************************************************************
*                                main.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'import_orders'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'import_newsletter_users', 'main.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}

require_once($php5RootPath . "/classes/newsletter_user.class.php");
require_once($php5RootPath . "/classes/newsletter_user_group.class.php");
require_once($php5RootPath . "/includes/import.php");
require_once($php5RootPath . "/includes/csv.php");
$arrId = array();
$arrUncheckId = array();
$arrEmail = array();

$csv = new Quick_CSV_import();

$task 		= php5GetParam($_REQUEST, 'task', '');
$arrMsg = array();
$arrExport = array();
//task
if($task=='import') {
	$cntError = 0;
	$cntSucc = 0;
	
	if(isset($_POST["Go"]) && ""!=$_POST["Go"]) //form was submitted
	{
		$csv->file_name =  $_FILES['file_source']['tmp_name'];	
		$csv->source = $source = $_FILES['file_source']['name'];	
		//start import now
		$csv->import();
		//print_r($csv->arr_csv_columns);die;
		if(is_array($csv->arr_csv_columns) && count($csv->arr_csv_columns) > 1 && count($csv->arr_csv_columns[0]) == 5) {
			//check dealer code
			$arr_temp = array();
			$arrCSV = $csv->arr_csv_columns;
			//for($i = 1;$i <= count($csv->arr_csv_columns);$i++) {
			foreach($arrCSV as $i => $arr) {
				if($i == 0 ) continue;
				if(is_array($arr) && count($arr) > 0) {
					foreach($arr as $j => $v) {
						$csv->arr_csv_columns[$i][$j] = trim($v);
					}
				}
			}
		
			foreach($arrCSV as $i => $arr) {
			
				$isLogin = 0;
				$arrTemp = array();
				if($i == 0 ) continue;
				if(count($csv->arr_csv_columns[$i]) != 5) {
					if(($i+1) < count($csv->arr_csv_columns)) {
						$arrMsg[] = "The number of columns is wrong at line " . ($i+1).".";
						$cntError++;
					}	
					continue;
				}
				if(trim($csv->arr_csv_columns[$i][0]) == '') {
					$arrMsg[] = "You have to input name at line " . ($i+1).".";
					$cntError++;
					continue;
				}			
				//check email valid
				if(preg_match("/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/", trim($csv->arr_csv_columns[$i][1]))==false) {
					$arrMsg[] = $csv->arr_csv_columns[$i][1] . " is invalid at line " . ($i+1).".";
					$cntError++;
					continue;
				}
				
				$str = trim(preg_replace( array("/,/", "/_/", "/%/"), array("\,", "\_", "\%"), $arr[1]));
				
				$query = "SELECT id "
				. "\n FROM #__newsletter_user "
				. "\n WHERE email = '" . trim($arr[1]) . "' LIMIT 1"
				;				
				//echo $query;
				$php5DB->setQuery( $query );
				$id = $php5DB->loadResult();
				
				$rowUser = new NewsletterUser($php5DB);
				if($id) {
					$rowUser->id = $id;
				}
				$rowUser->name = $arr[0];
				$rowUser->email = $arr[1];
				if($arr[4] == 'bounced') {
					$rowUser->status = 1;
				} else if($arr[4] == 'live') {
					$rowUser->status = 0;
				}
				
				$rowUser->date = php5GMTTime();
				if(!$rowUser->store()) {
					//$msg = $msgAlert = "Error!!! Please try again!!!";
					$msg = $msgAlert = $rowUser->getError();
					break;	
				} else {
					$cntSucc++;
				}
				
				//if(strtolower($arr[3]) == 'no') continue;
				/////////////////////////check group
				$str = preg_replace( array("/,/", "/_/", "/%/"), array("\,", "\_", "\%"), $arr[2]);
				
				$query = "SELECT id "
					. "\n FROM #__newsletter_user_group "
					. "\n WHERE name LIKE '" . mysql_real_escape_string($str) . "' LIMIT 1"
					;
				$php5DB->setQuery( $query );
				$checkGroupId = intval($php5DB->loadResult());
				
				if(!$checkGroupId) continue;

				if(strtolower($arr[3]) == 'yes') {
					$arrId[$checkGroupId][] = $rowUser->id;
			  } else {
					$arrUncheckId[$checkGroupId][] = $rowUser->id;
				}
				$arrEmail[$checkGroupId][] = $rowUser->email;		
							
			}
			//update user group
			if(count($arrEmail) > 0) {
				foreach($arrEmail as $k => $v) {
					$rowGroup = new NewsletterUserGroup($php5DB);
					$rowGroup->id = $k;
					if(count($arrId) > 0 && $arrId[$k][0] > 0) {
						$rowGroup->list_id = implode(";", $arrId[$k]);
					} else {
						$rowGroup->list_id = '';
					}
					if(count($arrUncheckId) > 0 && $arrUncheckId[$k][0] > 0) {
						$rowGroup->list_uncheck_id = implode(";", $arrUncheckId[$k]);
					} else {
						$rowGroup->list_uncheck_id = '';
					}
					$rowGroup->list_email = implode(";", $arrEmail[$k]);
					$rowGroup->store();
				}
			}						
			 
		} else {
			$msgAlert = "Error!!! File is wrong structure!!!";
		}
	}
	if(!$msgAlert) {
		$msgAlert = "Imported successfully";
		$redirect = sefBuild($php5WebPath, 'index.php?o=user_group&m=main', 0);
	}
	$st = "";
	if(count($arrMsg) > 0) {
		foreach($arrMsg as $v) {
			$st .= $v."\n";
		}
	}
	$body = sprintf($lang['_MSS_DEALER_5_'],  date('m/d/Y', php5GMTTime()), $cntSucc, $cntError, $source, $st);
	//echo php5GetConfig('config_email'). "Humming\n". php5GetConfig('config_admin_email'). $body;
	$arrBCC = array();
	php5Mail( php5GetConfig('config_email'), "Humming", php5GetConfig('config_admin_email'), sprintf($lang['_MSS_DEALER_6_'], date('m/d/Y', php5GMTTime())), $body, 0, '', $arrBCC);
}

$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=import_newsletter_users&m=main&task=import', 0));
$smarty->assign('arrMsg', $arrMsg);
$smarty->assign('main', $smarty->fetch($tpl));



