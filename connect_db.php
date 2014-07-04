<?php
$link = mysql_connect('sg2nldg50mysql3.secureserver.net', 'dmarketeerdb1', 'QWer@123');
if (!$link) {
    die('Could not connect: ' . mysql_error());
}
echo 'Connected successfully';
mysql_close($link);
?> 