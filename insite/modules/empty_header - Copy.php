<head>
<link href="<?php echo $root_url ; ?>/insite/templates/system/css/style.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $root_url ; ?>/insite/templates/system/css/forms.css" rel="stylesheet" type="text/css" />

<link href="<?php echo $root_url ; ?>/templates/en/eshop/css/tooltip.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" media="screen" href="<?php echo $root_url ; ?>/templates/en/eshop/css/validate/screen.css" />

<script src="<?php echo $root_url ; ?>/templates/en/eshop/js/jquery.js" type="text/javascript"></script>
<script src="<?php echo $root_url ; ?>/templates/en/eshop/js/validate/jquery.validate.js" type="text/javascript"></script>


<script type="text/javascript">
$(document).ready(function() {
	$("#vForm").validate();
	//Select all anchor tag with rel set to tooltip
	$('a[rel=tooltip]').mouseover(function(e) {
		
		//Grab the title attribute's value and assign it to a variable
		var tip = $(this).attr('title');	
		
		//Remove the title attribute's to avoid the native tooltip from the browser
		$(this).attr('title','');
		
		//Append the tooltip template and its value
		$(this).append('<div id="tooltip"><div class="tipHeader"></div><div class="tipBody">' + tip + '</div><div class="tipFooter"></div></div>');		
				
		//Show the tooltip with faceIn effect
		$('#tooltip').fadeIn('500');
		$('#tooltip').fadeTo('10',0.9);
		
	}).mousemove(function(e) {
	
		//Keep changing the X and Y axis for the tooltip, thus, the tooltip move along with the mouse
		$('#tooltip').css('top', e.pageY + 10 );
		$('#tooltip').css('left', e.pageX + 20 );
		
	}).mouseout(function() {
	
		//Put back the title attribute's value
		$(this).attr('title',$('.tipBody').html());
	
		//Remove the appended tooltip template
		$(this).children('div#tooltip').remove();
		
	});

});

</script>

</head>
<body>
