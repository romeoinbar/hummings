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

			 

echo "<div style='padding:15px; width:550px; border:0px solid #ccc;  font-family:arial; font-size:12px;'>";			 
//////////////////////////////
switch($task)
{

	case 'edit2':
	    $total_record = $_POST['total_record'];  
        $query = "DELETE FROM #__product_category_link WHERE  product_id=$id";
//		echo $query;
        $php5DB_en->setQuery( $query );
		$php5DB_en->query();
		$product_category_link = new Product_category_link();   
		          
            for ($i=1; $i<= $total_record; $i++)
			{
			  if (isset($_POST['yn_' . $i]))
			  {

			   $product_category_link->product_category_id = $_POST['id_' . $i];
			   $product_category_link->product_id = $id;
			   $product_category_link->sorting = 50;			   
//			   $product_category_link->showvariables();			   
			   $product_category_link->addDB($php5Config['table_prefix'].'product_category_link');			   			   
			  }
			   
			}
       $smarty->assign('message', $product_category_link->mysql_error_message() );					
       $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'after_assign.tpl');
      $smarty->assign('return_url',sefBuild($php5WebPath, 'index.php?o=product&m=assign_category&t=insite&task=show&id='.$id,0) );		   
       $smarty->display($tpl);  
	   			
		break;


	
	      
	    break; 
	case 'edit':															
	default:	 	
	    
	        show_categories($id );	

}
echo "</div>";






function show_sub_categories($product_category_id,$i,$prefix, $id)
{
  global $php5DB_en;
  $query = "SELECT * FROM #__product_category WHERE  parent_id=$product_category_id ORDER BY sorting";
  $php5DB_en->setQuery( $query );

  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
  	   $i++;	

   
        $query = "SELECT COUNT(*) FROM #__product_category_link WHERE  product_id=$id AND product_category_id = " . $row['product_category_id'] . ";";
		
        $php5DB_en->setQuery( $query );
  	    $checked = ($php5DB_en->loadResult())? "checked" : "";
		   
	   echo $prefix . "<input type=hidden name='id_$i' value=".$row['product_category_id']." ><input type=checkbox name='yn_$i' value=1 $checked> ". $row['name'] . "<br/>";	 
	 $i = show_sub_categories($row['product_category_id'],$i, ' - '. $prefix, $id);	 
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

   $action = sefBuild($php5WebPath, 'index.php?o=product&m=assign_category&t=insite&task=edit2&id=' . $id, 0);	

  echo "<form action='$action' method=post>";	
	      	
  $query = "SELECT * FROM #__product_category WHERE  parent_id=0 ORDER BY sorting";
  $php5DB_en->setQuery( $query );
  $i=0;
  $prefix = "";
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
  	   $i++;


        $query = "SELECT COUNT(*) FROM #__product_category_link WHERE  product_id=$id AND product_category_id = " . $row['product_category_id'] . ";";
        $php5DB_en->setQuery( $query );
		$result = $php5DB_en->loadResult();
  	    $checked = ( $result)? "checked" : "";
		
	   echo "<input type=hidden name='id_$i' value=".$row['product_category_id']." >
	         <input type=checkbox name='yn_$i' value=1 $checked> ". $row['name'] . "<br/>";
	       
	   
       	 $i = show_sub_categories($row['product_category_id'],$i, ' - '.$prefix, $id);
	 }
  }
  echo "total record : $i <div style='clear:both;'></div>
   <input type=hidden name='total_record' value=$i> 

  <input type=submit value='assign_category' class=assign_button>
  
        </form> 
  ";
	   

}


return;

