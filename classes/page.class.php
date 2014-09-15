<?php

class Page
{
  var $total_item = 0;
  var $max_per_page = 50;
  var $total_page;
  var $cur_page = 1;
  var $select = "";
  

    	
     function Page($query)
     {
		 global $php5DB_en;
		 global $php5Session;
		 global $page_session_name;
		 if (isset($_POST[$page_session_name]))
		 {
		   $php5Session->setVar($page_session_name, $_POST[$page_session_name]  );
		   $this->cur_page =  $_POST[$page_session_name];
		 }
		 else
		 $this->cur_page =  1;		 
         $php5DB_en->setQuery( $query );  
         $this->total_item = $php5DB_en->loadResult();
     } 	
	 
	 function showpage($url)
	 {
		 global $php5Session;
         global $page_session_name;		 
		 $max_per_page =  $this->max_per_page;
	     $c_page = $php5Session->getVar($page_session_name);	
		 if ($c_page== null) $c_page = 1;	 
		 
		 if ($c_page == 'all')
		 {
		 $from =  1;
		 $to = $this->total_item ;			 
		 }
		 else
		 {
		 $from = ($c_page * $max_per_page) - $max_per_page + 1;
		 $to = $c_page *  $max_per_page;		
		 }
		 
		 if ($to > $this->total_item ) $to = $this->total_item;  
		 
		 if ($to == 0) $from =0;
		 $s = "<div style='padding:3px; float:right; padding-right:20px; font-size:12px;'>
		   <table style='font-size:12px;'><tr><td>
		    Items $from - $to of ".$this->total_item ." &nbsp;&nbsp;   Page :"; 
		 $this->total_page =  ceil($this->total_item /  $this->max_per_page );
		 $tr = 1;
		 for ($i=1; $i<=$this->total_page; $i++ )
		 {
			 $tr = 0;
			if ($i>10 and $i % 35 ==0) {
				$tr = 1;
				 $s .= "</tr><tr>";
			}
			if ($c_page == $i)
		      $s .= "<td><div style='padding:3px; float:right;'><b><font color=#a90160 >$i</font></b></div></td> ";			
			else 
		      $s .= "<td><form style='padding:0px; margin:0px;' action='' method=post id=p$i> <div onClick=document.getElementById('p$i').submit(); style='padding:3px;cursor:pointer; float:right;'>$i</div> <input type=hidden name=$page_session_name value=$i></form></td>";
		 
		 }
		if (!$tr) {
			$s .= "</tr>";
		}
			if ($c_page == 'all')
		      $s .= "<td><div style='padding:3px; float:right;'><b><font color=#a90160 >View all</font></b></div></td> ";			
			else 		 
		      $s .= "<td><form style='padding:0px; margin:0px;' action='' method=post id=p$i> <div onClick=document.getElementById('p$i').submit(); style='padding:3px;cursor:pointer; float:right;'>View all</div> <input type=hidden name=$page_session_name value='all'></form></td>";
		 
		 		 
		 $s .= "<td>". $this->select ."</td>";		 
		 $s .= "</tr></table></div>
		 <div style='clear:both;'></div>";
		 return $s;
	 }

	 function show_limit()
	 {
		 global $php5Session;
         global $page_session_name;		
		 
		  
		 
		$c_page = $php5Session->getVar($page_session_name);
		
		if ($c_page == 'all')
		 {
		   return   "  ";				 
		 }
		 
		 
		 
		if ($c_page > 0)
		{} 
		else 
		{$c_page=1;}
	

		return "LIMIT ".($c_page -1) * $this->max_per_page . " , ". $this->max_per_page ." ";	
			
	 }
	 	 
	 function updatepage()
	 {
		 global $php5Session;
		 global $page_session_name;
		if (isset($_POST[$page_session_name]))
		{
			 $php5Session->setVar($page_session_name, $_POST[$page_session_name]);
		}
	 }
	 	 
}


?>