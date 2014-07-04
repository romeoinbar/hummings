<?

function findexts ($filename)
{
	$filename = strtolower($filename) ;
	$exts = split("[/\\.]", $filename) ;
	$n = count($exts)-1;
	$exts = $exts[$n];
	return $exts;
}
// possible PHP upload errors
$errors = array(1 => 'php.ini max file size exceeded', 
                2 => 'html form max file size exceeded', 
                3 => 'file upload was only partial', 
                4 => 'no file was attached');

// check the upload form was actually submitted else print form
$file_name = md5(time());
$folder = @$_POST['folder'];
$file_dir = $php5ImagePath . "/$folder";

$file_path ="";
$error =  '';

if(!empty($_FILES["file1"]['error']))
{
	switch($_FILES["file1"]['error'])
	{

		case '1':
			$error = 'The uploaded file exceeds the upload_max_filesize directive in php.ini';
			break;
		case '2':
			$error = 'The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form';
			break;
		case '3':
			$error = 'The uploaded file was only partially uploaded';
			break;
		case '4':
			$error = 'No file was uploaded.';
			break;

		case '6':
			$error = 'Missing a temporary folder';
			break;
		case '7':
			$error = 'Failed to write file to disk';
			break;
		case '8':
			$error = 'File upload stopped by extension';
			break;
		case '999':
		default:
			$error = 'No error code avaiable';
	}
}elseif(empty($_FILES["file1"]['tmp_name']) || $_FILES["file1"]['tmp_name'] == 'none')
{
	$error = 'No file was uploaded..';
}else 
{

	// check for standard uploading errors
	if ($_FILES["file1"]['error'] == 0) {
		// check that the file we are working on really was an HTTP upload
		if (@is_uploaded_file($_FILES["file1"]['tmp_name'])) {
			// validation... since this is an image upload script we 
			// should run a check to make sure the upload is an image
			if (@getimagesize($_FILES["file1"]['tmp_name'])) {
				// make a unique filename for the uploaded file and check it is 
				// not taken... if it is keep trying until we find a vacant one
				$ext = findexts($_FILES["file1"]['name']);
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
						$uploaded_type = $_FILES["file1"]['type'] ;				
						if($uploaded_type!="image/gif" && $uploaded_type!="image/jpg" && $uploaded_type!="image/jpeg" && $uploaded_type!="application/x-shockwave-flash" && $uploaded_type!="image/png" && $uploaded_type!="image/pjpeg" && $uploaded_type!="image/swf") {			
							$error =  "Files not supported.";
						} else {
							$file_array = $_FILES["file1"];
							$name = str_replace(' ','', $file_array['name']);
							$pos = strrpos($name, '.');
							$ext = substr( $file_array['name'], $pos);
							if(is_file("$file_dir/".$_FILES["file1"]['name'])) {
								$error =  $_FILES["file1"]['name'] . " file is exist!";
							} else {
								//@move_uploaded_file($file_array['tmp_name'], "$file_dir/$file_name$ext") or die("Couldn't copy");
								@move_uploaded_file($file_array['tmp_name'], "$file_dir/".$_FILES["file1"]['name']) or die("Couldn't copy");
							}
							$file_path = $_FILES["file1"]['name'];//"$file_name$ext";
						}
						break;
						// Non-image document
					default:
						$error =  "Only upload file images!";
						break;
				}			  									
			} else {
				$error =  'only image uploads are allowed';
			}
		} else {
			$error =  'not an HTTP upload';
		}
	}

}

	echo "{";
	echo				"error: '" . $error . "',\n";
	echo				"msg: '$file_path'\n";
	echo "}";
die;


