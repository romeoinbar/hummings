<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class Mydate{	


        function next_day($date)
		{
             return   $next_day = date("Y-m-d", strtotime($date)+86400);	
		}
        function previous_day($date)
		{
             return   $next_day = date("Y-m-d", strtotime($date)-86400);	
		}

}

?>