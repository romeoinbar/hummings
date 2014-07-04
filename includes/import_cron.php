<?php

/*
 Quick_CSV_import class provides interface to a quick CSV file to MySQL database import. Much quicker (10-100 times) that line by line SQL INSERTs.
 version: 1.5
 author: Skakunov Alexander <i1t2b3@gmail.com>
 date: 23.8.2006
 description:
   1. Before importing, you MUST: 
     - establish connection with MySQL database and select database;
     - define CSV filename to import from.
   2. You CAN define several additional import attributes:
     - use CSV header or not: if yes, first line of the file will be recognized as CSV header, and all database columns will be called so, and this header line won't be imported in table content. If not, the table columns will be calles as "column1", "column2", etc
     - separate char: character to separate fields, comma [,] is default
     - enclose char: character to enclose those values that contain separate char in text, quote ["] is default
     - escape char: character to escape special symbols like enclose char, back slash [\] is default
     - encoding: string value which represents MySQL encoding table to parse files with. It's strongly recomended to use known values, not manual typing! Use get_encodings() method (or "SHOW CHARACTER SET" query) to ask the server for the encoding tables list
   3. You can read "error" property to get the text of the error after import. If import has been finished successfully, this property is empty.
*/

if (!function_exists('str_getcsv')) {
	function str_getcsv($input, $delimiter=',', $enclosure='"', $escape=null, $eol=null) {
		$temp=fopen("php://memory", "rw");
		fwrite($temp, $input);
		fseek($temp, 0);
		$r = array();
		while (($data = fgetcsv($temp, 4096, $delimiter, $enclosure)) !== false) {
			$r[] = $data;
		}
		fclose($temp);
		return $r;
	}
}

class Quick_CSV_import
{
  var $table_name; //where to import to
  var $file_name;  //where to import from
  var $use_csv_header; //use first line of file OR generated columns names
  var $field_separate_char; //character to separate fields
  var $field_enclose_char; //character to enclose fields, which contain separator char into content
  var $field_escape_char;  //char to escape special symbols
  var $error; //error message
  var $arr_csv_columns; //array of columns
  var $table_exists; //flag: does table for import exist
  var $encoding; //encoding table, used to parse the incoming file. Added in 1.5 version
  
  function Quick_CSV_import($file_name="")
  {
    $this->file_name = $file_name;
		$this->source = '';
    $this->arr_csv_columns = array();
    $this->use_csv_header = true;
    $this->field_separate_char = ",";
    $this->field_enclose_char  = "\"";
    $this->field_escape_char   = "\\";
    $this->table_exists = false;
  }
  
  function import()
  {
		$this->table_name = "#__dealers";
    /*if($this->table_name=="")
      $this->table_name = "temp_".date("d_m_Y_H_i_s");
    */
    //$this->table_exists = false;
    //$this->create_import_table();
		$this->table_exists = true;
    //$test = $this->analyse_file($this->file_name);print_r($test);die;
		
    if(empty($this->arr_csv_columns))
      $this->get_csv_header_fields();
		
    return true;
    /* change start. Added in 1.5 version */
    if("" != $this->encoding && "default" != $this->encoding)
      $this->set_encoding();
    /* change end */
    
    if($this->table_exists)
    {
      $sql = "LOAD DATA INFILE '".@mysql_escape_string($this->file_name).
             "' INTO TABLE `".$this->table_name.
             "` FIELDS TERMINATED BY '".@mysql_escape_string($this->field_separate_char).
             "' OPTIONALLY ENCLOSED BY '".@mysql_escape_string($this->field_enclose_char).
             "' ESCAPED BY '".@mysql_escape_string($this->field_escape_char).
             "' ".
             ($this->use_csv_header ? " IGNORE 1 LINES " : "")
             ."(`".implode("`,`", $this->arr_csv_columns)."`)";
      $res = @mysql_query($sql);
      $this->error = mysql_error();
    }
  }
	
	function analyse_file($file, $capture_limit_in_kb = 10) {
			// capture starting memory usage
			$output['peak_mem']['start']    = memory_get_peak_usage(true);
	
			// log the limit how much of the file was sampled (in Kb)
			$output['read_kb']                 = $capture_limit_in_kb;
		 
			// read in file
			$fh = fopen($file, 'r');
					$contents = fread($fh, ($capture_limit_in_kb * 1024)); // in KB
			fclose($fh);

			// specify allowed field delimiters
			$delimiters = array(
					'comma'     => ',',
					'semicolon' => ';',
					'tab'         => "\t",
					'pipe'         => '|',
					'colon'     => ':'
			);
		 
			// specify allowed line endings
			$line_endings = array(
					'rn'         => "\r\n",
					'n'         => "\n",
					'r'         => "\r",
					'nr'         => "\n\r"
			);
		 
			// loop and count each line ending instance
			foreach ($line_endings as $key => $value) {
					$line_result[$key] = substr_count($contents, $value);
			}

			// sort by largest array value
			asort($line_result);
		 
			// log to output array
			$output['line_ending']['results']     = $line_result;
			$output['line_ending']['count']     = end($line_result);
			$output['line_ending']['key']         = key($line_result);
			$output['line_ending']['value']     = $line_endings[$output['line_ending']['key']];
			$lines = explode($output['line_ending']['value'], $contents);
			//$this->arr_csv_columns = $lines;
			// remove last line of array, as this maybe incomplete?
			$this->arr_csv_columns = $lines;
			array_pop($lines);
			// create a string from the legal lines
			$complete_lines = implode(' ', $lines);
		 
			// log statistics to output array
			$output['lines']['count']     = count($lines);
			$output['lines']['length']     = strlen($complete_lines);
		 
			// loop and count each delimiter instance
			foreach ($delimiters as $delimiter_key => $delimiter) {
					$delimiter_result[$delimiter_key] = substr_count($complete_lines, $delimiter);
			}
		 
			// sort by largest array value
			asort($delimiter_result);
		 
			// log statistics to output array with largest counts as the value
			$output['delimiter']['results']     = $delimiter_result;
			$output['delimiter']['count']         = end($delimiter_result);
			$output['delimiter']['key']         = key($delimiter_result);
			$output['delimiter']['value']         = $delimiters[$output['delimiter']['key']];
		 
			// capture ending memory usage
			$output['peak_mem']['end'] = memory_get_peak_usage(true);
			return $output;
	}  
  //returns array of CSV file columns
  function get_csv_header_fields()
  {
		$this->analyse_file($this->file_name, intval(filesize($this->file_name) / 1024) + 1024);
		
		if(count($this->arr_csv_columns) > 0) {
			$arr_temp = $this->arr_csv_columns;
			$this->arr_csv_columns = NULL;

			foreach($arr_temp as $key => $value) {
				$st = str_replace(",,", " , , ", $arr_temp[$key]);
				//$st = $arr_temp[$key];
				$arr = str_getcsv($st);
				$this->arr_csv_columns[] = $arr;
			}
		} else {
			$this->arr_csv_columns = '';
		}
		return true;
		
    $this->arr_csv_columns = array();
    $fpointer = fopen($this->file_name, "r");
    if ($fpointer)
    {
			$arr = array();
			while (($data = fgetcsv($fpointer, 10*1024, $this->field_separate_char, $this->field_enclose_char)) !== false) { 
				$arr[] = $data;
			}
			$this->arr_csv_columns = $arr;
      unset($arr);
      fclose($fpointer);
    }
    else
      $this->error = "file cannot be opened: ".(""==$this->file_name ? "[empty]" : @mysql_escape_string($this->file_name));
    return $this->arr_csv_columns;
  }
  
  function create_import_table()
  {$this->table_exists = true;return;
    $sql = "CREATE TABLE IF NOT EXISTS ".$this->table_name." (";
    
    if(empty($this->arr_csv_columns))
      $this->get_csv_header_fields();
    
    if(!empty($this->arr_csv_columns))
    {
      $arr = array();
      for($i=0; $i<sizeof($this->arr_csv_columns); $i++)
          $arr[] = "`".$this->arr_csv_columns[$i]."` TEXT";
      $sql .= implode(",", $arr);
      $sql .= ")";
      $res = @mysql_query($sql);
      $this->error = mysql_error();
      $this->table_exists = ""==mysql_error();
    }
  }
  
  /* change start. Added in 1.5 version */
  //returns recordset with all encoding tables names, supported by your database
  function get_encodings()
  {
    $rez = array();
    $sql = "SHOW CHARACTER SET";
    $res = @mysql_query($sql);
    if(mysql_num_rows($res) > 0)
    {
      while ($row = mysql_fetch_assoc ($res))
      {
        $rez[$row["Charset"]] = ("" != $row["Description"] ? $row["Description"] : $row["Charset"]); //some MySQL databases return empty Description field
      }
    }
    return $rez;
  }
  
  //defines the encoding of the server to parse to file
  function set_encoding($encoding="")
  {
    if("" == $encoding)
      $encoding = $this->encoding;
    $sql = "SET SESSION character_set_database = " . $encoding; //'character_set_database' MySQL server variable is [also] to parse file with rigth encoding
    $res = @mysql_query($sql);
    return mysql_error();
  }
  /* change end */

}

?>