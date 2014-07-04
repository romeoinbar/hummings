<?php
/* $Id: export.php 10408 2007-05-21 17:13:49Z lem9 $ */
// vim: expandtab sw=4 ts=4 sts=4:

/**
 * Get the variables sent or posted to this script and a core script
 */
defined('PHP5_PHP') or die("Application is stopping!!!");
class CSVCreation
{
    var $db_server;
    var $db_name;
    var $db_user;
    var $db_pass;
    var $dbh;
    var $path = './temp/';

    function CSVCreation($path)
    {
				$this->path = $path;
        /*$this->db_server = 'localhost';
        $this->db_name   = 'test';
        $this->db_user   = 'root';
        $this->db_pass   = 'root';
        $this->connect();*/

    }

    function connect()
    {
         $this->dbh = @mysql_connect($this->db_server, $this->db_user, $this->db_pass);
         if (!$this->dbh)
         {
                printf("Error: Connection to MySQL server failed.<BR>\n");
                return;
         }
         if (!@mysql_select_db($this->db_name, $this->dbh))
         {
                printf("Error: Selection of MySQL database failed.");
                return;
         }
    }

    function query ($query)
    {
		if(!$this->dbh) die();
		$result = mysql_query($query, $this->dbh) or die("<br>".mysql_error());
        return $result;
    }

	function SelectAll($tablename,$record_start=0,$record_end=50000){

		$query = "select * from $tablename LIMIT $record_start,$record_end";
		$result = $this->query($query);
        return $result;

	}
	function createcsv($arrCSV, $name, $type=0){
		if(!(is_array($arrCSV) && count($arrCSV) > 1)) {
			return false;
		} 
		$csv_enclosed  = "\"";
		$csv_escaped   = "\\";
		$csv_separator   = ",";
		$string = '';
		@unlink($this->path.$name.".csv");
		foreach($arrCSV as $k => $v) {
			$arr_temp = array();
			foreach($arrCSV[$k] as $key => $value) {
				//$value = str_replace(',',' ',rtrim($value));
				$value = str_replace("\015\012",' ',$value);
				$value = str_replace('"','""', $value);
				$value = $csv_enclosed . $value . $csv_enclosed;
				$arr_temp[] = $value;
			}
			$string .= (implode(",", $arr_temp))."\015\012";	
		}
		if($type == 1) {
			//OUPUT HEADERS
			header("Pragma: public");
			header("Expires: 0");
			header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
			header("Cache-Control: private",false);
			header("Content-Type: text/csv");
			header("Content-Disposition: attachment; filename=\"$name.csv\";" );
			header("Content-Transfer-Encoding: binary");
			echo $string;
		} else {
			$fp = fopen($this->path.$name.".csv",'w');
			fwrite($fp,$string);
			fclose($fp);
			// Read and write for owner, read for everybody else
			@chmod($this->path.$name.".csv", 0755);
		}
		return true;		
	}

    /*function createcsv($tablename){

    	$rs  = $this->SelectAll($tablename);
        $rs1 = $this->SelectAll($tablename);
        $csv_enclosed  = "\"";
        $csv_escaped   = "\\";
        $csv_separator   = ",";      
        if($rs){
            $string = '';
            /// Get the field names
            $fields =  mysql_fetch_assoc($rs1);
            if(!is_array($fields))
              return;
            while(list($key,$val) =each($fields))
                $string .= $csv_enclosed . $key . $csv_enclosed .',';
            $string = substr($string,0,-1)."\015\012";
            /// Get the data
            while($row = mysql_fetch_assoc($rs)) {
                while(list($key,$val) =each($row)){
                  //$row[$key] = htmlentities($row[$key], ENT_COMPAT, "UTF-8");
                  $row[$key] = str_replace(',',' ',rtrim($row[$key]));
                  $row[$key] = str_replace("\015\012",' ',$row[$key]);
                  $row[$key] = str_replace('"','""', $row[$key]);
                  $row[$key] = $csv_enclosed . $row[$key] . $csv_enclosed;
                }
                $string .= (implode($row,","))."\015\012";
                
             }
            //echo $string;die;
            $fp = fopen($this->path.$tablename.".csv",'w');
            fwrite($fp,$string);
            fclose($fp);
        }

    }*/

    function createCSVforall(){

       $result = mysql_list_tables($this->db_name);
       while($row = mysql_fetch_array($result)){
           $this->createcsv($row[0]);
       }
    }

}