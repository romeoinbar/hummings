function sleep(milliSeconds){
   var startTime = new Date().getTime(); // get the current time
   while (new Date().getTime() < startTime + milliSeconds); // hog cpu
}
function jqCheckAll( id, name ){
	$("INPUT[@name=" + name + "][type='checkbox']").attr('checked', $('#' + id).is(':checked'));	
}
function isChecked(checkAll, checkItem){		
	if ($("input#"+checkItem).checked==false)		
			$("input#"+checkAll).attr('checked', false);		
	else {
		var flag='checked';
		$("input#"+checkItem).each(function(){
			if (this.checked==false){
				flag=false;					
			}
		});			
		$("input#"+checkAll).attr('checked', flag);
	}
}
function redirectToUrl(url){
	window.location.href=url;
}
function delItem(url, mss){	
	var answer = confirm(mss)
	if (answer){
		window.location.href = url;		
	}		
	return false; 		
}
function addItem(){
	var n = $("input#ques:checked").length;	
	var list = '';
	var score = 0;
	var max_score = parseInt($("span#max_score").html());
	if (n>0){		
		$("input#ques:checked").each(function(){
			var id = 	$(this).val();		
			score += parseInt($("span#score_"+ id).html());
			var content = $("span#quiz_content"+$(this).val()).text();
			var data = '<table width="100%" border="0" cellspacing="1" cellpadding="5" id="'+ $(this).val() +'"><tr><td width="30" bgcolor="#FFEAEC"><input type="checkbox" name="v_selected" id="v_selected" value="'+ $(this).val() +'"/></td><td bgcolor="#FFEAEC"><span id="selected_quiz_content'+ $(this).val() +'">'+ content +'</span> <strong>(Score: <span id="s_score_'+ $(this).val() +'">'+ $("span#score_"+ id).html() +'</span>)</strong></td></tr></table>';
			$('div#ques_selected').append(data);			
			$("div#all_ques").find("table#"+$(this).val()).remove();		
			
		});				
	}
	$("span#max_score").html(max_score+score);
	
	$("input#v_selected").each(function(){
		list += $(this).val() + ',';			
	});	
	if (list!='')
		list = list.substr(0,list.length-1);	
	$('input#list_ques').val(list);	
}
function removeItem(){
	var n = $("input#v_selected:checked").length;	
	var list = '';	
	var score = 0;
	var max_score = parseInt($("span#max_score").html());
	if (n>0){
		$("input#v_selected:checked").each(function(){					
			var id = 	$(this).val();		
			score += parseInt($("span#s_score_"+ id).html());
			var content = $("span#selected_quiz_content"+$(this).val()).text();
			var data = '<table width="100%" border="0" cellspacing="1" cellpadding="5" id="'+ $(this).val() +'"><tr><td width="30" bgcolor="#f3f3f3"><input type="checkbox" name="ques" id="ques" value="'+ $(this).val() +'"/></td><td bgcolor="#f3f3f3"><span id="quiz_content'+  $(this).val() +'">'+ content +'</span> <strong>(Score: <span id="score_'+ $(this).val() +'">'+ $("span#s_score_"+ id).html() +'</span>)</strong></td></tr></table>';
			$('div#all_ques').append(data);	
			$("div#ques_selected").find("table#"+$(this).val()).remove();			
		});		
	}
	$("span#max_score").html(max_score-score);
	$("input#v_selected").each(function(){
		list += $(this).val().toString() + ',';			
	});
	if (list!='')
		list = list.substr(0,list.length-1);
	$('input#list_ques').val(list);	
}

function isValidEmail( str ){
	var filter = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	if(filter.test(str)){
    	return true;
	}else{
	    return false;
	}	
}

function isNumeric(str) {
	var filter = new RegExp("^\\d{1,15}$"); 
	if (filter.test(str)) {
		return true;
	} else {
		return false; 	
	}
}

function isEmpty(str) {
   if ((str==null)||(str.replace(/(^\s*)|(\s*$)/g, "").length==0)) {
      return true;
   } else { 
      return false; 
   }
}

function checkLength(str, minlen, maxlen) {
	if (str == null) return false;
	var l = str.length;
	var blen = 0;
	for(i=0; i<l; i++) {
		if ((str.charCodeAt(i) & 0xff00) != 0) {
			blen ++;
		}
		blen ++;
	}
	if (blen > maxlen || blen < minlen) {
		return false;
	}
	return true;
}

function validateNickname(str){
	var patn = /^[a-zA-Z0-9]+$/; 
	if(patn.test(str)){
	    if(checkLength(str, 4, 50)) return true;
	}    
	return false; 
}

function getMedia(fileUrl){
    var html = '';
    if(fileUrl.search(".swf") != -1){
        html = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="100%" height="100%">' +
        '<param name="movie" value="' + fileUrl + '" />' +
        '<param name="quality" value="high" />' +
        '<param name="wmode" value="transparent">' +
        '<embed src="' + fileUrl + '" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent" width="100%" height="100%"></embed>' +
        '</object>';
    }
    else{
        html = '<img src="' + fileUrl.replace(/\/images\//i,"/_thumbs/Images/") + '" border="0" />';
    }

    return html;
}

function BrowseServer( startupPath, functionData ){
    var finder = new CKFinder() ;
    finder.BasePath = '/e/javascript/ckfinder/' ;
    finder.StartupPath = startupPath ;
    finder.SelectFunction = SetFileField ;
    finder.Popup() ;
}

function showDlg(flag, id, jid){
    var url = '';
    if( flag=='job' ){
        url = '/post.job/act/view/';
        $('#dlg').dialog("option" , 'height', 600);
    } else if( flag=='can' ){
        url = '/post.job-seekers/view/';
        $('#dlg').dialog("option" , 'height', 600);
    } else if( flag=='emp' ){
        url = '/post.employers/view/';
        $('#dlg').dialog("option" , 'height', 400);
    } else if( flag=='app' ){
        url = '/post.admin/application/';
        $('#dlg').dialog("option" , 'height', 600);
    } else if( flag=='term' ){
        url = '/post.terms-and-conditions/main/';
        $('#dlg').dialog("option" , 'height', 600);
    } else if( flag=='upload' ){
        url = '/post.upload_files/main/';
        $('#dlg').dialog("option" , 'height', 300);
    }

    if(url.length > 0){
        $.ajax({
                type: "POST",
                url: url,
                data: "id=" + id + "&jid=" + jid,
                success: function( data ){
                    $("#dlg").html(data);
                    $('#dlg').dialog('open');
                }
            });
    }
}

// Declaring valid date character, minimum year and maximum year
var dtCh= "/";
var minYear=1900;
var maxYear=2100;

function isInteger(s){
	var i;
    for (i = 0; i < s.length; i++){   
        // Check that current character is number.
        var c = s.charAt(i);
        if (((c < "0") || (c > "9"))) return false;
    }
    // All characters are numbers.
    return true;
}

function stripCharsInBag(s, bag){
	var i;
    var returnString = "";
    // Search through string's characters one by one.
    // If character is not in bag, append to returnString.
    for (i = 0; i < s.length; i++){   
        var c = s.charAt(i);
        if (bag.indexOf(c) == -1) returnString += c;
    }
    return returnString;
}

function daysInFebruary (year){
	// February has 29 days in any year evenly divisible by four,
    // EXCEPT for centurial years which are not also divisible by 400.
    return (((year % 4 == 0) && ( (!(year % 100 == 0)) || (year % 400 == 0))) ? 29 : 28 );
}
function DaysArray(n) {
	for (var i = 1; i <= n; i++) {
		this[i] = 31
		if (i==4 || i==6 || i==9 || i==11) {this[i] = 30}
		if (i==2) {this[i] = 29}
   } 
   return this
}
function isNumberKey(evt){
   var charCode = (evt.which) ? evt.which : event.keyCode
   if (charCode > 31 && (charCode < 48 || charCode > 57))
	  return false;

   return true;
}