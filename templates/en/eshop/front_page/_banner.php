<?php
error_reporting(0);
global $type, $php5WebPath;

$php5DB_en->setQuery("SELECT * FROM #__videos WHERE publish>0 ORDER BY sorting ASC LIMIT 0,1");
$videos = $php5DB_en->loadObjectList();
$str_video="";
foreach ($videos as $video){
	if ($video->type=="file"){
		$str_video .= '	<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" 						
						codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" width="300" height="250" id="mymoviename"> 
						
						<param name="movie" value="'.$php5WebPath.'/images/'.$video->video_path.'" /> 						 
						<param name="quality" value="high" /> 						
						<param name="bgcolor" value="#f0edea" /> 						
						<embed src="'.$php5WebPath.'/images/'.$video->video_path.'" quality="high" bgcolor="#ffffff" width="300" height="250" name="mymoviename" align="" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"> </embed> 
						</object> ';
	} else{
		$str_video .= stripslashes($video->embed);
	}
	$str_video .= '<div class="desc">'.stripslashes($video->desc).'</div>';
}

$banner = "
	<div id='container2' style='border:0px solid red;'>
		<div id='example'  style='border:0px solid blue;'>
			<div id='slides'  style='border:0px solid green;'>
				<div class='slides_container'>";


  $query = "SELECT * FROM #__banner WHERE  publish=1 ORDER BY sorting";
  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadAssocList();
	 foreach ($rows as $row)
	 {
		 $link_head = ($row['link'] != '') ? "<a href='".$row['link']."' >" : '';
		 $link_end = ($row['link'] != '') ? "</a >" : '';
		 		 
		 $banner .= "
		      <div class='slide' >
			              $link_head 

					       <img src='" . $php5WebPath  . "/". $row['image'] . "' border=0>

						  $link_end		   
			  </div>
		 ";  
	 }
  
//photo
include_once "$php5RootPath/classes/images.class.php";
$temp_photos = "";
$query = "SELECT * FROM #__photos ORDER BY sorting LIMIT 0, 1";
$php5DB_en->setQuery( $query );  
$rows = $php5DB_en->loadObjectList();
	//error_reporting(E_ALL);
	//ini_set('display_errors','On');
if (count($rows)>0)
{
	$prev = '';
	$next ="javascript:gotoPhoto('1','');";

 foreach ($rows as $photo)
 {  
	 //$photo = new Photos();
	 //$photo->loadData(add_prefix('photos'),'photo_id',$row['photo_id']);
	 $link_photo = sefBuild($php5WebPath, "index.php?o=eshop&m=photos&task=show&id=" .$photo->photos_id , 1);		 
		$photo->image = display_image_url($photo->image);
			 $smarty->assign('resized_image', $photo->image);	
			 
			 $smarty->assign('description', $photo->description );	
			 $smarty->assign('photo_id', $photo->photos_id );	
			 $smarty->assign('prev', $prev );	
			 $smarty->assign('next', $next );	
		 $temp_tpl = $php5RootPath. '/templates/en/eshop/front_page/photos.tpl';		 	   
	 $temp_photos .=  $smarty->fetch($temp_tpl);
	 break;			   
 }
 
}
                 
$banner .= "
				</div>
                <div id=frame></div>				
			</div>
            
		</div>
	</div>
	<script>
		function gotoPhoto(next, prev) {
			$(\"#photo_gallery\").html('<img src=\"".$php5WebPath."/images/loading.png\"/>');
			$.get('". $php5WebPath . "/photo.php', { next:next, prev: prev },
   		function(data){
     		$(\"#photo_gallery\").html(data);
		   });
			return false;	 
		}
	</script>
	<div style=' width:332px; height:337px; float:right; margin-right:2px;' id='photo_gallery'>
$temp_photos
  </div> 

	 <div style='clear:both; height:5px;'></div>";

if (($type=="" || $type=='eshop')) {
	$link_newsletter = sefBuild($php5WebPath, 'index.php?o=newsletter', 1);
$banner .= '
	<div class="clr"></div>  
		<div id="social_network" style="margin-left:7px; border:1px solid #f4e8d8; width:1026px;" >
    <img src="'.$php5WebPath.'/images/h_social_network.png"/>
     <div class="inner" style="border:0px solid red; width:1023px; overflow:hidden;" >
     <div style="padding:10px;">
      <div class="block1" style="width:310px;padding-left:25px;">    
			<form action="'.$link_newsletter.'" method="post">   
               <div style="margin-bottom:5px;"><input type="text" name="name" id="namex" class="textinput" value=""  placeholder="Name"/></div>           
             <div><input type="text" name="email" id="emailx" class="textinput" value="" placeholder="Email" /> <input name="" type="image" src="'.$php5WebPath.'/images/btn_ok.png" align="absmiddle" style="border:none;"  onClick=clear_placeholder2() /></div>
           </div>
					 </form>
              <div class="block2" style="height:115px; overflow:hidden;">    
             
			 
<script charset="utf-8" src="http://widgets.twimg.com/j/2/widget.js"></script>
<script>
new TWTR.Widget({
  version: 2,
  type: "profile",
  rpp: 1,
  interval: 30000,
  width: "auto",
  height: 80,
  theme: {
    shell: {
      background: "#ffffff",
      color: "#00a6ff"
    },
    tweets: {
      background: "#ffffff",
      color: "#00a6ff",
      links: "#00a6ff"
    }
  },
  features: {
    scrollbar: false,
    loop: false,
    live: false,
    behavior: "all"
  }
}).render().setUser("hummingflowers").start();
</script>
			 
			 
			 
			 </div>
          <div class="block3">  
           <div id="fb-root"></div>
		<script>(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
		  fjs.parentNode.insertBefore(js, fjs);
		}(document, \'script\', \'facebook-jssdk\'));</script>
		   <div class="fb-like-box" data-href="http://www.facebook.com/HummingFlowersandGifts" data-width="292" data-show-faces="false" data-stream="false" data-header="true"></div>
		   </div>   
     </div>  
     </div>  
  </div>
	<div class="clr"></div>  
';
} 

$banner .="

<script type='text/javascript'>
function clear_placeholder2 ()
{	
   el = document.getElementById('namex');
   if (el.value == 'Name')
   el.value='';	
    el = document.getElementById('emailx');
   if (el.value == 'Email')
   el.value='';	  
   
}

function add_placeholder2 (id, placeholder)
{
	var el = document.getElementById(id);
	el.placeholder = placeholder;

    el.onfocus = function ()
    {
		if(this.value == this.placeholder)
		{
			this.value = '';

		}
    };

    el.onblur = function ()
    {
		if(this.value.length == 0)
		{
			this.value = this.placeholder;

		}
    };

	el.onblur();
}



add_placeholder2('namex', 'Name');
add_placeholder2('emailx', 'Email');
   
</script>

";

$smarty->assign('banner',$banner );	
?>    
    