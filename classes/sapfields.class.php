<?php

class SAP_order
{
 var $sales_doc_type;
 var $sales_order_number;
 var $sales_organization = 2000;
 var $distribution_channel = 13;  
 var $division;
 var $account_group = "Z002";
 var $sold_to_party_no;  
 var $sold_to_party_name;
 var $block ;
 var $unit;  
 var $building;
 var $address1;
 var $address2;  
 var $address3;
 var $address4;
 var $posstcode;  
 var $city;
 var $country;
 var $telephone1;  
 var $customer_group;

 
 function get_doc_type($product_type)
 {
   return false;	 
 }
 
 function init()
 {
 global $php5Session;
 $this->$sales_doc_type = $this->get_doc_type();
/** 
 $this->sales_order_number;
 $this->sales_organization = 2000;
 $this->distribution_channel = 13;  
 $this->division;
 $this->account_group = "Z002";
 $this->sold_to_party_no;  
 $this->sold_to_party_name;
 $this->block ;
 $this->unit;  
 $this->building;
 $this->address1;
 $this->address2;  
 $this->address3;
 $this->address4;
 $this->posstcode;  
 $this->city;
 $this->country;
 $this->telephone1;  
 $this->customer_group;
 $this->xxx;
 $this->xxx;  
 $this->xxx;
 $this->xxx;
 $this->xxx; 
 $this->xxx;
 $this->xxx;
 $this->xxx;  
 $this->xxx;
 $this->xxx;
 $this->xxx;  
 $this->xxx;
 $this->xxx;
 $this->xxx;  
 $this->xxx;
 $this->xxx;
 $this->xxx; 
 $this->xxx;
 $this->xxx;
 $this->xxx;  
 $this->xxx;
 $this->xxx;
 $this->xxx;  
 $this->xxx;
 $this->xxx;
 $this->xxx;  
 $this->xxx;
 $this->xxx;
 $this->xxx; 
 $this->xxx;
 $this->xxx;
 $this->xxx;  
 $this->xxx;
 $this->xxx;
 $this->xxx;  
 $this->xxx;
 $this->xxx;
 $this->xxx;  
 $this->xxx;
 $this->xxx;
 $this->xxx;   
 **/	 
 }
}


///////////////////////////////
function get_sales_doc_type($type)
{
  switch($type)
  {
    case '1' : return 'ZI01';
	          break;
    case '2' : return 'ZI02';
	          break;  
  }

}

function sales_order_number($project_id)
{
$c = $project_id[0];	
 switch($c)
 {
	  case 'F' :
                  $n = new Running_number();
				  $n->loadData(add_prefix('running_number') , 'id' , 1  );
				  $count = $n->f_g =  $n->f_g+1;
				  $n->updateDB(add_prefix('running_number') , 'id' , 1  );
				  return ( 4101000000  + $count );        
	              break;
	  case 'D' :
                  $n = new Running_number();
				  $n->loadData(add_prefix('running_number') , 'id' , 1  );
				  $count = $n->dv =  $n->dv+1;
				  $n->updateDB(add_prefix('running_number') , 'id' , 1  );
				  return ( 4202000000  + $count );        
	              break;
	  case 'H' :
                  $n = new Running_number();
				  $n->loadData(add_prefix('running_number') , 'id' , 1  );
				  $count = $n->hr =  $n->hr+1;
				  $n->updateDB(add_prefix('running_number') , 'id' , 1  );
				  return ( 4203000000  + $count );        
	              break;				  

	  case 'X' :
                  $n = new Running_number();
				  $n->loadData(add_prefix('running_number') , 'id' , 1  );
				  $count = $n->xm =  $n->xm+1;
				  $n->updateDB(add_prefix('running_number') , 'id' , 1  );
				  return ( 4204000000  + $count );        
	              break;				  	  
 	  case 'C' :
                  $n = new Running_number();
				  $n->loadData(add_prefix('running_number') , 'id' , 1  );
				  $count = $n->xn =  $n->xn+1;
				  $n->updateDB(add_prefix('running_number') , 'id' , 1  );
				  return ( 4206000000  + $count );        
	              break;	
	  default :
                  $n = new Running_number();
				  $n->loadData(add_prefix('running_number') , 'id' , 1  );
				  $count = $n->o =  $n->o+1;
				  $n->updateDB(add_prefix('running_number') , 'id' , 1  );
				  return ( $count );     	  
	              break;			  
 }
   
   
   return 0;
	 
}


function sp_number()
{

                  $n = new Running_number();
				  $n->loadData(add_prefix('running_number') , 'id' , 1  );
				  $sp = $n->sp =  $n->sp+1;
				  $n->updateDB(add_prefix('running_number') , 'id' , 1  );
				  $n = 100000 + $sp;
				  return ( 'SPDC'  . $n );        

	 
}



function get_division($type)
{
  switch($type)
  {
    case '1' : return '01';
	          break;
    case '2' : return '02';
	          break;  
  }

}


?>