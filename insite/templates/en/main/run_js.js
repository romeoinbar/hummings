$(document).ready(function() {
	$("#vForm").validate();
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

var clicked=0;

function show_frame(url, press)
{
 if (document.getElementById('frameContainer').innerHTML == '')
	document.getElementById('frameContainer').innerHTML = "<div style='padding:10px; border:1px solid #ccc; width:600px;'><iframe src='" + url + "' height=500 width=590></iframe></div>";
 else
	document.getElementById('frameContainer').innerHTML = ""; 
	
 if (clicked != press)
	document.getElementById('frameContainer').innerHTML = "<div style='padding:10px; border:1px solid #ccc; width:600px;'><iframe src='" + url + "' height=500 width=590></iframe><div>";	
	
clicked = press;	
}

function showhide(id)
{
 obj = document.getElementById(id);
 if (obj.style.display=='none')
 obj.style.display='';
 else
 obj.style.display='none'; 

}


