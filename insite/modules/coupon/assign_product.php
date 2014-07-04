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
	   $n = $_POST['total_record']; 	
		$coupon = new Coupon();
		$coupon->loadData(add_prefix('coupon'), 'coupon_id', $id); 		
		$coupon->apply_to_product = ""; 
		$list="";      
		$j=0;  
        for ($i=0; $i<= $n; $i++){
			if (isset($_POST['yn_' . $i])){						  
			   $coupon->apply_to_product .= "," .  $_POST['yn_' . $i];  	
			   $j++;	 			   	
			}			   
		}	
		
		if ($list!="")
			$coupon->apply_to_category = ''; 			
		$coupon->updateDB(add_prefix('coupon'), 'coupon_id', $id); 			
			
       $smarty->assign('message', $coupon->mysql_error_message() );					
       $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'after_assign.tpl');
      $smarty->assign('return_url',sefBuild($php5WebPath, 'index.php?o=coupon&m=assign_product&t=insite&task=show&id='.$id,0) );		   
       $smarty->display($tpl);  
	   			
		break;
	   
	case 'edit':														
	default:	 	
	    
	        show_product($id);	

}
echo "</div>";






function show_product($id)
{
  global $php5DB_en;

  global $php5WebPath;

   $action = sefBuild($php5WebPath, 'index.php?o=coupon&m=assign_product&t=insite&task=edit2&id=' . $id, 0);	
  
  $query = "SELECT * FROM #__coupon WHERE  coupon_id=$id ";
  $php5DB_en->setQuery( $query );
  if ($rows = $php5DB_en->loadAssocList())
  {
	 foreach ($rows as $row)
	 {
		  $apply_to_product = $row['apply_to_product'];
	 }
  }
  $tmp = explode(',', $apply_to_product);	

	      	
  $query = "SELECT * FROM #__product WHERE  publish=1 ORDER BY sku";
  $php5DB_en->setQuery( $query );
  $i=0;
  $prefix = "";
 
  if ($rows = $php5DB_en->loadAssocList())
  {
	  echo '<input type="checkbox" id="selectall" '.((count($tmp)-1==count($rows))?"checked='checked'":'').'/> <span style="color:#bf0874;"><strong>CHECK ALL</strong></span>';
 	 echo "<form action='$action' method='post'>
	 	<input type='hidden' name='total_record' value='".count($rows)."'> ";		 
	 foreach ($rows as $row) { 
       $checked=(check_inside($apply_to_product, $row['product_id']))? "checked='checked'" : "";	
	   echo "<input type=checkbox name='yn_".$i."' class='case' value='".$row['product_id']."' $checked> ". $row['sku'] . " - " . $row['name'] . "<br/>";
	   $i++;	       
	 }
  }
  echo "Total record : ".count($rows)." <div style='clear:both;'></div>
  

  <input type=submit value='Assign Product' class=assign_button>
  
        </form> 
  ";
echo '
	<script src="'.$php5WebPath.'/includes/js/jquery/jquery.js" type="text/javascript"></script>
	<SCRIPT language="javascript">

    // add multiple select / deselect functionality
    $("#selectall").click(function () {
          $(\'.case\').attr(\'checked\', this.checked);
    });
 
    // if all checkbox are selected, check the selectall checkbox
    // and viceversa
    $(".case").click(function(){
 
        if($(".case").length == $(".case:checked").length) {
            $("#selectall").attr("checked", "checked");
        } else {
            $("#selectall").removeAttr("checked");
        }
 
    });

</SCRIPT>
';   

}




return;

