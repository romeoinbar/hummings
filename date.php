<?
$date_in_sing = mktime(date("H")+15,date("i"),date("s"),date("m"),date("d"),date("Y"));
$currdate = date("Y-m-d H:i:s", $date_in_sing);
echo date("Y-m-d H:i:s").$currdate;
?>