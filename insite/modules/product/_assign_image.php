<?php
/***************************************************************************
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
 

$smarty->assign('header', ''  );	
$smarty->assign('footer', ''  );	

$popup=1;

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



	
	      

 	case 'list':	
	
	  $query = "SELECT * FROM #__addon_image WHERE  product_id='$id' ";
      $php5DB_en->setQuery( $query );
	       echo "<a href=". sefBuild( $php5WebPath ,'index.php?o=product&m=assign_image&task=add&t=insite&id='.$id,0) .">[ add image ]</a>";	  
      echo "<table>";   
      if ($rows = $php5DB_en->loadAssocList())
      {
	    foreach ($rows as $row)
	    {
			$delete_url = sefBuild( $php5WebPath ,'index.php?o=product&m=assign_image&task=delete&t=insite&id='.$id ,0);
			echo "<tr>
			        <td><img src='". $php5WebPath ."/". $row['image']."' width=50></td>
					<td> <form action=$delete_url method=post><input type=hidden name=addon_image_id value='".$row['addon_image_id']."'><input type=submit value='Delete'></form></a> </td>
			     </tr>";
		 
	    }
	 
      }
	  echo "</table>";
	
	
	break;	
	
	case 'add' :
           $url_add_image = sefBuild( $php5WebPath ,'index.php?o=product&m=assign_image&task=add2&t=insite&id='.$id,0);
	       echo "
		   <form action='$url_add_image '  method=post enctype='multipart/form-data' >
		     image : <input type='file' name='image' >  <input type=submit value='upload'>
		   </form>
		   ";
	     break;

	case 'add2':
             $addon_image = new Addon_image();		
			 $addon_image->product_id = $id; 
			 $addon_image->addDB( add_prefix('addon_image'));	

             
			 $fid=mysql_insert_id(); 
  			 if ($_FILES['image']['name'])
			 {            
			   $obj = $_FILES['image']; 
               $destination= rename_addon_image($obj, $fid) ;				 
               upload($obj, $destination );
			   $addon_image->image = rename_addon_image_url($obj, $fid) ;
			   $addon_image->addon_image_id = $fid ;			 
			   $addon_image->updateDB(add_prefix("addon_image"),"addon_image_id", $fid );				 
			 }
             $smarty->assign('message', $addon_image->mysql_error_message() );				 

      $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'after_assign.tpl');
      $smarty->assign('return_url',sefBuild($php5WebPath, 'index.php?o=product&m=assign_image&t=insite&task=list&id='.$id,0) );		   
      $smarty->display($tpl);  	
	   
		break;
		
	case 'delete':
	         $addon_image = new Addon_image();
             $addon_image->loadData(add_prefix('addon_image'), 'addon_image_id' ,$_POST['addon_image_id'] );	
//			 $addon_image->showvariables();	
              
			 if  ($addon_image->image)
             delete_image($addon_image->image);		
             $addon_image->deleteDB(add_prefix('addon_image'), 'addon_image_id' ,$_POST['addon_image_id']);		
      $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'after_assign.tpl');
      $smarty->assign('return_url',sefBuild($php5WebPath, 'index.php?o=product&m=assign_image&t=insite&task=list&id='.$id,0) );		   
      $smarty->display($tpl); 			 	   
		break;		
		
		
													
	default:	 	
	    
	    break;

}
echo "</div>";







function show_addon_products($id)
{
  global $php5DB_en;
  global $php5WebPath;

   $action = sefBuild($php5WebPath, 'index.php?o=product&m=assign_addon&t=insite&task=edit2&id=' . $id, 0);	

  echo "<form action='$action' method=post>";	
	      	
  $query = "SELECT * FROM #__product WHERE  product_type=3 ";
  $php5DB_en->setQuery( $query );
  $i=0;
  $prefix = "";
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 { 
  	   $i++;
        $query = "SELECT COUNT(*) FROM #__product_addon_link WHERE  product_id=$id AND addon_id = " . $row['product_id'] . ";";
        $php5DB_en->setQuery( $query );
		$result = $php5DB_en->loadResult();
  	    $checked = ( $result)? "checked" : "";
		
	   echo "<input type=hidden name='id_$i' value=".$row['product_id']." >
	         <input type=checkbox name='yn_$i' value=1 $checked> ". $row['name'] . "<br/>";	       
	 }
  }
  echo "total record : $i <div style='clear:both;'></div>
   <input type=hidden name='total_record' value=$i> 
  <input type=submit value='assign addon product' class=assign_button>
        </form> 
  ";
	   

}


return;

