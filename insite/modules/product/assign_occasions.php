<?php
/***************************************************************************
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
 $smarty->assign('header', ''  );	
$smarty->assign('footer', ''  );	

include_once "$php5RootAdminPath/modules/empty_header.php"; 
include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/images.class.php"; 
include_once "$php5RootPath/includes/select_input.php"; 

defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();
//get               
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);


$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'product'));
$smarty->assign('base_url', $php5WebPath  );	


echo "<div class=content>";			 
//////////////////////////////
switch($task)
{

	case 'edit2':
	    $total_record = $_POST['total_record'];  
        $query = "DELETE FROM #__product_occasions_link WHERE  product_id=$id";
        $php5DB_en->setQuery( $query );
		$php5DB_en->query();
             
            for ($i=1; $i<= $total_record; $i++)
			{
			  if (isset($_POST['yn_' . $i]))
			  {
			   $product_occasions_link = new Product_occasions_link();
			   $product_occasions_link->occasions_id = $_POST['id_' . $i];
			   $product_occasions_link->product_id = $id;
			   $product_occasions_link->sorting = 50;			   			   
			   $product_occasions_link->addDB($php5Config['table_prefix'].'product_occasions_link');			   			   
			  }
			   
			}
       $smarty->assign('message', $product_occasions_link->mysql_error_message() );					
       $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'after_assign.tpl');
       $smarty->display($tpl);  
	   			
		break;


	
	      
	    break; 
	case 'edit':															
	default:	 	
	    
	        show_categories($id );	

}
echo "</div>";






function show_sub_categories($occasions_id,$i,$prefix, $id)
{
  global $php5DB_en;
  $query = "SELECT * FROM #__occasions WHERE  parent_id=$occasions_id ORDER BY sorting";
  $php5DB_en->setQuery( $query );

  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
  	   $i++;	

   
        $query = "SELECT COUNT(*) FROM #__product_occasions_link WHERE  product_id=$id AND occasions_id = " . $row['occasions_id'] . ";";
		
        $php5DB_en->setQuery( $query );
  	    $checked = ($php5DB_en->loadResult())? "checked" : "";
		   
	   echo $prefix . "<input type=hidden name='id_$i' value=".$row['occasions_id']." ><input type=checkbox name='yn_$i' value=1 $checked> ". $row['name'] . "<br/>";	 
	 $i = show_sub_categories($row['occasions_id'],$i, ' - '. $prefix, $id);	 
	 }
	 return $i;  
  }
  else
  {
	 return $i;  
  }
  
}

function show_categories($id)
{
  global $php5DB_en;

  global $php5WebPath;

   $action = sefBuild($php5WebPath, 'index.php?o=product&m=assign_occasions&t=insite&task=edit2&id=' . $id, 0);	

  echo "<form action='$action' method=post>";	
	      	
  $query = "SELECT * FROM #__occasions WHERE  parent_id=0 ORDER BY sorting";
  $php5DB_en->setQuery( $query );
  $i=0;
  $prefix = "";
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
  	   $i++;


        $query = "SELECT COUNT(*) FROM #__product_occasions_link WHERE  product_id=$id AND occasions_id = " . $row['occasions_id'] . ";";
        $php5DB_en->setQuery( $query );
		$result = $php5DB_en->loadResult();
  	    $checked = ( $result)? "checked" : "";
		
	   echo "<input type=hidden name='id_$i' value=".$row['occasions_id']." >
	         <input type=checkbox name='yn_$i' value=1 $checked> ". $row['name'] . "<br/>";
	       
	   
       	 $i = show_sub_categories($row['occasions_id'],$i, ' - '.$prefix, $id);
	 }
  }
  echo "total record : $i <div style='clear:both;'></div>
   <input type=hidden name='total_record' value=$i> 
  <input type=submit value='assign occasions' class=assign_button>
        </form> 
  ";
	   

}


return;

