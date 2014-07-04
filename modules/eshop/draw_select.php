<?php
include_once "$php5RootPath/classes/tables.class.php"; 
$popup=1;
$clean=1;

  $id = $_GET['id'];
  
	    // $s = "<select id=s1 onChange=set_message(this.value) style='width:300px;' ><option value=0></option>";
		$s="";
		$i=1;
         $query = "SELECT * FROM #__message WHERE parent_id=$id ORDER BY sorting";
         $php5DB_en->setQuery( $query );
         if ($rows = $php5DB_en->loadAssocList())
         {
	        foreach ($rows as $row)
			{
			 /* $s.= "<option value='".$row['message']. "*-*" . 
			                        $row['message2']. "*-*" .
									$row['message3']. "*-*" .
									$row['message4']. "*-*" .
									$row['message5']. "*-*" .
									$row['message6']. "*-*" . "'>".$row['message']."</option>"; */
				
				$row['message1'] = str_replace("&#39;","&#92;&#39;",$row['message']);
				$row['message2'] = str_replace("&#39;","&#92;&#39;",$row['message2']);
				$row['message3'] = str_replace("&#39;","&#92;&#39;",$row['message3']);
				$row['message4'] = str_replace("&#39;","&#92;&#39;",$row['message4']);
				$row['message5'] = str_replace("&#39;","&#92;&#39;",$row['message5']);
				$row['message6'] = str_replace("&#39;","&#92;&#39;",$row['message6']); 
				$s .= '<div style="cursor:pointer; color:#B8076C; margin-bottom:5px;" onclick="set_message(\''.$row['message1']. "*-*" . 
			                        $row['message2']. "*-*" .
									$row['message3']. "*-*" .
									$row['message4']. "*-*" .
									$row['message5']. "*-*" .
									$row['message6']. "*-*" .'\')"><strong>'.$i.'.</strong> '.$row['message']."</div>";
				$i++;
			}
		 }
		// $s .= "</select>";

 echo $s; 

return;
?>
