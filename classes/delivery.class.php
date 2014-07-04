<?php
include_once "$php5RootPath/classes/mydate.class.php" ;
include_once "$php5RootPath/classes/tables.class.php" ;
global $php5DB;
global $php5DB_en;
date_default_timezone_set("Asia/Hong_Kong");

function get_delivery_sql($date)
{
global $php5DB;
global $php5DB_en;

$ori_date = $date;
if ($date)
$date = convert_date1($date);
else
{
	$d = new Delivery();
	$rt = $d->get_earliest_delivery();
	
$date = convert_date1( $rt['date'] );
}

///////////////////// assigned to date
  $query = "SELECT *  FROM #__delivery_time WHERE assign_to_days='$date' AND publish=1";
  $php5DB_en->setQuery( $query );		  
  $objects = $php5DB_en->loadObjectList();
  foreach ($objects as $object)
 {
	 return "SELECT *  FROM #__delivery_time WHERE assign_to_days='$date' AND publish=1 ORDER BY from_time";
 }


 $date = $ori_date;
if ($date)
{
$time = strtotime($date);
$date = date('l', $time);
}
else
$date = date('l');


  $query = "SELECT *  FROM #__delivery_time WHERE assign_to_days='$date'  AND publish=1";
  $php5DB_en->setQuery( $query );		  
  $objects = $php5DB_en->loadObjectList();
  foreach ($objects as $object)
 {
	 return "SELECT *  FROM #__delivery_time WHERE assign_to_days='$date' AND publish=1 ORDER BY from_time";
 }
 
 
	 return "SELECT *  FROM #__delivery_time WHERE assign_to_days='' AND publish=1 ORDER BY from_time"; 
  
}


class Delivery{			
		
        function is_standard_off_day($date)
		{
		  return false;
		  $day = 	date( "D",strtotime($date))  ;
		 
			 if (      $day  == "Sun"    )  
			 return true;
			 else
			 return false;
		}
		
		function is_off_day($date)
		{
			global $php5DB_en;
               $query = "SELECT COUNT(*)   FROM #__off_delivery WHERE date='$date'; ";
               $php5DB_en->setQuery( $query );	  
               $result = $php5DB_en->loadResult();
			   
			   
			   if ($result)
			    return false;
			   else
			     return true;	
		}
		
		
		function is_valid_date($date)
		{
           global $php5Session;			
		   $lead_time = $php5Session->getVar('item_lead_time');		   		   
		   
//		   echo "*******" . $lead_time;
		   $now = time();
		   $cur_date = strtotime($date);

		   $compare_date = $now + ($lead_time*3600);
		   
		   $cdate = date("Y-m-d", $compare_date);
//		   		   echo "<br/> cur : *******" . $cur_date;
//			   	   echo "<br/> com : *******" . $compare_date;			   		   
		   if ($cdate <= $date)
		   {     
		     return true;
		   }
		   else
		     return false;
		
		
		}
		
        function is_valid_delivery_time($obj,$compare_date)
		{
			
             global $php5Session;
			
			 $compare_date .= " 0:00:00" ;
			 $date_diff = strtotime($compare_date) - strtotime(date("Y-m-d"));
			 
//			 echo "<br/>*".$date_diff . " - "  . $compare_date;
			 $lead_time = $obj->lead_time * 3600 ;			 
			 $l =   $php5Session->getVar('item_lead_time');	
//			 echo "*" . $l;
			 if ($l > $obj->lead_time)
			 $l = $obj->lead_time * 3600 ;	
			 			 
             $accepted_earliest_time = strtotime($obj->from_time) - $lead_time + $date_diff;
//			     echo "<br/>-- *" . date("Y-m-d G:i:s",time()) . "*" . date("Y-m-d G:i:s",$accepted_earliest_time) ;
//echo date("Y-m-d G:i:s",time()) . "**" . date("Y-m-d G:i:s",(time()+3600));

			 if (time() <  $accepted_earliest_time)			 
			  { 
			    return true;  
			  
			  }
			 else 
			 {
//			     echo "<br/>xx *" . date("h:i:s",time()) . "*" . date("h:i:s",$accepted_earliest_time) ;			 
			     return false;			 
			 }
		}
		
		function time_format($time)
		{
			return date("h.ma", strtotime($time));
		}
				
        function get_earliest_delivery()
		{
           global $php5DB_en;
		   global $php5Session;
		   			
		   $start_date = date("Y-m-d");
		   $current_date = $start_date;
		   $mydate = new Mydate();
		   $result = '';		   
           $result_time = '';
		   $return_value = "";
		 
		 $rt = array(
         "date" => "",
         "time" => "",
         "time2" => "",	
		 "delivery_time_id" => ""	 
         );
  

  
		 $try = 0; 
		 WHILE ( $rt['date']  == '' AND $try<10 ) 
         {		
		  $try++;  
		   while ($rt['date'] =='')
		   {			   
		      $query = "SELECT date  FROM #__off_delivery WHERE date='$current_date'; ";
              $php5DB_en->setQuery( $query );	  
              $result = $php5DB_en->loadResult();
			  
			  if ($this->is_standard_off_day($current_date))
			    $current_date = $mydate->next_day($current_date);
			  if (!($this->is_valid_date($current_date)))
			  {
			    $current_date = $mydate->next_day($current_date);				

			  }
		      else if ($result != '')
			    $current_date = $mydate->next_day($current_date);
			  else
			     $rt['date'] = $current_date  ;   
		   }
		   
         $ed = $php5Session->getVar('item_earliest_date');
		 if ($ed > $rt['date'])
		 {
		   $rt['date'] = $current_date = $ed  ;   
		 }
		   
		      $query =  get_delivery_sql($current_date);
              $php5DB_en->setQuery( $query );		  
              $objects = $php5DB_en->loadObjectList();
			  foreach ($objects as $object)
			  {
				if ($object->SAP_code != '08')  
				if ($rt['time'] == '')  
				{
			      if ($this->is_valid_delivery_time($object,$current_date))
				  $rt['time']= $object->caption;
				  $rt['time2']= $object->from_time;	
				  $rt['delivery_time_id']= $object->delivery_time_id;					  
				  			  
				}
			  }
		  
			  while ($rt['time'] == '')
              { 


			    $rt['date'] =  '';
				$current_date = $mydate->next_day($current_date); 
				
				

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		   		   while ($rt['date'] =='')
		  		    {			   
		      		   $query = "SELECT date  FROM #__off_delivery WHERE date='$current_date'; ";
              		   $php5DB_en->setQuery( $query );	  
              		   $result = $php5DB_en->loadResult();
			  
			  		   if ($this->is_standard_off_day($current_date))
					       $current_date = $mydate->next_day($current_date);
			           if (!$this->is_valid_date($current_date))
			               $current_date = $mydate->next_day($current_date);						   
		  		       else if ($result != '')
				   	    $current_date = $mydate->next_day($current_date);
				   	  else
					        $rt['date'] = $current_date  ;   
				      }
		   

		   
		   		      $query = get_delivery_sql($current_date);
         		      $php5DB_en->setQuery( $query );		  
        		      $objects = $php5DB_en->loadObjectList();
				   	  
					  foreach ($objects as $object)
				   	  {
				      if ($object->SAP_code != '08')  						  
					   	if ($rt['time'] == '')  
					   	{
					         if ($this->is_valid_delivery_time($object,$current_date))
							 {
					   	       $rt['time']= $object->caption;
							   $rt['time2']= $object->from_time;		
				               $rt['delivery_time_id']= $object->delivery_time_id;		
							 }
					   	}
				   	  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////		  
			  }
		 }
		 
			  $return_value.= $result_time;			 		   	  
			   return $rt;	   
		}
		

        function get_earliest_delivery_date()
		{
           global $php5DB_en;			
		   $start_date = date("Y-m-d");
		   $current_date = $start_date;
		   $mydate = new Mydate();
		   $result = '';		   
           $result_time = '';
		   $return_value = "";
		   
		 $try = 0; 
		 WHILE ($result_time == '' AND $try<10 ) 
         {		
		  $try++;  
		   while ($return_value=='')
		   {			   
		      $query = "SELECT date  FROM #__off_delivery WHERE date='$current_date'; ";
              $php5DB_en->setQuery( $query );	  
              $result = $php5DB_en->loadResult();
			  
			  if ($this->is_standard_off_day($current_date))
			    $current_date = $mydate->next_day($current_date);
		      else if ($result != '')
			    $current_date = $mydate->next_day($current_date);
			  else
			     $return_value = $current_date  ;   
		   }
		   	   
		      $query = "SELECT *  FROM #__delivery_time WHERE delivery_time_id <> 8 ORDER BY from_time; ";
              $php5DB_en->setQuery( $query );		  
              $objects = $php5DB_en->loadObjectList();
			  foreach ($objects as $object)
			  {
				if ($result_time == '')  
			      if ($this->is_valid_delivery_time($object,$current_date))
				  $result_time= $this->time_format($object->from_time) . "-" . $this->time_format($object->to_time) . "";
			  }		  
			  if ($result_time == '')
              { 
			    $return_value = $mydate->next_day($current_date);  
			    $return_value='';
			  }
		 }	 		 		   	  
			   return $return_value;	   

		}		
		
		

		
		
		function get_earliest_delivery_time()
		{
           global $php5DB_en;			
		   $start_date = date("Y-m-d");
		   $current_date = $start_date;
		   $mydate = new Mydate();
		   $result = '';		   
           $result_time = '';
		   $return_value = "";
		   
		 $try = 0; 
		 WHILE ($result_time == '' AND $try<10 ) 
         {		
		  $try++;  
		   while ($return_value=='')
		   {			   
		      $query = "SELECT date  FROM #__off_delivery WHERE date='$current_date'; ";
              $php5DB_en->setQuery( $query );	  
              $result = $php5DB_en->loadResult();
			  
			  if ($this->is_standard_off_day($current_date))
			    $current_date = $mydate->next_day($current_date);
		      else if ($result != '')
			    $current_date = $mydate->next_day($current_date);
			  else
			     $return_value = $current_date . "(". date( "D",strtotime($current_date)) .") " ;   
		   }
		   
		      $query = "SELECT *  FROM #__delivery_time WHERE delivery_time_id <> 8 ORDER BY from_time; ";
              $php5DB_en->setQuery( $query );		  
              $objects = $php5DB_en->loadObjectList();
			  foreach ($objects as $object)
			  {
				if ($result_time == '')  
			      if ($this->is_valid_delivery_time($object,$current_date))
				  $result_time= $object->caption ;
			  }
			  
			  if ($result_time == '')
              { 
			    $current_date = $mydate->next_day($current_date);  
			    $return_value='';
			  }
		 }
		 
			  $return_value = $result_time;			 		   	  
			   return $return_value;	   


		}
		
			
		
		
}

function dispplay_time($time)
{
	return date('g a', strtotime($time));
}
?>