<?php
//////////
function php5GMTTime($hour = 8) {
	$gm_time = time() - @date('Z', time()) + $hour*3600;
	return $gm_time;
}

$date = date('Ymd', php5GMTTime());
$dir = "/home/hummings/www/download/$date/";
if(!is_dir($dir)) {
	if(mkdir($dir, 0755)){};
} else {
	if(chmod($dir, 0755)){};
}
////////////////////
$file = $dir."orders.txt";
$url = "http://www.ua-mktg.com/humming/images/transfer/$date/orders.txt";
$contents = file_get_contents($url);

if(is_file($contents)) {
	if(is_file($file)) {
		if(chmod($file, 0777)){};
		unlink($file);
	}
  exec("cd ". $dir." 2>&1", $out);
//print_r($out);

	exec("wget ".$url);
}
if(chmod($file, 0644)){};
if(chmod($dir, 0755)){};
echo "DONE\n";
?>