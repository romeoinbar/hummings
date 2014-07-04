<?php
/***************************************************************************
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
 

include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/images.class.php"; 
include_once "$php5RootPath/includes/select_input.php"; 

$popup=1;

defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();
//get               
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
$smarty->assign('header', ''  );	
$smarty->assign('footer', ''  );	
if(!$currPage) {
	$currPage = 1;
}

if ($task == 'list_by_category' )
 if (!empty($_POST['parent_id']))
$php5Session->setVar('selected_category', $_POST['parent_id']);


$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'product'));
$smarty->assign('base_url', $php5WebPath  );	

			 

echo "<div style='padding:15px; width:500px; border:0px solid #ccc;  font-family:arial; font-size:12px;'>";			 
//////////////////////////////
switch($task)
{

	case 'edit2':
	    $total_record = $_POST['total_record'];  
		$coupon = new Coupon();
		$coupon->loadData(add_prefix('coupon'), 'coupon_id', $id); 
		$coupon->apply_to_category="";  
		          
            for ($i=1; $i<= $total_record; $i++)
			{

			  if (isset($_POST['yn_' . $i]))
			  {
	
			   $category_id = $_POST['id_' . $i];
			   if (		$coupon->apply_to_category!=""  )
			    $coupon->apply_to_category .= "," .  $category_id;  
			   else
			    $coupon->apply_to_category = $category_id;  
				   	
			  }
			   
			}
		$coupon->apply_to_product = '';  		
		$coupon->updateDB(add_prefix('coupon'), 'coupon_id', $id); 			
			
       $smarty->assign('message', $coupon->mysql_error_message() );					
       $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'after_assign.tpl');
      $smarty->assign('return_url',sefBuild($php5WebPath, 'index.php?o=coupon&m=assign_category&t=insite&task=show&id='.$id,0) );		   
       $smarty->display($tpl);  
	   			
		break;


	
	      
	    break; 
	case 'edit':															
	default:	 	
	    
	        show_category($id);	

}
echo "</div>";






function show_category($id)
{
  global $php5DB_en;

  global $php5WebPath;

   $action = sefBuild($php5WebPath, 'index.php?o=coupon&m=assign_category&t=insite&task=edit2&id=' . $id, 0);	

  echo "
  <div onClick=checkall() style='cursor:pointer; padding:5px 15px 5px 15px; border:1px solid #ccc; width:100px;'><b>check all</b></div>
  <form action='$action' method=post>";	

  $apply_to_category = "";
  $query = "SELECT * FROM #__coupon WHERE  coupon_id=$id ";
  $php5DB_en->setQuery( $query );
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 {
		  $apply_to_category .= $row['apply_to_category'];
	 }
  }
  


	      	
  $query = "SELECT * FROM #__product_category WHERE  parent_id=0 AND publish=1 ORDER BY sorting";
  $php5DB_en->setQuery( $query );
  $i=0;
  $prefix = "";
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
  	   $i++;

       $checked=(check_inside($apply_to_category, $row['product_category_id']))? "checked" : "";
	
	   echo "<input type=hidden name='id_$i' value=".$row['product_category_id']." >
	         <input type=checkbox name='yn_$i' id='yn_$i'  value=1 $checked> ". $row['code'] . "<b>" . $row['name'] . "</b><br/>";
			 
	   $i =  show_sub_category($row['product_category_id'], $apply_to_category, $i, '--');		 
	       
	 }
  }
  echo "total record : $i <div style='clear:both;'></div>
   <input type=hidden name='total_record' value=$i> 

  <input type=submit value='Assign Category' class=assign_button>
        </form> 
		
		<script language=javascript>
		function checkall()
		{
             for (i = 1; i <= $i ; i++)
			{
			  o = document.getElementById('yn_'+i).checked = 'checked';	
			}
		}
		</script>
  ";
	   

}

function show_sub_category($id, $apply_to_category, $i, $pre)
{
  global $php5DB_en;
  global $php5WebPath;




	      	
  $query = "SELECT * FROM #__product_category WHERE  parent_id=$id AND publish=1 ORDER BY sorting";
  $php5DB_en->setQuery( $query );
  $prefix = "";
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
  	   $i++;
       $checked=(check_inside($apply_to_category, $row['product_category_id']))? "checked" : "";
	
	   echo "<input type=hidden name='id_$i' value=".$row['product_category_id']." >
	         <input type=checkbox name='yn_$i' id='yn_$i' value=1 $checked> " . $pre .  $row['name'] . "(".  $row['code'] . ")" . "<br/>"; 
		$i = show_sub_category($row['product_category_id'], $apply_to_category, $i, "-- " . $pre);	  
	 }
  }
    
  return $i;
}


return;

