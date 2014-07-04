<?php
function time_input($target_id)
{
 echo "
 <select name='".$target_id."_hours'>
   <option>00</option>
   <option>01</option>
   <option>02</option>
   <option>03</option>
   <option>04</option>
   <option>05</option>
   <option>06</option> 
   <option>07</option>
   <option>08</option>
   <option>09</option>
   <option>10</option>   
   <option>11</option>
   <option>12</option>
   <option>13</option>
   <option>14</option>
   <option>15</option>
   <option>16</option> 
   <option>17</option>
   <option>18</option>
   <option>19</option>
   <option>20</option>   
   <option>21</option>   
   <option>22</option>   
   <option>23</option>   
   <option>24</option>                                     
 </select>
 
 ";
}

function gen_sub_product_categories_option($exclude, $current, $parent_id, $prefix) 
{
	global $dblink;
	$sql = "SELECT * FROM ". add_prefix('product_category') ."  WHERE parent_id=$parent_id ORDER BY sorting";

    if ($rows = query($sql,$dblink))
	{
		$s = "";

      while ($row =  mysql_fetch_array($rows, MYSQL_ASSOC))
      {

	   $selected = ($row['product_category_id'] == $current) ? "selected" : "";	
	   if ($row['product_category_id'] != $exclude )
	   $s.="<option value='".$row['product_category_id']."' $selected>". $prefix. $row['name']."</option>";
	 
	   $s.= gen_sub_product_categories_option($exclude, $current, $row['product_category_id'] , '--' .  $prefix);	
       }
	return $s;	
	}
	else 
	return $s;	
}

function gen_product_categories_option($exclude, $current)
{
	global $dblink;
	$sql = "SELECT * FROM ". add_prefix('product_category') ."  WHERE parent_id=0 ORDER BY sorting";

    $rows = query($sql,$dblink);
	
    $s = "<SELECT name='parent_id' >
	<option value=0>parent_category</option>
	";
    while ($row =  mysql_fetch_array($rows, MYSQL_ASSOC))
    {
	 $selected = ($row['product_category_id'] == $current) ? "selected" : "";	
	 if ($row['product_category_id'] != $exclude )
	 $s.="<option value='".$row['product_category_id']."' $selected>".$row['name']."</option>";
	 
	 $s.= gen_sub_product_categories_option($exclude, $current, $row['product_category_id'] , '--');
    }
	$s.="</SELECT>";
	
	return $s;
}




function gen_sub_occasions_option($exclude, $current, $parent_id, $prefix) 
{
	global $dblink;
	$sql = "SELECT * FROM ". add_prefix('occasions') ."  WHERE parent_id=$parent_id ORDER BY sorting";

    if ($rows = query($sql,$dblink))
	{
		$s = "";

      while ($row =  mysql_fetch_array($rows, MYSQL_ASSOC))
      {

	   $selected = ($row['occasions_id'] == $current) ? "selected" : "";	
	   if ($row['occasions_id'] != $exclude )
	   $s.="<option value='".$row['occasions_id']."' $selected>". $prefix. $row['name']."</option>";
	 
	   $s.= gen_sub_product_categories_option($exclude, $current, $row['occasions_id'] , '--' .  $prefix);	
       }
	return $s;	
	}
	else 
	return $s;	
}

function gen_occasions_option($exclude, $current)
{
	global $dblink;
	$sql = "SELECT * FROM ". add_prefix('occasions') ."  WHERE parent_id=0 ORDER BY sorting";

    $rows = query($sql,$dblink);
	
    $s = "<SELECT name='parent_id' >
	<option value=0>parent_category</option>
	";
    while ($row =  mysql_fetch_array($rows, MYSQL_ASSOC))
    {
	 $selected = ($row['occasions_id'] == $current) ? "selected" : "";	
	 if ($row['occasions_id'] != $exclude )
	 $s.="<option value='".$row['occasions_id']."' $selected>".$row['name']."</option>";
	 
	 $s.= gen_sub_occasions_option($exclude, $current, $row['occasions_id'] , '--');
    }
	$s.="</SELECT>";
	
	return $s;
}



function gen_sub_collections_option($exclude, $current, $parent_id, $prefix) 
{
	global $dblink;
	$sql = "SELECT * FROM ". add_prefix('collections') ."  WHERE parent_id=$parent_id ORDER BY sorting";

    if ($rows = query($sql,$dblink))
	{
		$s = "";

      while ($row =  mysql_fetch_array($rows, MYSQL_ASSOC))
      {

	   $selected = ($row['collections_id'] == $current) ? "selected" : "";	
	   if ($row['collections_id'] != $exclude )
	   $s.="<option value='".$row['collections_id']."' $selected>". $prefix. $row['name']."</option>";
	 
	   $s.= gen_sub_product_categories_option($exclude, $current, $row['collections_id'] , '--' .  $prefix);	
       }
	return $s;	
	}
	else 
	return $s;	
}


function gen_collections_option($exclude, $current)
{
	global $dblink;
	$sql = "SELECT * FROM ". add_prefix('collections') ."  WHERE parent_id=0 ORDER BY sorting";

    $rows = query($sql,$dblink);
	
    $s = "<SELECT name='parent_id' >
	<option value=0>parent_category</option>
	";
    while ($row =  mysql_fetch_array($rows, MYSQL_ASSOC))
    {
	 $selected = ($row['collections_id'] == $current) ? "selected" : "";	
	 if ($row['collections_id'] != $exclude )
	 $s.="<option value='".$row['collections_id']."' $selected>".$row['name']."</option>";
	 
	 $s.= gen_sub_collections_option($exclude, $current, $row['collections_id'] , '--');
    }
	$s.="</SELECT>";
	
	return $s;
}

function gen_select_message($current)
{
	global $dblink;
	$sql = "SELECT * FROM ". add_prefix('message') ."  WHERE parent_id=0 ORDER BY sorting";

    $rows = query($sql,$dblink);
	
    $s = "<SELECT name='parent_id' >
	<option value=0>parent_category</option>
	";
    while ($row =  mysql_fetch_array($rows, MYSQL_ASSOC))
    {
	 $selected = ($row['message_id'] == $current) ? "selected" : "";	
	 $s.="<option value='".$row['message_id']."' $selected>".$row['message']."</option>";
    }
	$s.="</SELECT>";
	
	return $s;
}







function gen_select($table, $order, $name, $value, $title, $current)
{
global $dblink;	
$sql = "SELECT * FROM $table ";

if ($order != '')
$sql .= " ORDER BY $order ";
$rows = query($sql,$dblink);
$s = "<SELECT name='$name' >";
while ($row =  mysql_fetch_array($rows, MYSQL_ASSOC))
{
$selected = ($row[$value] == $current) ? "selected" : "";
$s .= "<option value='" .$row[$value] . "'  $selected >".$row[$title]."</option>";
}
$s .= "</SELECT>";

return $s;
}



function gen_select2( $table, $order, $name, $value, $title, $current, $where, $script, $blank)
{
	global $dblink;	
$sql = "SELECT * FROM $table ";

if ($where != '')
$sql .= $where ;

if ($order != '')
$sql .= " ORDER BY $order ";

$rows = query($sql,$dblink);
$s = "<SELECT name='$name' $script>
";
if ($blank)
  $s .= "<option></option>";
while ($row =  mysql_fetch_array($rows, MYSQL_ASSOC))
{
  $selected = ($row[$value] == $current) ? "selected" : "";
  $s .= "<option value='" .$row[$value] . "'  $selected >".$row[$title]."</option>";
}
  $s .= "</SELECT>";

return $s;
}


function gen_btype($dblink,  $item_id )
{
$sql = "SELECT btype.*, itemtype.item_id  FROM `btype` LEFT JOIN itemtype ON btype.id = itemtype.type AND itemtype.item_id='$item_id' ORDER BY btype.id";
//echo $sql;
$rows = query($sql,$dblink);
$count = 0;
$str = "<table width=95% cellspacing=0 cellpadding=0>";
while ($row =  mysql_fetch_array($rows, MYSQL_ASSOC))
{
if (($count % 3) == 0)
$str .= "<tr>";

$checked = ($row['item_id'] ) ? "checked" : "";
$str .= "<td><input type='checkbox' name='btype".$row['id']."' value=1 $checked >" . $row['type'] . " &nbsp;&nbsp;&nbsp; ";
$count = $count+1;
}
$str .= "</table>";
return $str;
}

function update_btype($dblink,  $item_id )
{
$sql = "DELETE FROM itemtype WHERE item_id='$item_id'";
query($sql,$dblink);

$sql = "SELECT * FROM btype";
$rows = query($sql,$dblink);
while ($row =  mysql_fetch_array($rows, MYSQL_ASSOC))
{
$inputname = "btype".$row['id'];
$type = $row['id'];
if ($_POST[$inputname] == 1 )
{
$sql = "INSERT INTO itemtype VALUES ('$item_id', '$type')";
query($sql,$dblink);
}
}

}

?>





