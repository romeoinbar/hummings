<?php
function get_file_extension($file_name) {
return end(explode('.',$file_name));
}

function upload($obj, $destination )
{
   if (!move_uploaded_file($obj['tmp_name'], $destination))
   {
      print "Error Uploading File.";
      exit();
   }	

}
function delete_image($image)
{
 global $php5RootPath;	
 global $php5WebPath;	
  	
 $image = $php5RootPath ."/". $image;
// echo $image;
if (file_exists($image) ) 
 unlink($image);
}


function rename_banner_image($obj, $id)
{
 global $php5RootPath;	
 $ext = get_file_extension($obj['name']);
 return $php5RootPath . "/images/banner/$id.$ext";	
}

function rename_banner_image_url($obj, $id)
{
 global $php5WebPath;	
 $ext = get_file_extension($obj['name']);
 return "images/banner/$id.$ext";	
}

function rename_photos_image($obj, $id)
{
 global $php5RootPath;	
 $ext = get_file_extension($obj['name']);
 return $php5RootPath . "/images/photos/$id.$ext";	
}

function rename_photos_image_url($obj, $id)
{
 global $php5WebPath;	
 $ext = get_file_extension($obj['name']);
 return "images/photos/$id.$ext";	
}

function rename_product_image($obj, $id)
{
 global $php5RootPath;	
 $ext = get_file_extension($obj['name']);
 return $php5RootPath . "/images/product/$id.$ext";	
}

function rename_product_image_url($obj, $id)
{
 global $php5WebPath;	
 $ext = get_file_extension($obj['name']);
 return "images/product/$id.$ext";	
}


function rename_category_image($obj, $id)
{
 global $php5RootPath;	
 $ext = get_file_extension($obj['name']);
 return $php5RootPath . "/images/category/$id.$ext";	
}

function rename_category_image_url($obj, $id)
{
 global $php5WebPath;	
 $ext = get_file_extension($obj['name']);
 return "images/category/$id.$ext";	
}



function rename_occasions_image($obj, $id)
{
 global $php5RootPath;	
 $ext = get_file_extension($obj['name']);
 return $php5RootPath . "/images/occasions/$id.$ext";	
}

function rename_occasions_image_url($obj, $id)
{
 global $php5WebPath;	
 $ext = get_file_extension($obj['name']);
 return "images/occasions/$id.$ext";	
}

function rename_collections_image($obj, $id)
{
 global $php5RootPath;	
 $ext = get_file_extension($obj['name']);
 return $php5RootPath . "/images/collections/$id.$ext";	
}

function rename_collections_image_url($obj, $id)
{
 global $php5WebPath;	
 $ext = get_file_extension($obj['name']);
 return "images/collections/$id.$ext";	
}

function rename_addon_image($obj, $id)
{
 global $php5RootPath;	
 $ext = get_file_extension($obj['name']);
 return $php5RootPath . "/images/addon/$id.$ext";	
}

function rename_addon_image_url($obj, $id)
{
 global $php5WebPath;	
 $ext = get_file_extension($obj['name']);
 return "images/addon/$id.$ext";	
}


function display_image_url($image)
{
    global $php5WebPath;		
	return $php5WebPath."/".$image;
}

function return_resized_image($m_width, $m_height, $image)
{
global $php5WebPath, $php5RootPath;
$ext = pathinfo( $image , PATHINFO_EXTENSION); 
if ( $ext== '' )
{
return "";
}
$root_img = $php5RootPath.'/'.$image;
$root_img = str_replace($php5WebPath,'',$root_img);
list($width, $height, $type, $attr) = getimagesize($root_img);
if ($width)
{
	if ( $width > $height)
	{ 
	  $r_width = $m_width;
	  $r_height = $height/$width * $m_width;
	  
	  if ($r_height > $m_height)
	  {
		$r_width = ($m_height/$r_heifht)*$r_width;		  
		$r_height = $m_height;
	  }
	}
	else
	{
	  $r_height = $m_height;
	  $r_width = $width/$height * $m_height;	
	  if ($r_width > $m_width)
	  {
		$r_height = ($m_width/$r_width)*$r_height;		  
		$r_width = $m_width;
	  }	  
	}
	

	
	
	return "<img src='".$php5WebPath.'/'.$image."' width=$r_width height=$r_height >";
}
else
 return "<div style='width:$m_width px; height:145px; border:0px solid #ccc;'> </div>";
}
function return_resized_image_oos($m_width, $m_height, $image)
{
global $php5WebPath, $php5RootPath;
$ext = pathinfo( $image , PATHINFO_EXTENSION); 
if ( $ext== '' )
{
return "";
}
$root_img = $php5RootPath.'/'.$image;
list($width, $height, $type, $attr) = getimagesize($root_img);
if ($width)
{
	if ( $width > $height)
	{ 
	  $r_width = $m_width;
	  $r_height = $height/$width * $m_width;
	  
	  if ($r_height > $m_height)
	  {
		$r_width = ($m_height/$r_heifht)*$r_width;		  
		$r_height = $m_height;
	  }
	}
	else
	{
	  $r_height = $m_height;
	  $r_width = $width/$height * $m_height;	
	  if ($r_width > $m_width)
	  {
		$r_height = ($m_width/$r_width)*$r_height;		  
		$r_width = $m_width;
	  }	  
	}
	

	
	
	return "<img style='background:url(".$php5WebPath.'/'.$image.");  background-size: ".$r_width."px ".$r_height."px;' src='".$php5WebPath."/images/out_of_stock.png' width=$r_width height=$r_height>";
}
else
 return "<div style='width:$m_width px; height:145px; border:0px solid #ccc;'> </div>";
}
?>