<?php
/***************************************************************************
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
 
$popup=1;
$smarty->assign('header', ''  );	
$smarty->assign('footer', ''  );	

include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/images.class.php"; 
include_once "$php5RootPath/includes/select_input.php"; 
$smarty->assign('header', ''  );	
$smarty->assign('footer', ''  );	
defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();
//get               
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);

$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'product'));
$smarty->assign('base_url', $php5WebPath  );	

			 

echo "<div style='padding:15px; width:550px; border:0px solid #ccc;  font-family:arial; font-size:12px;'>";				 
//////////////////////////////
switch($task)
{

	case 'edit2':
	    $total_record = $_POST['total_record'];  
        $query = "DELETE FROM #__product_related_link WHERE  product_id=$id";;
        $php5DB_en->setQuery( $query );
		$php5DB_en->query();
		$product_related_link = new Product_related_link();   
		          
            for ($i=1; $i<= $total_record; $i++)
			{
			  if (isset($_POST['yn_' . $i]))
			  {

			   $product_related_link->related_id = $_POST['id_' . $i];
			   $product_related_link->product_id = $id;
			   $product_related_link->sorting = 50;			      
			   $product_related_link->addDB($php5Config['table_prefix'].'product_related_link');			   			   
			  }
			   
			}

       $smarty->assign('message', $product_related_link->mysql_error_message() );					
       $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'after_assign.tpl');
      $smarty->assign('return_url',sefBuild($php5WebPath, 'index.php?o=product&m=related_product&t=insite&task=show&id='.$id,0) );		   
       $smarty->display($tpl);  
	   	
		break;


	
	      
	    break; 
	case 'edit':															
	default:	 	
	    
	        show_products($id );	

}
echo "</div>";







function show_products($id)
{
  global $php5DB_en;
  global $php5WebPath;

   $action = sefBuild($php5WebPath, 'index.php?o=product&m=related_product&t=insite&task=edit2&id=' . $id, 0);	

  echo "<form action='$action' method=post>";	
	      	
  $query = "SELECT * FROM #__product WHERE publish=1 AND product_id<>$id ";
  $php5DB_en->setQuery( $query );
  $i=0;
  $prefix = "";
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
  	   $i++;
        $query = "SELECT COUNT(*) FROM #__product_related_link WHERE  product_id=$id AND related_id = " . $row['product_id'] . ";";
        $php5DB_en->setQuery( $query );
		$result = $php5DB_en->loadResult();
  	    $checked = ( $result)? "checked" : "";
		
	   echo "<input type=hidden name='id_$i' value=".$row['product_id']." >
	         <input type=checkbox name='yn_$i' value=1 $checked> ". $row['name'] . " (" . $row['sku'].  ") <br/>";	       
	 }
  }
  echo "total record : $i <div style='clear:both;'></div>
   <input type=hidden name='total_record' value=$i> 
  <input type=submit value='assign related product' class=assign_button>
        </form> 
  ";
	   

}


return;

