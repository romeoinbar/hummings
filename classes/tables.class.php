<?php
function connectdb1($dbname)
{
global  $php5Config ;

$ip = $php5Config['db_host'] ;
$username= $php5Config['db_user'];
$password = $php5Config['db_pass'];
$dblink = mysql_connect($ip, $username, $password) ;

if (!$dblink)
echo "!dblink";
if (!mysql_select_db($php5Config['db_name_en']) )
echo "Unable Select Databse";
return $dblink;
}



function query($querydb)
{
global $dblink;
$result = mysql_query($querydb, $dblink);
	return $result;
}

$dblink = connectdb1($php5Config['db_name_en']);

function escape_query($str) {
	
    $r= strtr($str, array(
	 "*****" => "",
        "\0" => "",
        "'"  => "&#39;",

        // more secure
//        "<"  => "&lt;",
//       ">"  => "&gt;",
    ));

       if (get_magic_quotes_gpc())
        {
            $r = stripslashes($r);
        }
		return  stripslashes($r);
		
}
function unescape_query($str) {

	
	$str = str_replace("&#39;", "'", $str );
	$str = str_replace("&#34;", "\"", $str );
	return $str;	
}

class Dba
{

    function mysql_error_message()
    {
			 global $dblink;
			 if (mysql_error($dblink)) 
			   return mysql_error($dblink);
			 else
			   return "success";  
    }
		
    function createVariable($table)
    {
		
      $result = mysql_query("SHOW COLUMNS FROM $table");
      if (!$result) 
	  {
           echo 'Could not run query: ' . mysql_error();
           exit;
       }
	   
     if (mysql_num_rows($result) > 0) 
	 {
        while ($row = mysql_fetch_assoc($result)) 
		{
		  $var = $row['Field'];
          $this->{$var} = "";
        }
      }
		

    }


    function book_to_session($table, $prefix)
    {
	  global $php5Session;
      $result = mysql_query("SHOW COLUMNS FROM $table");
      if (!$result) 
	  {
		   echo 'Could not run query: ' . mysql_error();
           exit;
       }
     if (mysql_num_rows($result) > 0) 
	 {
        while ($row = mysql_fetch_assoc($result)) 
		{
		  $var = $row['Field'];
          $php5Session->setVar($prefix . 'tbl_user' . "_" . $var, $this->{$var}); 
		  
        }
      }
    }
	
	
    function table_to_session($table, $prefix)
    {
	  global $php5Session;
      $result = mysql_query("SHOW COLUMNS FROM $table");
      if (!$result) 
	  {
		   echo 'Could not run query: ' . mysql_error();
           exit;
       }
     if (mysql_num_rows($result) > 0) 
	 {
        while ($row = mysql_fetch_assoc($result)) 
		{
		  $var = $row['Field'];
          $php5Session->setVar($prefix . $table. "_" . $var, $this->{$var}); 
		  
        }
      }
    }
	

    function session_to_session($table, $prefix)
    {
	  global $php5Session;
      $result = mysql_query("SHOW COLUMNS FROM $table");
      if (!$result) 
	  {
		   echo 'Could not run query: ' . mysql_error();
           exit;
       }
     if (mysql_num_rows($result) > 0) 
	 {
        while ($row = mysql_fetch_assoc($result)) 
		{
		  $var = $row['Field'];
          $php5Session->setVar($prefix . $table. "_" . $var, $php5Session->getVar($table."_".$var) ); 
		  
        }
      }
    }
			

    function post_to_session($table, $prefix)
    {
	  global $php5Session;
      $result = mysql_query("SHOW COLUMNS FROM $table");
      if (!$result) 
	  {
		   echo 'Could not run query: ' . mysql_error();
           exit;
       }
     if (mysql_num_rows($result) > 0) 
	 {
        while ($row = mysql_fetch_assoc($result)) 
		{
		  $var = $row['Field'];
		  if (  isset($_POST[$var])  )  
          $php5Session->setVar($prefix . $table. "_" . $var, $this->{$var}); 
		  
        }
      }
    }

    function load_from_session($table, $prefix)
    {
	  global $php5Session;
      $result = mysql_query("SHOW COLUMNS FROM $table");
      if (!$result) 
	  {
		   echo 'Could not run query: ' . mysql_error();
           exit;
       }
     if (mysql_num_rows($result) > 0) 
	 {
        while ($row = mysql_fetch_assoc($result)) 
		{
		  $var = $row['Field'];
          $this->{$var} = $php5Session->getVar( $prefix. $table."_" . $var);   
        }
      }
    }

    function bindRequest()
    {
       foreach (get_object_vars( $this ) as $k => $v)
       {		   
         if (  isset($_REQUEST[$k])  )
		 {
         $this->$k = escape_query($_REQUEST[$k]);
		 }
       }
    }

    function bindRow($row)
    {
       foreach (get_object_vars( $this ) as $k => $v)
       {
         $this->$k = $row[$k];
       }
    }
	
    function load($row)
    {
       foreach (get_object_vars( $this ) as $k => $v)
       {
//		 $v=mysql_real_escape_string($v);	

         if (is_string($row[$k]))	   
		 {
         $this->$k = stripslashes(unescape_query($row[$k]));

		 }
		 else
         $this->$k = $row[$k];		 
       }
    }

    function deleteDB($table, $keyname, $key)
    {
		
	global $dblink;	
       $sql = "DELETE FROM " . $table . "  WHERE $keyname ='$key' ";
//	   echo $sql;
      mysql_query($sql, $dblink);
    }
	
    function trace()
    {
       echo "<br/>trace post variables : <br/>";
       foreach (get_object_vars( $this ) as $k => $v)
       {
         if ($_REQUEST[$k])
         echo $k . " = " .  $_REQUEST[$k] . "<br />";
       }
    }

    function showVariables()
    {
      echo "<br/>class variables : <br/>";
       foreach (get_object_vars( $this ) as $k => $v)
       {
//         if ($i>0) $sql .= ", ";
         echo "$k = $v <br/>";
       }
    }


    function addDB($table)
    {
			   global $dblink;
       $sql = "INSERT INTO " . $table . " VALUES (";

       $i= 0;
       foreach (get_object_vars( $this ) as $k => $v)
       {
		 $v=escape_query($v);		   
         if ($i>0) $sql .= ", ";
         $sql .= "'$v'";
         $i++;
       }
       $sql .= ")";
       $result = mysql_query($sql, $dblink);
		if (!$result) {
			//die('Invalid query: ' . mysql_error($dblink));
		}

     }
	
    function updateID($v)
	{
		global $dblink;
		$this->$v = mysql_insert_id($dblink);

	}
    

    function updateDBRQ($table, $keyname, $key)
    {
	global $dblink;	
       $sql = "UPDATE " . $table . " SET ";
       $i= 0;
	   
       foreach (get_object_vars( $this ) as $k => $v)
       {
         if ( isset($_REQUEST[$k]) )
         {
		   $v=escape_query($_REQUEST[$k]);
           if ($i>0) $sql .= ", ";
           $sql .= "`$k`='$v'";
           $i++;
         }
       }
       $sql .= " WHERE $keyname ='$key' ";
	   //echo $sql;
      mysql_query($sql, $dblink);
    }


    function updateDB($table, $keyname, $key)
    {
	global $dblink;	
       $sql = "UPDATE " . $table . " SET ";
       $i= 0;
       foreach (get_object_vars( $this ) as $k => $v)
       {
	   
		   $v=escape_query($v);
           if ($i>0) $sql .= ", ";
           $sql .= "`$k`='$v'";
           $i++;

       }
       $sql .= " WHERE $keyname ='$key' ";
	   //echo $sql;	   die;
      $result = mysql_query($sql, $dblink);
		if (!$result) {
			//die('Invalid query: ' . mysql_error());
		}
	  
    }

     function loadData($table, $key, $value, $where=''){
         $query = "SELECT * FROM $table WHERE $key= '$value' $where";
         $result = mysql_query($query) or die (mysql_error());
         $row = mysql_fetch_array($result);
         $this->load($row);
     }


     function display()
	 {
       foreach (get_object_vars( $this ) as $k => $v)
       {
           echo "$k  =  $v <br/>";
       }
	 }
}

function add_prefix($table_name)
{
   global $php5Config;	 
   return 	$php5Config['table_prefix'] . $table_name;
}

class Delivery_time extends Dba
{
     function Delivery_time()
     {
        $this->createVariable(add_prefix("delivery_time"));
     }
	 
	 function get_delivery_fee($id)
	 {
		$this->loadData(add_prefix('delivery_time'), 'delivery_time_id', $id);
		if ($this->surcharge)
		  return  $this->surcharge;
		else
		  return 0;
	 }
}

class Delivery_postcode extends Dba
{
     function Delivery_postcode()
     {
        $this->createVariable(add_prefix("delivery_postcode"));
     }
}


class Category_type extends Dba
{
     function Category_type()
     {
        $this->createVariable(add_prefix("category_type"));
     }
}

class Product_category extends Dba
{
     function Product_category()
     {
        $this->createVariable(add_prefix("product_category"));
     }
	 function getname($id)
	 {
		 

     $pos = strpos($id, "_");

      if ($pos == false) 
	  {
		 
		$this->loadData(add_prefix('product_category'),'product_category_id', $id);
		return $this->name;  
      }
      else
	     return "$" . str_replace("_", "-",  $id);

	 }
	 function show_type($id)
	 {
		 $category_type = new Category_type();
		 $category_type->loadData(add_prefix('category_type'),'category_type_id',$id);
		 return $category_type->type;
	 }
}
class Occasions extends Dba
{
     function Occasions()
     {
        $this->createVariable(add_prefix("occasions"));
     }
}

class Banner extends Dba
{
     function Banner()
     {
        $this->createVariable(add_prefix("banner"));
     }
}

class Product_type extends Dba
{
     function Product_type()
     {
        $this->createVariable(add_prefix("product_type"));
     }
}

class Product extends Dba
{
	function show_description()
	{
		
	   $str = str_replace("
	   ", "<br/>",  $this->description ) ;
	   $str = str_replace("\r", "<br/>",  $this->description ) ;	   
	   return $str;
	   	
	}
	function show_short_description()
	{
		
	   $str = str_replace("
	   ", "<br/>",  $this->description_short ) ;
	   $str = str_replace("\r", "<br/>",  $this->description_short ) ;	   
	   return $str;
	   	
	}	
	function show_product_type($id)
	{
	  $product_type= new Product_type();
	  $product_type->loadData(add_prefix('product_type'), 'id', $id);
	  return $product_type->type;	
	}

	function show_categories($id)
	{
      global $php5DB_en;		
      $query = "SELECT * FROM #__product_category_link WHERE product_id=$id";
      $php5DB_en->setQuery( $query );
      $s = "";
      if ($rows = $php5DB_en->loadAssocList())
      {
 	     foreach ($rows as $row)
	     {
			 if ($s!= "")
			 $s .= "<br/>";
			 $product_category = new Product_category();
			 $product_category->loadData(add_prefix('product_category'), 'product_category_id', $row['product_category_id']);
			 
			 $s.= $product_category->name;
			 if ($product_category->category_type == 2)
			 $s.= "(" .$product_category->code . ")";			 
		 
	     }
      }
	  return $s;	
	}
	
	function show_availability()
	{
		
	   $stock = new Stock();
	   $stock->loadData(add_prefix('stock'), 'id', $this->availability);	
//	   if ($this->stock == 0)
	   return $stock->caption;

/**	   
	   else if ($this->available_date > date('Y-m-d'))
       return "<font size=+1><b>after " . date( "d M Y" , strtotime($this->available_date) ) . "</b></font>"  ; 
	   
	   else
	   return "available";
**/		   
	   	
	}
	
		
     function Product()
     {
        $this->createVariable(add_prefix("product"));
     }
	 
	 function get_occasions($product_id)
	 {
		 
		 global $php5DB_en;
		  return $this->occasions;
          			   
			
		  return "";
		  		  

	 }
	 
	 
	 function get_discount_price()
	 {
		 if ($this->discount_value AND ($this->discount_value!= '0.00'))
		 {
			 if ($this->discount_type == 1)
			 { return number_format(($this->price*((100-$this->discount_value)/100)),2); }
			 else if ($this->discount_type == 2)
		     { return $this->price - $this->discount_value; }		 
			 
		 }
		 else
		 return false;
		 
	 }

	 function get_discount_price2($d_value, $d_type )
	 {

		 if ($d_value AND ($d_value != '0.00'))
		 {
			 if ($d_type == 1)
			 { 		 return number_format(($this->price*((100-$d_value)/100)),2); }
			 else if ($d_type == 2)
		     { return $this->price - $d_value; }		 
			 
		 }
		 else
		 return false;
		 
	 }
	 
	 function get_gst_price()
	 {
		$config = new Configuration();
		$gst = $config->get_value('config_gst');
		$gst_rate = 1 + $gst/100;
			
        if ($dprice = $this->get_discount_price())
		  return number_format(($dprice*$gst_rate ),2);
		else
		  return number_format( ($this->price*$gst_rate ), 2 );
		

		 return $row['n'];   
	 }
	 
	 function gst($price)
	 {
		$config = new Configuration();
		$gst = $config->get_value('config_gst');
		$gst_rate =  $gst/100;
		  return number_format(($price*$gst_rate),2);
	 }
	 	 
	 function image($width,$height)
	 {
         include_once 'classes/images.class.php';
         return return_resized_image($width, $height, $this->image);	
 
	 }
	 
	 function price()
	 {
		 if ($this->get_discount_price())
           return "<span style='font-size:10px; text-decoration: line-through'><stroke>". price_tag($this->price). "</stroke></span> ".                    price_tag($this->get_discount_price());      		 
		 else
           return price_tag($this->price) ;      
	 }
	 	 
	 
	 function num_of_assigned_category()
	 {
	     global $php5Config;
         $query = "SELECT COUNT(*) as n FROM ".$php5Config['table_prefix']."product_category_link WHERE product_id= '".$this->product_id."' ";
         $rows = mysql_query($query) ;	
         $row =  mysql_fetch_array($rows, MYSQL_ASSOC);		 

		 return $row['n'];   
	 }
	 
	 
}



class Product_category_link extends Dba
{
     function Product_category_link()
     {
        $this->createVariable(add_prefix("product_category_link"));
     } 
}

class Product_occasions_link extends Dba
{
     function Product_occasions_link()
     {
        $this->createVariable(add_prefix("product_occasions_link"));
     } 
}

class Discount extends Dba
{
     function Discount()
     {
        $this->createVariable(add_prefix("discount"));
     } 
}

class Product_addon_link extends Dba
{
     function Product_addon_link()
     {
        $this->createVariable(add_prefix("product_addon_link"));
     } 
}
class Product_related_link extends Dba
{
     function Product_related_link()
     {
        $this->createVariable(add_prefix("product_related_link"));
     } 
}
class Product_collections_link extends Dba
{
     function Product_collections_link()
     {
        $this->createVariable(add_prefix("product_collections_link"));
     } 
}


class Off_delivery extends Dba
{
     function Off_delivery()
     {
        $this->createVariable(add_prefix("off_delivery"));
     } 	
}
class User extends Dba
{
     function User()
     {
        $this->createVariable(add_prefix("user"));
		$this->ssid= "IM6";
		$this->customer_group= "02";
		$this->tax_code= "1";			
		$this->payment_terms= "CC";				
		$this->customer_industry_type= "UNSP";		
		$this->gender= " ";	
		$this->newsletter_by_phone= "0";
     } 	


     function show_dob()
     {
        $month = new Month();
		$month->loadData(add_prefix('month'), 'month', $this->month);
		
		return $this->day . " " . $month->en;
     } 
	 
	 function default_value()
	 {
		$this->ssid= "IM6";
		$this->customer_group= "1";
		$this->tax_code= "1";			
		$this->payment_terms= "CC";				
		$this->customer_industry_type= "UNSP";
		$this->newsletter_by_phone= "0";					
	 }
	 
	 	 
	 function unpaid_order()
	 {
		global $php5Session;
		global $php5DB_en; 
        $query = "SELECT COUNT(*) as c FROM #__order WHERE user_id='".$php5Session->getVar('user_id')."'  AND payment_status=0  ";
        $php5DB_en->setQuery( $query );  
        $result = $php5DB_en->loadResult();

		return $result ;
	 }
	 
	 function have_order()
	 {
		global $php5Session;
		global $php5DB_en; 
        $query = "SELECT * FROM #__order WHERE user_id='".$php5Session->getVar('user_id')."'   ";
        $php5DB_en->setQuery( $query );  
        if ($orders = $php5DB_en->loadAssocList())
        {
		   return 1;	
	 	}
		else 
		   return 0;
	 }

	 function in_newsletter($email, $where='')
	 {
		 $n_user = new Newsletter_user();
		 $n_user->loadData(add_prefix('newsletter_user'), 'email', $email, $where);

		 //print_r($n_user);
		 if ( $n_user->id ) 
		   return $n_user->id;
		 else
 		   return 0;

	 }
	 

}
class  Newsletter_user extends Dba
{
     function Newsletter_user()
     {
        $this->createVariable(add_prefix("newsletter_user"));
     } 	
}

class Collections extends Dba
{
     function Collections()
     {
        $this->createVariable(add_prefix("collections"));
     } 	
}
class Address_book extends Dba
{
     function Address_book()
     {
        $this->createVariable(add_prefix("address_book"));
     } 	
}
class Delivery_status extends Dba
{
     function Delivery_status()
     {
        $this->createVariable(add_prefix("delivery_status"));
     } 	
}
class Payment_status extends Dba
{
     function Payment_status()
     {
        $this->createVariable(add_prefix("payment_status"));
     } 	
}
class Order extends Dba
{
     function Order()
     {
        $this->createVariable(add_prefix("order"));
     } 	
     function get_delivery_status($id)
	 {
		 $delivery_status = new Delivery_status();
		 $delivery_status->loadData(add_prefix('delivery_status'), 'delivery_status_id', $id);
		 return $delivery_status->caption;
		  
	 }
     function get_payment_status($id)
	 {
		 $payment_status = new Payment_status();
		 $payment_status->loadData(add_prefix('payment_status') , 'payment_status_id', $id);
		 return $payment_status->caption;
		  
	 }	 
}
class Order_delivery extends Dba
{
     function Order_delivery()
     {
        $this->createVariable(add_prefix("order_delivery"));
     } 	

}
class Order_payment extends Dba
{
     function Order_payment()
     {
        $this->createVariable(add_prefix("order_payment"));
     } 	
}
class Addon_image extends Dba
{
     function Addon_image()
	 {
        $this->createVariable(add_prefix("addon_image"));	 
	 }

}

class Order_addon extends Dba
{
     function Order_addon()
	 {
        $this->createVariable(add_prefix("order_addon"));	 
	 }
	 
}


class Order_item extends Dba
{
     function Order_item()
	 {
        $this->createVariable(add_prefix("order_item"));	 
	 }
	 
	 function get_discounted_price()
	 {
		$unit_price = $this->unit_price;
		$discount_type = $this->condtype2 	;
		$discount_value = $this->discount;				
        switch($discount_type)
        {
	     case 'ZD02':
  	          return $unit_price* (100 - $discount_value) / 100;
	          break;
	     case 'ZD03':
		      return $unit_price - ($discount_value) ;
	          break;			    
         }
        return $uit_price;		 
	 }
	 
	 function get_surcharge()
	 {
		 return $this->other_surcharge_amount;
		 
	 }
	 
}
class Coupon extends Dba
{
     function Coupon()
	 {
        $this->createVariable(add_prefix("coupon"));	 
	 }
	 
	 function show_type()
	 {
		 $discount_type = new Discount_type();
		 $discount_type->loadData(add_prefix('discount_type'), 'discount_type_id', $this->discount_type);
		 return  $discount_type->title;
	 }
	 function show_use()
	 {
		 if ($this->use == 0)
			 $s0 = "checked";
		 else   if ($this->use == 1)
			 $s1 = "selected";	
		 else
			 $s2 = "selected"; 
		 
		 $s = "<select name='use' id='use' onchange='chooseTimes()'>";
		 $s.= "<option value=0 $s0 >Multiple Times</option>";
		 $s.= "<option value=1 $s1 >One Time</option>";		
		 $s.= "<option value=2 $s2 >Other</option>";		 
		 $s.="</select>";
		 return  $s;
	 }	 
	 
	 function show_redeem_by()
	 {
		 $user = new User();
		 $user->loadData(add_prefix('user'), 'user_id', $this->redeem_by);
		 return  $user->name;
	 }	 
	 function show_redemption_date()
	 {
		 if ($this->redemption_date == '')
		 return "";
	 }	 

}
class Discount_type extends Dba
{
     function Discount_type()
	 {
        $this->createVariable(add_prefix("discount_type"));			 
	 }
}
class Stock extends Dba
{
     function Stock()
	 {
        $this->createVariable(add_prefix("stock"));			 
	 }
}

class Running_number extends Dba
{
     function Running_number()
	 {
        $this->createVariable(add_prefix("running_number"));			 
	 }
}
class Message extends Dba
{
     function Message()
	 {
        $this->createVariable(add_prefix("message"));			 
	 }
}
class Country extends Dba
{
     function Country()
	 {
        $this->createVariable(add_prefix("country"));			 
	 }
}
class Gender extends Dba
{
     function Gender()
	 {
        $this->createVariable(add_prefix("gender"));			 
	 }
}
class Photos extends Dba
{
     function Photos()
     {
        $this->createVariable(add_prefix("photos"));
     }
}

class Day extends Dba
{
     function Day()
     {
        $this->createVariable(add_prefix("day"));
     }
}

class Month extends Dba
{
     function Month()
     {
        $this->createVariable(add_prefix("month"));
     }
}

class Contentx extends Dba
{
     function Contentx()
     {
        $this->createVariable(add_prefix("content"));
     }
}

class configuration extends Dba
{
     function Configuration()
     {
        $this->createVariable(add_prefix("configuration"));
     }
	 
        function get_value($key_name)
		{
			  global $php5DB_en;
			  $query = "SELECT value_name  FROM #__configuration WHERE key_name='$key_name'; ";
              $php5DB_en->setQuery( $query );	  
              $result = $php5DB_en->loadResult();	
			  
			  return $result;
		}
			 
}



function price_tag($price)
{
	
	if ($price)
	{
     $price = str_replace(",", "", $price);
     return " S$ " . number_format($price,2);	
	}
}
function check_inside($array, $value)
{
	
	
  if ($array == '')
  return false;
    
  $ap = explode(',' , $array);	
  $max = count($ap);
  for ($i=0; $i<$max; $i++)
  {
	 if (  $ap[$i] == $value  )
	 return  1;  
  }
  return false;
}

	 function get_surcharge($delivery_time, $postcode)
	 {
		global $php5DB_en;
        $query = "SELECT * FROM #__delivery_postcode WHERE range_from <= $postcode  AND range_to >= $postcode  ";
        $php5DB_en->setQuery( $query	 );  
        if ($ps = $php5DB_en->loadAssocList())
        foreach ( $ps as $p)
        {		 
		  return $p['surcharge'];
		}
        
		$config = new Configuration();
		$standard_delivery_fee = $config->get_value('config_delivery_charge');
		
		return 	$standard_delivery_fee;
		
	 }
	 
	 function check_update_indicator($user_id)
	 {
		global $php5DB_en;
		global $php5Session; 
		global $php5Config;


         $query = "SELECT COUNT(*) as n FROM ".$php5Config['table_prefix']."order WHERE user_id= '$user_id' ";
         $rows = mysql_query($query) ;	
         $row =  mysql_fetch_array($rows, MYSQL_ASSOC);		 

         if ($row['n']>0)  
		 return 1;
		 else return 0;   
		 		
	
		
	 }
	 
function convert_date1($date)
{
$d = explode("-",$date);

return $d[2] . "/" . $d[1]. "/".$d[0];
}

function convert_date2($date)
{
$d = explode("/",$date);

return $d[2] . "-" . $d[1]. "-".$d[0];
}




function prepare_order($id, $tpl)
{
global $php5DB_en;
global $smarty;
global $php5Session;

      $query = "SELECT * FROM #__order_delivery WHERE order_id = '$id' ";
      $php5DB_en->setQuery( $query ); 

      $order = new Order();
	  $order_delivery= new Order_delivery();
      $product = new Product();
      $order_item = new Order_item();	  
      $order_addon = new Order_addon();	  

	    $order->loadData(add_prefix('order'), 'order_id', $id);
	    $smarty->assign('order' ,  $order  );	 		
		
	    $smarty->assign('order' ,  $order);	

      $d = 0;					  	   
      $os = $php5DB_en->loadAssocList();
	  foreach ( $os as $o)
	  {
	  
	    $d++;
	    $order_delivery->loadData(add_prefix('order_delivery'), 'order_delivery_id', $o['order_delivery_id']);	  
	    $order_deliveries[$d] =    new Order_delivery();
		$order_deliveries[$d]->loadData(add_prefix('order_delivery'), 'order_delivery_id', $o['order_delivery_id']);
		  		  		  			
          $query = "SELECT * FROM #__order_item WHERE delivery_id = '".$order_delivery->order_delivery_id."' ";
          $php5DB_en->setQuery( $query );  
          $itms = $php5DB_en->loadAssocList();
	  
	      $items = ""; 
	      $subtotal = 0;
		  $surcharge = 0;
		  $i = 0;
	      foreach ( $itms as $itm)
	      {
		      $i++;

			  $order_items[$d][$i] = new Order_item() ;
		      $product->loadData(add_prefix('product'), 'product_id', $itm['product_id']);
		      $order_item->loadData(add_prefix('order_item'), 'order_item_id', $itm['order_item_id']);	
 		      $order_items[$d][$i]->loadData(add_prefix('order_item'), 'order_item_id', $itm['order_item_id']);	
 		      $order_items[$d][$i]->name = $product->name;
			  $product->image = "http://120.50.45.210/" . $product->image;			  
 		      $order_items[$d][$i]->image = $product->image;
			  $order_items[$d][$i]->unit_price = ($order_item->discount!='0.00')?$product->price - ($product->price*$order_item->discount/100):$product->price;
			  
			    		  		  
			  $order_items[$d][$i]->total_price = price_tag($order_items[$d][$i]->unit_price*$itm['qty']);
  			  			  			  
		      $qty = $itm['qty'];
	    	  $unit_price = $order_item->get_discounted_price();	
			    // Check free delivery coupon
			  $php5DB_en->setQuery( "SELECT free_delivery FROM #__coupon WHERE coupon_code='".$order_item->promotions_id."'" );
			  if (!$php5DB_en->loadResult())
	    	 	 $surcharge += $order_item->get_surcharge();				  	 
			  			   
		      $total = $unit_price * $qty;	
		      $subtotal +=  $order_items[$d][$i]->unit_price*$qty; 				  
	  
              $query = "SELECT * FROM #__order_addon WHERE order_item_id = '". $itm['order_item_id'] ."' ";
              $php5DB_en->setQuery( $query );  
              $oas = $php5DB_en->loadAssocList();


              $j = 0;
			   $order_item_addon[$d][$i][1][5]=  0;			  
	          foreach ( $oas as $oa )
	          {
			   $j++;

			   $product->loadData(add_prefix('product'), 'product_id', $oa['addon_product_id']);
			   $order_addon->loadData(add_prefix('order_addon'), 'order_addon_id', $oa['order_addon_id']);
$product->image = "http://120.50.45.210/" . $product->image;		

			   $order_item_addon[$d][$i][$j][0]= $product->image;				   		   
			   $order_item_addon[$d][$i][$j][1] = $product->name;	
			   $order_item_addon[$d][$i][$j][2] = $order_item->qty;	
			   $order_item_addon[$d][$i][$j][3] = $product->price;	
			   $order_item_addon[$d][$i][$j][4] = $order_item->qty * $order_item->unit_price ;		
			    $order_item_addon[$d][$i][$j][6] = number_format($product->price*$order_item->qty, 2);			   			   
			   $order_item_addon[$d][$i][$j][5]=  1;	
			   			   
		       $qty = $itm['qty'];
	    	   $unit_price = $product->price;	
		       $total = $order_item_addon[$d][$i][$j][6];
		       $subtotal +=  $total; 		
				  
		      } 
			  
		  
	      }

	
		  
					  
	    $smarty->assign('oi' ,  $items  );	  				  		  
	    $smarty->assign('items' ,  $items  );	  	
	    $smarty->assign('subtotal' ,  price_tag($subtotal)  );
	    $smarty->assign('gst' ,  price_tag($product->gst($subtotal + $surcharge))  );	

	    $g_total = $subtotal + $product->gst($subtotal+$surcharge) + $surcharge;

	    $smarty->assign('surcharge' ,  price_tag($surcharge)  );	
	    $smarty->assign('g_total' ,  price_tag($g_total)  );	

	    $smarty->assign('order_items' ,  $order_items );	
	    $smarty->assign('order_item_addon' ,  $order_item_addon );					
	    $smarty->assign('i' ,  $i );	
	    $smarty->assign('j' ,  $j );		
		
		
		$order_deliveries[$d]->subtotal = 	price_tag($subtotal) ;
		$order_deliveries[$d]->gst = 	 price_tag($product->gst($subtotal + $surcharge)) ;		
		$order_deliveries[$d]->surcharge = 	price_tag($surcharge) ;	
		$order_deliveries[$d]->g_total = 	price_tag($g_total) ;			
				
	  }
	  
	  
 $smarty->assign('username' , $php5Session->getVar('user_name')  );			  
 $smarty->assign('order_deliveries' ,  $order_deliveries );		  
 $smarty->assign('order_items' ,  $order_items  );	  	  
 $main = $smarty->fetch($tpl);	
 return $main;	
		
}
function prepare_order1($id, $tpl)
{
global $php5DB_en;
global $smarty;
global $php5Session;

      $query = "SELECT * FROM #__order_delivery WHERE order_id = '$id' ";
      $php5DB_en->setQuery( $query ); 

      $order = new Order();
	  $order_delivery= new Order_delivery();
      $product = new Product();
      $order_item = new Order_item();	  
      $order_addon = new Order_addon();	  

	    $order->loadData(add_prefix('order'), 'order_id', $id);
	    $smarty->assign('order' ,  $order  );	 		
		
	    $smarty->assign('order' ,  $order);	

      $d = 0;					  	   
      $os = $php5DB_en->loadAssocList();
	  foreach ( $os as $o)
	  {
	  
	    $d++;
	    $order_delivery->loadData(add_prefix('order_delivery'), 'order_delivery_id', $o['order_delivery_id']);	  
	    $order_deliveries[$d] =    new Order_delivery();
		$order_deliveries[$d]->loadData(add_prefix('order_delivery'), 'order_delivery_id', $o['order_delivery_id']);
		  		  		  			
          $query = "SELECT * FROM #__order_item WHERE delivery_id = '".$order_delivery->order_delivery_id."' ";
          $php5DB_en->setQuery( $query );  
          $itms = $php5DB_en->loadAssocList();
	  
	      $items = ""; 
	      $subtotal = 0;
		  $surcharge = 0;
		  $i = 0;
	      foreach ( $itms as $itm)
	      {
		      $i++;

			  $order_items[$d][$i] = new Order_item() ;
		      $product->loadData(add_prefix('product'), 'product_id', $itm['product_id']);
		      $order_item->loadData(add_prefix('order_item'), 'order_item_id', $itm['order_item_id']);	
 		      $order_items[$d][$i]->loadData(add_prefix('order_item'), 'order_item_id', $itm['order_item_id']);	
 		      $order_items[$d][$i]->name = $product->name;
			  $order_items[$d][$i]->unit_price = $product->price;
			  $product->image = "http://120.50.45.210/" . $product->image;			  
 		      $order_items[$d][$i]->image = $product->image;	
			  $order_items[$d][$i]->unit_price = ($order_item->discount!='0.00')?$product->price - ($product->price*$order_item->discount/100):$product->price;
  			  			  			  
		      $qty = $itm['qty'];
	    	  $unit_price = $order_item->get_discounted_price();	
	    	  $surcharge += $order_item->get_surcharge();				  	 
			  			   
		      $total = $unit_price * $qty;	
		      $subtotal +=  $order_items[$d][$i]->unit_price; 	

	


			  
	  
              $query = "SELECT * FROM #__order_addon WHERE order_item_id = '". $itm['order_item_id'] ."' ";
              $php5DB_en->setQuery( $query );  
              $oas = $php5DB_en->loadAssocList();


              $j = 0;
			   $order_item_addon[$d][$i][1][5]=  0;			  
	          foreach ( $oas as $oa )
	          {
			   $j++;

			   $product->loadData(add_prefix('product'), 'product_id', $oa['addon_product_id']);
			   $order_addon->loadData(add_prefix('order_addon'), 'order_addon_id', $oa['order_addon_id']);
			   $product->image = "http://120.50.45.210/" . $product->image;		
			   $order_item_addon[$d][$i][$j][0]= $product->image;				   		   
			   $order_item_addon[$d][$i][$j][1] = $product->name;	
			   $order_item_addon[$d][$i][$j][2] = $order_item->qty;	
			   $order_item_addon[$d][$i][$j][3] = $product->price;	
			   $order_item_addon[$d][$i][$j][6] = number_format($product->price*$order_item->qty, 2);	
			   $order_item_addon[$d][$i][$j][4] = $order_item->qty * $order_item->unit_price ;				   			   
			   $order_item_addon[$d][$i][$j][5]=  1;	
			   			   
		       $qty = $itm['qty'];
	    	   $unit_price = $product->price;	
		       $total = $order_item_addon[$d][$i][$j][6];	
		       $subtotal +=  $total; 		
				  
		      } 
			  
		  
	      }

	
		  
					  
	    $smarty->assign('oi' ,  $items  );	  				  		  
	    $smarty->assign('items' ,  $items  );	  	
	    $smarty->assign('subtotal' ,  price_tag($subtotal)  );
	    $smarty->assign('gst' ,  price_tag($product->gst($subtotal + $surcharge))  );	

	    $g_total = $subtotal + $product->gst($subtotal+$surcharge) + $surcharge;

	    $smarty->assign('surcharge' ,  price_tag($surcharge)  );	
	    $smarty->assign('g_total' ,  price_tag($g_total)  );	

	    $smarty->assign('order_items' ,  $order_items );	
	    $smarty->assign('order_item_addon' ,  $order_item_addon );					
	    $smarty->assign('i' ,  $i );	
	    $smarty->assign('j' ,  $j );		
		
		
		$order_deliveries[$d]->subtotal = 	price_tag($subtotal) ;
		$order_deliveries[$d]->gst = 	 price_tag($product->gst($subtotal + $surcharge)) ;		
		$order_deliveries[$d]->surcharge = 	price_tag($surcharge) ;	
		$order_deliveries[$d]->g_total = 	price_tag($g_total) ;			
				
	  }
	  
	  
 $smarty->assign('username' , $php5Session->getVar('user_name')  );			  
 $smarty->assign('order_deliveries' ,  $order_deliveries );		  
 $smarty->assign('order_items' ,  $order_items  );	  	  
 $main = $smarty->fetch($tpl);	
 return $main;	
		
}
//generate_order(294);

?>