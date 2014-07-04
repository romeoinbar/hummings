<?php
/***************************************************************************
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "delivery")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	
$main_content = ""; 
include_once "$php5RootAdminPath/modules/header.php"; 
include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/includes/select_input.php"; 

defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();
//get
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);


if(!$currPage) {
	$currPage = 1;
}

   if ( $php5Session->getVar('date')  )
   $selected = $php5Session->getVar('date') ;
   else
   $selected = $php5Session->getVar('days') ;  
   $smarty->assign('selected', $selected);	
    

$smarty->assign('list_url', sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite', 0));	
$smarty->assign('base_url', $php5WebPath  );	
$smarty->assign('add_url', sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=add', 0));	
$smarty->assign('calendar_url', sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=off_day', 0));	
$smarty->assign('postcode_url', sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=postcode', 0));	
$smarty->assign('postcode_add_url', sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=postcode_add', 0));	
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'delivery'));
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'delivery', 'toolbar.tpl');
             $main_content .=  $smarty->fetch($tpl);  
			 
$main_content .=   "<div class=content>";			 
//////////////////////////////
switch($task)
{
	
	case 'set_on': $off_delivery = new Off_delivery();
	               $off_delivery->loadData(add_prefix('off_delivery'), 'date', $id );
				   $action = sefBuild($php5WebPath, "index.php?o=delivery&m=main&t=insite&task=set_on2&id=$id", 0);
				   $main_content .=   "<a href='javascript:history.back(-1);'><div class=close>x</div></a><div style='clear:both;'></div>";
				   $main_content .=   "<div class=label>date</div><div class=input>".$off_delivery->date."</div>
				   <div class=label>remarks</div><div class=input>".$off_delivery->remarks."</div>
				   ";
		           $main_content .=   "<div style'clear:both; margin-top:15px;'></div><br/><a href='$action'>[ REMOVE ]</a> &nbsp; &nbsp;"  ;
    break; 
	case 'set_on2':
	               $off_delivery = new Off_delivery();
	               $off_delivery->deleteDB(add_prefix('off_delivery'), 'date', $id );
				   $action = sefBuild($php5WebPath, "index.php?o=delivery&m=main&t=insite&task=off_day&id=$id", 0);
		           $main_content .=   "<a href='$action'>[ DONE ]</a> &nbsp; &nbsp;"  ;
    break; 
	case 'set_off': 
				   $action = sefBuild($php5WebPath, "index.php?o=delivery&m=main&t=insite&task=set_off2&id=$id", 0);
				   $main_content .=   "<a href='javascript:history.back(-1);'><div class=close>x</div></a><div style='clear:both;'></div>";
				   $main_content .=   "
				   <form action='$action' method=post>
				   <input type='hidden' name='date' value='$id'>
				   <div class='label'>remarks : </div>
				   <div class='input'><textarea name=remarks cols=50></textarea></div><br/>
				   <input type=submit value=' set as off delivery day '>
				   </form>
				   ";
				   
				   
    break; 
	case 'set_off2':
	               $off_delivery = new Off_delivery();
	               $off_delivery->bindRequest();
//				   $off_delivery->showvariables();				   
	               $off_delivery->addDB(add_prefix('off_delivery'));
				   $action = sefBuild($php5WebPath, "index.php?o=delivery&m=main&t=insite&task=off_day&id=$id", 0);
		           $main_content .=   "<a href='$action'>[ DONE ]</a> &nbsp; &nbsp;"  ;
    break; 	
	
	
    case 'off_day' :

 if (!empty($_POST['set_global']))
 {
  $php5Session->setVar('year', $_POST['year'] );
  $php5Session->setVar('month', $_POST['month']);  
 
 }
 	  $action = sefBuild($php5WebPath, "index.php?o=delivery&m=main&t=insite&task=off_day", 0);
	  	
	 $main_content .=   "
  <form action='$action' method=post>
  <input type='hidden' name='set_global' value=1>
	 month : <select name=month>";
	 
	 for ($i=1; $i<13; $i++)
	 { 
	   $selected = ($i ==  $php5Session->getVar('month') ) ? 'selected' : '';
	   $main_content .=   "<option value=$i $selected >$i</option>  ";
	 }
	$main_content .=   "				
	         </select>
	 year : <select name=year>";
	 for ($i=0;$i<10;$i++)
	 {
	     $selected = ((date("Y")+$i) ==   $php5Session->getVar('year')) ? 'selected' : '';		 
        $main_content .=   "<option value=". (date("Y")+$i)." $selected > ". (date("Y")+$i)." </option>";	 
		
	 }
	 $main_content .=   "</select>
	 <input type=submit value=' show '>
	 </form>
	 ";

 if (!empty($_POST['set_global']))
    $main_content .=   draw_calendar($php5Session->getVar('month'),$php5Session->getVar('year') );

   

	
	
	break;
	case 'add':
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=add2', 0));	
             $sap = gen_select(add_prefix('delivery_time_SAP') , 'id', 'SAP_code', 'id', 'code', '' );
             $smarty->assign('sap', $sap );				 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'delivery', 'create.tpl');
             $main_content .=  $smarty->fetch($tpl);  
		break;

	case 'add2':
             $delivery_time = new Delivery_time();
			 $delivery_time->bindRequest();
			 $delivery_time->addDB($php5Config['table_prefix'].'delivery_time');			 			 		
	         mainpage($delivery_time->mysql_error_message() );
		break;

	case 'edit':
	           
             $delivery_time = new Delivery_time();
			 $delivery_time->loadData( add_prefix("delivery_time"), "delivery_time_id", $_REQUEST['id']);
//			 $delivery_time->showvariables();	
             $sap = gen_select(add_prefix('delivery_time_SAP') , 'id', 'SAP_code', 'id', 'code', $delivery_time->SAP_code );
		 
             $smarty->assign('sap', $sap );				 		
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=edit2&id='.$delivery_time->delivery_time_id 	, 0));	  			 
             $smarty->assign('obj', $delivery_time );	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'delivery', 'edit.tpl');
             $main_content .=  $smarty->fetch($tpl);  

		break;

	case 'edit2':
	           
             $delivery_time = new Delivery_time();
			 $delivery_time->bindRequest();			 
			 $delivery_time->updateDBRQ(add_prefix("delivery_time"),"delivery_time_id", $_POST['delivery_time_id'] );				 
	         mainpage($delivery_time->mysql_error_message() );		  			 		

		break;

	case 'delete':
             $delivery_time = new Delivery_time();
			 $delivery_time->loadData( add_prefix("delivery_time"), "delivery_time_id", $_REQUEST['id']);
//			 $delivery_time->showvariables();		
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=delete2&id='.$delivery_time->delivery_time_id 	, 0));	 	  			 
             $smarty->assign('obj', $delivery_time );	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'delivery', 'delete.tpl');
             $main_content .=  $smarty->fetch($tpl);  

		break;
	case 'delete2':
	           
             $delivery_time = new Delivery_time();
			 $delivery_time->bindRequest();			 
			 $delivery_time->deleteDB(add_prefix("delivery_time"),"delivery_time_id", $_POST['delivery_time_id'] );				 
		  			 
	         mainpage($delivery_time->mysql_error_message() );

		break;
	case 'postcode': 
	         show_postcode();	
             break; 	

	case 'postcode_add':
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=postcode_add2', 0));	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'delivery', 'pcreate.tpl');
             $main_content .=  $smarty->fetch($tpl);  
		break;

	case 'postcode_add2':
             $delivery_postcode = new Delivery_postcode();
			 $delivery_postcode->bindRequest();
			 $delivery_postcode->addDB($php5Config['table_prefix'].'delivery_postcode');			 			 		
             $smarty->assign('list_url',sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=postcode', 0));	
	         mainpage($delivery_postcode->mysql_error_message() );
		break;


	case 'edit_postcode':
	           
             $delivery_postcode = new Delivery_postcode();
			 $delivery_postcode->loadData( add_prefix("delivery_postcode"), "delivery_postcode_id", $_REQUEST['id']);
//			 $delivery_postcode->showvariables();			
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=edit_postcode2&id='.$delivery_postcode->delivery_postcode_id 	, 0));	  			 
             $smarty->assign('obj', $delivery_postcode );	
  	 
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'delivery', 'pedit.tpl');
             $main_content .=  $smarty->fetch($tpl);  

		break;

	case 'edit_postcode2':
	           
             $delivery_postcode = new Delivery_postcode();
			 $delivery_postcode->bindRequest();			 
			 $delivery_postcode->updateDB(add_prefix("delivery_postcode"),"delivery_postcode_id", $_POST['delivery_postcode_id'] );		
             $smarty->assign('list_url',sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=postcode', 0));						 		 
	         mainpage($delivery_postcode->mysql_error_message() );		  			 		

		break;
		

	case 'delete_postcode':
             $delivery_postcode = new Delivery_postcode();
			 $delivery_postcode->loadData( add_prefix("delivery_postcode"), "delivery_postcode_id", $_REQUEST['id']);
//			 $delivery_postcode->showvariables();		
             $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=delete_postcode2&id='.$delivery_postcode->delivery_postcode_id 	, 0));	 	  			 
             $smarty->assign('obj', $delivery_postcode );	
	         $tpl = sprintf($php5TemplateAdminFile, $language, 'delivery', 'pdelete.tpl');
             $main_content .=  $smarty->fetch($tpl);  

		break;
	case 'delete_postcode2':
	           
             $delivery_postcode = new Delivery_postcode();
			 $delivery_postcode->bindRequest();			 
			 $delivery_postcode->deleteDB(add_prefix("delivery_postcode"),"delivery_postcode_id", $_POST['delivery_postcode_id'] );				 
             $smarty->assign('list_url',sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=postcode', 0));				  			 
	         mainpage($delivery_postcode->mysql_error_message() );

		break;
		
	case 'publish':
             $delivery_time = new Delivery_time();
			 $delivery_time->loadData( add_prefix("delivery_time"), "delivery_time_id", $_REQUEST['id']);
			 if ($delivery_time->publish == 1)		 		 
			 $delivery_time->publish = 0;
			 else
			 $delivery_time->publish = 1;	
			 $delivery_time->updateDB(add_prefix("delivery_time"),"delivery_time_id", $_REQUEST['id'] );					 		 
	show_date();	
		break;											 											
	default: 
	
	show_date();	
             break; 
}

$main_content .=   "</div>";

function mainpage($message)
{  
       global $main_content;	  
       global $php5TemplateAdminFile;
	   global $language;
	   global $smarty;
       $smarty->assign('message', $message );		   
       $tpl = sprintf($php5TemplateAdminFile, $language, 'delivery', 'after_query.tpl');
       $main_content .=  $smarty->fetch($tpl);  
}


function show_date()
{
  global $main_content;	
  global $php5DB_en;
  global $smarty;
  global $php5TemplateAdminFile;
  global $language;
  global $php5WebPath;
  global $php5Session;

    
   if (isset($_REQUEST['days']))	 
   {
    $php5Session->setVar('days',$_REQUEST['days'] );
    $php5Session->setVar('date', '') ;	
   }
   if (isset($_REQUEST['date']))	 
   {
    $php5Session->setVar('date',$_REQUEST['date'] );
    $php5Session->setVar('days', '') ;	
   }   
   $s =   gen_select(add_prefix('days'), 'sorting', 'days' , 'days', 'days', $php5Session->getVar('days') );
   $smarty->assign('s', $s );
   
   if ( $php5Session->getVar('date')  )
   $selected = $php5Session->getVar('date') ;
   else
   $selected = $php5Session->getVar('days') ;   
   	
   $smarty->assign('selected', $selected );    	
	
   $tpl = sprintf($php5TemplateAdminFile, $language, 'delivery', 'list_1.tpl');
   $main_content .=  $smarty->fetch($tpl);  
			       	
  $query = "SELECT * FROM #__delivery_time WHERE  assign_to_days='$selected' ORDER BY from_time";
  $php5DB_en->setQuery( $query );

  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
	   
       $smarty->assign('row', $row);
       $smarty->assign('edit_link', sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=edit&id='.$row['delivery_time_id'], 0));

       if ($row['publish'] == 1)
	   $publish = "published";
	   else
	   $publish = "unpublished";
	       
       $smarty->assign('publish_link', "<a href='" . sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=publish&id='.$row['delivery_time_id'], 0) . "'>$publish</a>");
	   	   
	   $promp = "";
	   if ($row['delivery_time_id'] == 8)
	   $promp = " onClick='return false;'; ";	
	   $smarty->assign('promp', $promp);
       $smarty->assign('delete_link', sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=delete&id='.$row['delivery_time_id'], 0));	
       $tpl = sprintf($php5TemplateAdminFile, $language, 'delivery', 'list_2.tpl');
       $main_content .=  $smarty->fetch($tpl);  	  
	 }
  }


	
   $tpl = sprintf($php5TemplateAdminFile, $language, 'delivery', 'list_3.tpl');
  $main_content .=  $smarty->fetch($tpl);  

return;

}



function draw_calendar($month,$year){
global $main_content;
  global $php5WebPath;
  global $php5DB_en;
   $t_month = ($month<10) ? '0'.$month: $month;
   $t_year = $year;
  /* draw table */
  $calendar = '<table cellpadding="0" cellspacing="0" class="calendar">';

  /* table headings */
  $headings = array('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');
  $calendar.= '<tr class="calendar-row"><td class="calendar-day-head">'.implode('</td><td class="calendar-day-head">',$headings).'</td></tr>';

  /* days and weeks vars now ... */
  $running_day = date('w',mktime(0,0,0,$month,1,$year));
  $days_in_month = date('t',mktime(0,0,0,$month,1,$year));
  $days_in_this_week = 1;
  $day_counter = 0;
  $dates_array = array();

  /* row for week one */
  $calendar.= '<tr class="calendar-row">';

  /* print "blank" days until the first of the current week */
  for($x = 0; $x < $running_day; $x++):
    $calendar.= '<td class="calendar-day-np">&nbsp;</td>';
    $days_in_this_week++;
  endfor;

  /* keep going with days.... */
  for($list_day = 1; $list_day <= $days_in_month; $list_day++):
    $t_day = ($list_day<10) ? '0'.$list_day: $list_day;
//	if($running_day != 0)
	{
     $query = "SELECT * FROM #__off_delivery WHERE  date='$t_year-$t_month-$t_day'";

     $php5DB_en->setQuery( $query );
     $php5DB_en->setQuery( $query );
	 $i=0;
        if ($rows = $php5DB_en->loadAssocList())
        { 
	       foreach ($rows as $row)
		   {
			   $i++;
		   }	   
		}
		
      if ( $i)
	  {
	  $action_on = sefBuild($php5WebPath, "index.php?o=delivery&m=main&t=insite&task=set_on&id=$t_year-$t_month-$t_day", 0);	  
      $calendar.= '<td class="calendar-red">';
      $calendar.= '<a href='. $action_on  .' ><div class="day-number">'.$list_day.'</div>';
      $calendar.= '<p style="height:40px;">'.$row['remarks'].'</p>';
      $calendar.= '</a></td>';			  
	  }
	  else
	  { 			
	   $action_off = sefBuild($php5WebPath, "index.php?o=delivery&m=main&t=insite&task=set_off&id=$t_year-$t_month-$t_day", 0);
       $calendar.= '<td class="calendar-day">';
       $calendar.= '<a href='. $action_off  .' >	  
	   <div class="day-number">'.$list_day.'</div>';
       $calendar.= str_repeat('<p>&nbsp;</p>',2);      
       $calendar.= '</a></td>';
	  }
	}
/**	
	else
	{
      $calendar.= '<td class="calendar-red">';
      $calendar.= ' <div class="day-number">'.$list_day.'</div>';
      $calendar.= str_repeat('<p>&nbsp;</p>',2);
      $calendar.= '</a></td>';		
	}
**/	
    if($running_day == 6):
      $calendar.= '</tr>';
      if(($day_counter+1) != $days_in_month):
        $calendar.= '<tr class="calendar-row">';
      endif;
      $running_day = -1;
      $days_in_this_week = 0;
    endif;
    $days_in_this_week++; $running_day++; $day_counter++;
  endfor;

  /* finish the rest of the days in the week */
  if($days_in_this_week < 8):
    for($x = 1; $x <= (8 - $days_in_this_week); $x++):
      $calendar.= '<td class="calendar-day-np">&nbsp;</td>';
    endfor;
  endif;

  /* final row */
  $calendar.= '</tr>';

  /* end the table */
  $calendar.= '</table>';
  
  /* all done, return result */
  return $calendar;
}



function show_postcode()
{
  global $main_content;	
  global $php5DB_en;
  global $smarty;
  global $php5TemplateAdminFile;
  global $language;
  global $php5WebPath;


   $tpl = sprintf($php5TemplateAdminFile, $language, 'delivery', 'plist_1.tpl');
   $main_content .=  $smarty->fetch($tpl);  
			       	
  $query = "SELECT * FROM #__delivery_postcode ORDER BY country,range_from";
  $php5DB_en->setQuery( $query );

  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
	   
       $smarty->assign('row', $row);
       $smarty->assign('edit_link', sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=edit_postcode&id='.$row['delivery_postcode_id'], 0));
       $smarty->assign('delete_link', sefBuild($php5WebPath, 'index.php?o=delivery&m=main&t=insite&task=delete_postcode&id='.$row['delivery_postcode_id'], 0));	
       $tpl = sprintf($php5TemplateAdminFile, $language, 'delivery', 'plist_2.tpl');
       $main_content .=  $smarty->fetch($tpl);  	  
	 }
  }


	
   $tpl = sprintf($php5TemplateAdminFile, $language, 'delivery', 'plist_3.tpl');
  $main_content .=  $smarty->fetch($tpl);  

return;

}


        $smarty->assign('main',$main_content);	