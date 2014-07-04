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

			 

echo "<div >";			 
//////////////////////////////
switch($task)
{

	case 'edit':
	    $product_id = $_REQUEST['id'];  
        $product = new Product();
		$product->loadData(add_prefix('product'), 'product_id', $id); 
?>

<script language=javascript>
function calculate_discount()
{
	ori_price = <?php echo $product->price; ?>;
	document.getElementById('price').value =  ori_price  - ( ori_price * document.getElementById('percent').value / 100); 
}
</script>
<?php
        $discount = new Discount();
		$discount->loadData(add_prefix('discount'), 'product_id', $id); 
//		$discount->showvariables();
        $smarty->assign('original_price',  $product->price);	
		if ($discount->from_date == '')
		$discount->from_date = date('Y-m-d');

		if ($discount->to_date == '')
		$discount->to_date = date('Y-m-d');

		
        $smarty->assign('obj',  $discount);	
        $smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=product&m=assign_discount&t=insite&task=edit2&id=' . $id, 0));	
        $smarty->assign('action_remove', sefBuild($php5WebPath, 'index.php?o=product&m=assign_discount&t=insite&task=remove&id=' . $id, 0));			
	    $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'assign_discount.tpl');
        $smarty->display($tpl); 
		
        break;
			
	   			
	case 'edit2':	

        $query = "SELECT COUNT(*) FROM #__discount WHERE  product_id=$id";
//		echo $query;
        $php5DB_en->setQuery( $query );
		$php5DB_en->query();
        $discount = new Discount();
         
//		 echo "*********" . $php5DB_en->loadResult();
//		$discount->showVariables();		
		if ($php5DB_en->loadResult() == 0)
		{
			$discount->bindRequest();
		    $discount->product_id= $id;		
			$discount->addDB(add_prefix('discount'));
		}
		else
		{
			 $discount->loadData(add_prefix('discount'),  'product_id', $id);
			 $discount->bindRequest();			 
			 $discount->updateDB(add_prefix('discount'), 'discount_id', $discount->discount_id);			
		}
		
       $smarty->assign('message', $discount->mysql_error_message() );					
       $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'after_assign.tpl');
       $smarty->assign('return_url',sefBuild($php5WebPath, 'index.php?o=product&m=assign_discount&t=insite&task=edit&id='.$id,0) );		   
       $smarty->display($tpl);  
	   			
		break;	
		
		case 'remove' :
        $query = "DELETE FROM #__discount WHERE  product_id=$id";

        $php5DB_en->setQuery( $query );
		$php5DB_en->query();
		
       $tpl = sprintf($php5TemplateAdminFile, $language, 'product', 'after_assign.tpl');
       $smarty->assign('return_url',sefBuild($php5WebPath, 'index.php?o=product&m=assign_discount&t=insite&task=edit&id='.$id,0) );		   
       $smarty->display($tpl);  
	   		
		break;
															
	default:	 	
	    
	      

}
echo "</div>";






return;

