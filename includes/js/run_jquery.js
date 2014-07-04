    <script src="<?php echo $php5WebPath ; ?>/templates/en/eshop/js/lightbox/jquery-1.7.2.min.js"></script>

    <!--  slider  -->
	<link rel="stylesheet" href="<?php echo $php5WebPath ; ?>/templates/en/eshop/css/banner/global.css">
	<script src="<?php echo $php5WebPath ; ?>/templates/en/eshop/js/slider/slides.min.jquery.js"></script>
    <!--  end slider  -->

    <!--  lightbox  -->
	<link rel="stylesheet" href="<?php echo $php5WebPath ; ?>/templates/en/eshop/css/lightbox/lightbox.css" type="text/css" media="screen" />
    <script src="<?php echo $php5WebPath ; ?>/templates/en/eshop/js/lightbox/lightbox.js"></script>    
    <!--  lightbox    -->
   
    <!-- validate -->
    <link rel="stylesheet" type="text/css" media="screen" href="<?php echo $php5WebPath ; ?>/templates/en/eshop/css/validate/screen.css" />

    <script src="<?php echo $php5WebPath ; ?>/templates/en/eshop/js/validate/jquery.validate.js" type="text/javascript"></script>    
    <!-- validate -->
    
    <!-- tooltip -->
    <link href="<?php echo $php5WebPath ; ?>/templates/en/eshop/css/tooltip.css" rel="stylesheet" type="text/css" />
    <!-- tooltip  -->

	<script>
$(document).ready(function() {
	$("#vForm").validate();
	$("#vForm2").validate();
	$("#vForm3").validate();
	$("#vForm4").validate();			
	$('a[rel=tooltip]').mouseover(function(e) {
		var tip = $(this).attr('title');	
		$(this).attr('title','');
		$(this).append('<div id="tooltip"><div class="tipHeader"></div><div class="tipBody">' + tip + '</div><div class="tipFooter"></div></div>');		
		$('#tooltip').fadeIn('500');
		$('#tooltip').fadeTo('10',0.9);
	}).mousemove(function(e) {
		$('#tooltip').css('top', e.pageY + 10 );
		$('#tooltip').css('left', e.pageX + 20 );
	}).mouseout(function() {
		$(this).attr('title',$('.tipBody').html());
		$(this).children('div#tooltip').remove();
	});
});

	
		$(function(){
			$('#slides').slides({
				preload: true,
				preloadImage: 'img/loading.gif',
				play: 5000,
				pause: 2500,
				hoverPause: true,
				animationStart: function(current){
					$('.caption').animate({
						bottom:-35
					},100);
					if (window.console && console.log) {
						// example return of current slide number
						console.log('animationStart on slide: ', current);
					};
				},
				animationComplete: function(current){
					$('.caption').animate({
						bottom:0
					},200);
					if (window.console && console.log) {
						// example return of current slide number
						console.log('animationComplete on slide: ', current);
					};
				},
				slidesLoaded: function() {
					$('.caption').animate({
						bottom:0
					},200);
				}
			});
		});
		
		
function setOutput(){
if(httpObject.readyState == 4){
      document.getElementById('dnick').innerHTML = httpObject.responseText;
      }
}
function getHTTPObject() {
var xhr = false;//set to false, so if it fails, do nothing
if(window.XMLHttpRequest) {//detect to see if browser allows this method
var xhr = new XMLHttpRequest();//set var the new request
} else if(window.ActiveXObject) {//detect to see if browser allows this method
try {
var xhr = new ActiveXObject("Msxml2.XMLHTTP");//try this method first
} catch(e) {//if it fails move onto the next
try {
var xhr = new ActiveXObject("Microsoft.XMLHTTP");//try this method next
} catch(e) {//if that also fails return false.
xhr = false;
}
}
}
return xhr;//return the value of xhr
}
// Implement business logic
function checkEmail(){
if (document.getElementById('nick').value == '')
{
  document.getElementById('dnick').innerHTML = "";
}
else
{
 httpObject = getHTTPObject();

  if (httpObject != null) {
     httpObject.open("GET", "<?php echo $php5WebPath; ?>/index.php?o=eshop&m=checkEmail&id=" +document.getElementById('nick').value, true);

      httpObject.send(null);
      document.getElementById('dnick').innerHTML = "<img src='{$php5WebPath}/images/ajaxloading.gif'>";
      httpObject.onreadystatechange = setOutput;
      }
 }
}
		
	</script>
