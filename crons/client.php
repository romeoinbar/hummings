<?php
ini_set("display_errors", false);
error_reporting(E_ERROR | E_WARNING | E_PARSE);
$root = realpath(dirname(__FILE__)).'/';

define('DOC_ROOT', $root);
$hostname = trim(`hostname`);
$access_code = 'e72QI37er4';

$allowed_call = array('cHTTP', 'cHardDisk','cMemory', 'cCPUUsage', 'cAvgLoad', 'cDB1');

$max_string_lengh = 40;

foreach ($allowed_call as $call){

    $call = trim($call);
    $call = preg_replace("[^a-ZA-Z0-9]", "", $call);

    if (strlen($call) <= $max_string_lengh && in_array($call, $allowed_call)){
        $result[$call] = $call();
    }
}

if ($_GET['debug'] == 1){
    print "<pre>".print_r($result, true)."</pre>";
    exit;
}



if ($result){

  $result['access_code'] = $access_code;
  $currdt = date("Y-m-d H:i:s");
  $result['server_dt'] = $currdt;
  $result = json_encode($result);

  $result = gzdeflate($result);
  $result = base64_encode($result);

  $to = 'hs-alert@dv9monitor.com';
  #$to = 'kiangchiang@dv9.com';

  mail($to, "ALERT||$hostname||{$access_code}||$currdt", $result);
  exit;
}


//Return Connection status and total number of sql query process
function cDB1(){
    global $root;

    $result = array();
    //Configure DB login Detail
    $db_host = 'localhost';
    $db_user = 'root';
    $db_pass = '';
    $db_name = 'mysql';
    /***************************************/

    $link = mysql_connect($db_host,$db_user,$db_pass);

    $result['dbname'] = $db_name;
    if (!$link){
       $result['connect'] = 0;
       $result['connect_error'] = "Failed : ".mysql_error();
    }else{

        $result['connect'] = 1;
        mysql_select_db($db_name, $link);
        $rs = mysql_query("show processlist", $link);
        $result['process'] = mysql_num_rows($rs);

        $list = array();
        while ($row = mysql_fetch_assoc($rs)) {
           $list[] = $row;
        }

        $result['process_list'] = $list;

        mysql_free_result($rs);

        mysql_close($link);

    }

    return $result;
}



//Return total number of HTTP process
function cHTTP(){
  $result = array();
  $count = `ps -ef | grep httpd | grep . -c`;
  $result['total'] = (int)$count;

  return $result;
}

/*Return the larges partition hd space used
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        36G   25G  9.5G  73% /
udev            5.9G  4.0K  5.9G   1% /dev
tmpfs           2.4G  764K  2.4G   1% /run
none            5.0M     0  5.0M   0% /run/lock
none            5.9G  128K  5.9G   1% /run/shm

The system will return 73 base on the above result
*/
function cHardDisk(){

    $result = array();
    $res = `df -h`;

    $list = explode("\n", $res);

    $large_used = 0;

    foreach ($list as $idx=>$line){
        $line = trim($line);
        if ($line == '' || $idx === 0) continue;
        $col = preg_split("/\s+/", $line, 6);

        if (count($col) >= 3){

            $cidx = count($col) - 2;
            $percent_used = (int)$col[$cidx];

            if ($percent_used > $large_used){
                $large_used = $percent_used;
            }
        }
    }
    #$large_used = 85;
    $result['large_usage'] = $large_used;

    return $result;

}

/*
[root@hsmuk1 ~]# mpstat
Linux 2.6.32-358.11.1.el6.x86_64 (hsmuk1.hsmobileservices.co.uk)        07/02/2013      _x86_64_        (                                                               
16 CPU)

11:17:12 AM  CPU    %usr   %nice    %sys %iowait    %irq   %soft  %steal  %guest   %idle
11:17:12 AM  all    0.14    0.11    1.65    0.05    0.00    0.00    0.00    0.00   98.05
*/

function cCPUUsage(){

    $result = array();

    $res = `mpstat`;
    $lines = explode("\n", $res);
    $col = preg_split("/\s+/", $lines[3], 12);

    $cpu_usage = 100 - $col[9]; //run via cron use $col[10], via php command use $col[11]

    $result['cpu_usage'] = round($cpu_usage, 2);
    $result['cpu_detail'] = $lines[3];
    return $result;
}

/*
[root@hsmuk1 ~]# vmstat -S M
procs -----------memory---------- ---swap-- -----io---- --system-- -----cpu-----
 r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa st
 0  0      0   2110    389  42123    0    0     0     6    0    3  0  2 98  0  0
*/

function cMemory(){
    $result = array();
    $res = `vmstat -S M`;
    $lines = explode("\n", $res);

    $col = preg_split("/\s+/", $lines[2], 6);

    $result['free_memory'] = (int)$col[4];
    return $result;;

}

function cAvgLoad(){
    $result = array();

    $res = `cat /proc/loadavg`;

    $res = trim($res);
    $col = preg_split("/\s+/", $res, 5);

    $result['avg_load'] = $col[0];
    $result['avg_load_detail'] = $res;

    return $result;
}
?>
