$(document).ready(function(){
closetimer = 0;
	if($("#nav")) {
		$("#nav b").mouseover(function() {
		clearTimeout(closetimer);
			if(this.className.indexOf("clicked") != -1) {
				$(this).parent().next().slideUp(500);
				$(this).removeClass("clicked");
			}
			else {
				$("#nav b").removeClass();
				$(this).addClass("clicked");
				$("#nav ul:visible").slideUp(500);
				$(this).parent().next().slideDown(500);
			}
			return false;
		});
		$("#nav").mouseover(function() {
		clearTimeout(closetimer);
		});
		$("#nav").mouseout(function() {
			closetimer = window.setTimeout(function(){
			$("#nav ul:visible").slideUp(500);
			$("#nav b").removeClass("clicked");
			}, 2000);
		}); 
	}
});