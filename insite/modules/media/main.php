<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
error_reporting(E_ALL);
ini_set('display_errors','On');
define('JPATH_BASE', dirname(__FILE__) );
define( 'DS', DIRECTORY_SEPARATOR );
$parts = explode( DS, JPATH_BASE );
array_pop( $parts );

define( 'JPATH_ROOT',			implode( DS, $parts ) );
define( 'JPATH_SITE',			JPATH_ROOT );
define( 'COM_MEDIA_BASE',	$php5RootPath.'/images');

require_once ($php5RootPath . "/includes/folder.php");
require_once ($php5RootPath . "/includes/object.php");
require_once ($php5RootPath . "/includes/media.php");
require_once ($php5RootPath . "/includes/path.php");
require_once ($php5RootPath . "/includes/file.php");
$folder 		= php5GetParam($_REQUEST, 'folder', '');
if($folder) {
	$basePath = $php5RootPath.'/images/'.$folder;
} else {
	$basePath = $php5RootPath.'/images';
}

$mediaBase = str_replace(DS, '/', COM_MEDIA_BASE.'/');

$images 	= array ();
$folders 	= array ();
$docs 		= array ();
$fileList 	= JFolder::files($basePath);
$folderList = JFolder::folders($basePath);
// Iterate over the files if they exist
if ($fileList !== false) {
	foreach ($fileList as $file)
	{
		if (is_file($basePath.DS.$file) && substr($file, 0, 1) != '.' && strtolower($file) !== 'index.html') {
			$tmp = new JObject();
			$tmp->name = $file;
			$tmp->path = str_replace(DS, '/', JPath::clean($basePath.DS.$file));
			$tmp->path_relative = str_replace($mediaBase, '', $tmp->path);
			$tmp->size = filesize($tmp->path);
			if($folder) {
				$tmp->link = $php5WebPath."/images/$folder/$file";
			} else {
				$tmp->link = $php5WebPath."/images/$file";
			}
			$ext = strtolower(JFile::getExt($file));
			switch ($ext)
			{
				// Image
				case 'jpg':
				case 'png':
				case 'gif':
				case 'xcf':
				case 'odg':
				case 'bmp':
				case 'jpeg':
					$info = @getimagesize($tmp->path);
					$tmp->width		= @$info[0];
					$tmp->height	= @$info[1];
					$tmp->type		= @$info[2];
					$tmp->mime		= @$info['mime'];

					$filesize		= MediaHelper::parseSize($tmp->size);

					if (($info[0] > 60) || ($info[1] > 60)) {
						$dimensions = MediaHelper::imageResize($info[0], $info[1], 60);
						$tmp->width_60 = $dimensions[0];
						$tmp->height_60 = $dimensions[1];
					} else {
						$tmp->width_60 = $tmp->width;
						$tmp->height_60 = $tmp->height;
					}

					if (($info[0] > 16) || ($info[1] > 16)) {
						$dimensions = MediaHelper::imageResize($info[0], $info[1], 16);
						$tmp->width_16 = $dimensions[0];
						$tmp->height_16 = $dimensions[1];
					} else {
						$tmp->width_16 = $tmp->width;
						$tmp->height_16 = $tmp->height;
					}
					$images[] = $tmp;
					break;
				// Non-image document
				default:
					break;
			}
		}
	}
}
// Iterate over the folders if they exist
if ($folderList !== false) {
	foreach ($folderList as $folder) {
		$tmp = new JObject();
		$tmp->name = basename($folder);
		$tmp->link = sefBuild($php5WebPath, 'index.php?o=media&m=main', 0)."?folder=".basename($folder);
		$tmp->path = str_replace(DS, '/', JPath::clean($basePath.DS.$folder));
		$tmp->path_relative = str_replace($mediaBase, '', $tmp->path);
		$count = MediaHelper::countFiles($tmp->path);
		$tmp->files = $count[0];
		$tmp->folders = $count[1];

		$folders[] = $tmp;
	}
}
//return  array('folders' => $folders, 'docs' => $docs, 'images' => $images);
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'settings'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'media', 'main.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}

//$arr_key_name = php5GetParam( $_REQUEST, 'key_name', array() );
//post
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);

$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=media&m=main&task=update', 0));
$smarty->assign('link_home', sefBuild($php5WebPath, 'index.php?o=media&m=main', 0));
if($folder) {
	$smarty->assign('link_create', sefBuild($php5WebPath, 'index.php?o=media&m=create', 0)."?folder=".basename($folder));
} else {
	$smarty->assign('link_create', sefBuild($php5WebPath, 'index.php?o=media&m=create', 0));
}
$smarty->assign('folders', $folders);
$smarty->assign('docs', $docs);
$smarty->assign('images', $images);
$smarty->assign('main', $smarty->fetch($tpl));
//$smarty->display($tpl);

?>
