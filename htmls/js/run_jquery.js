function unloadPopupBox(id) {    // TO Unload the Popupbox
	if (id!=''){
		$('#'+id).fadeOut("slow");		
	} else {
		$('.notify_box').fadeOut("slow");
	}
}   

function loadPopupBox(id) {    // To Load the Popupbox	
	unloadPopupBox('');
	$('#'+id).fadeIn("slow");	   
}  
var tmp;
var ddd = '';
$(document).ready(function() {
	$("#vForm").validate();
	$("#vForm1").validate();	
	$("#vForm2").validate();
	$("#vForm3").validate();
	$("#vForm4").validate();
	$("#vForm5").validate();
	$("#vForm6").validate();
	$("#vForm7").validate();	
	$("#vForm8").validate();
	$("#vForm9").validate();
	$("#vForm10").validate();
	$("#vForm11").validate();
	$("#vForm12").validate();
	$("#vForm13").validate();
	$("#vForm14").validate();
	$("#vForm15").validate();
	$("#vForm16").validate();
	$("#vForm17").validate();	
	$("#vForm18").validate();
	$("#vForm19").validate();


	$("#signupForm").validate({
		rules: {

			password: {
				required: true,
				minlength: 4
			},
			password2: {
				required: true,
				minlength: 4,
				equalTo: "#password"
			},
			nick: {
				required: true,
				email: true
			}

		},
		messages: {
			password: {
				required: "Please provide a password",
				minlength: "Your password must be at least 5 characters long"
			},
			password2: {
				required: "Please provide a password",
				minlength: "Your password must be at least 5 characters long",
				equalTo: "Please enter the same password as above"
			},
			nick: "Please enter a valid email address"
		}
	});
	
								
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


		$(function(){
			$('#slides2').slides({
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
		

function lock(id, value) {

id.setAttribute("readonly", value);

}
		
		
function setOutput(){
if(httpObject.readyState == 4){
      document.getElementById('dnick').innerHTML = httpObject.responseText;
      }
}

function setDeliveryOptions(){
if(httpObject.readyState == 4){
      document.getElementById('delivery_options').innerHTML = httpObject.responseText;
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
     httpObject.open("GET", jWebPath+"index.php?o=eshop&m=checkEmail&id=" +document.getElementById('nick').value, true);

      httpObject.send(null);
      document.getElementById('dnick').innerHTML = "<img src='" + jWebPath + "images/ajaxloading.gif'>";
      httpObject.onreadystatechange = setOutput;
      }
 }
}

function check_to_date(v1,v2)
{
	
}

function checkDeliveryOptions(d){
value = document.getElementById('delivery_from_date' + d).value;

var n=value.split("/"); 

value2 =  n[2] + "-" + n[1] + "-" + n[0];

if ( (value == '') || (ddd == value) )
{

}
else
{
 httpObject = getHTTPObject();

  if (httpObject != null) {
     httpObject.open("GET", jWebPath+"index.php?o=eshop&m=delivery_options&task=" + d + "&id=" + value2, true);

      httpObject.send(null);
      document.getElementById('delivery_options').innerHTML = "<img src='" + jWebPath + "images/ajaxloading.gif'>";
      httpObject.onreadystatechange = setDeliveryOptions;
	  ddd = value;
      }
 }
}

function checkDeliveryOptions1(d){
	var value = document.getElementById('delivery_from_date'+ d).value;		
	var n= value.split("/"); 
	var value2 =  n[2] + "-" + n[1] + "-" + n[0];
	if ( (value == '') || (ddd == value) ){
	}
	else{
		
		 httpObject = getHTTPObject();
		 if (httpObject != null) {			
			 httpObject.open("GET", jWebPath+"mobile-cart/checkout/delivery_options/" + d + "/" + value2, true);
			  httpObject.send(null);
			  document.getElementById('delivery_options').innerHTML = "<img src='" + jWebPath + "images/ajaxloading.gif'>";
			  httpObject.onreadystatechange = setDeliveryOptions;
			  ddd = value;
		 }
	 }
}

function setNotify(){
	if(httpObject.readyState == 4){
		//alert('Request received. A notification will be sent to your email once the item is back in stock.');
     	 document.getElementById('notify_block').innerHTML = httpObject.responseText;
    }
}
function notify_quantity(product_id, email, id){	
  var tmp = product_id.split('|');
  var x=email;
  var atpos=x.indexOf("@");
  var dotpos=x.lastIndexOf(".");
  if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length){
	alert("Invalid email. Please check your email again.");
	return false;
  } else {
  
	  httpObject = getHTTPObject();
	  if (httpObject != null) {		
	   unloadPopupBox('');
	   if (tmp[1]==0)
	   		alert('Request received. A notification will be sent to your email once the item is back in stock.');		
	   httpObject.open("GET", jWebPath+"index.php?o=eshop&m=notify&task=" + product_id + "&id=" + email, true);
		httpObject.send(null);
		//document.getElementById('notify_block').innerHTML = "<img src='" + jWebPath + "images/ajaxloading.gif'>";
		
		httpObject.onreadystatechange = setNotify;
		
		//unloadPopupBox(id); 
	  }	
  }
}

function setReview(){
	if(httpObject.readyState == 4){
		//alert('Request received. A notification will be sent to your email once the item is back in stock.');
     	 document.getElementById('review_message').innerHTML = httpObject.responseText;
    }
}
function doReview(task, rating_review_id){	  
  
	  httpObject = getHTTPObject();
	  if (httpObject != null) {	   
	  	
	   httpObject.open("GET", jWebPath+"index.php?o=eshop&m=review&task=" + task + "&id=" + rating_review_id, true);
		httpObject.send(null);		
		httpObject.onreadystatechange = setReview;		
	  }	
  
}

function select_message(value,d){
tmp = d;
if (value == 0)
{
  document.getElementById('wishes'+d).innerHTML = "";
}
else
{
 httpObject = getHTTPObject();

  if (httpObject != null) {
       httpObject.open("GET", jWebPath+"index.php?o=eshop&m=draw_select&id=" + value, true);

      httpObject.send(null);
      document.getElementById('wishes'+d).innerHTML = "<img src='" + jWebPath + "images/ajaxloading.gif'>";
      httpObject.onreadystatechange = draw_select;
      }
 }
}


function ajax_load(to,from,name){
	var id1 = document.getElementById('bestseller2');
	var id2 = document.getElementById('best_seller2_total'); 
	var count = parseInt(id2.value);
	var id3;
	for(var i = 1; i <= count; i++) {
		id3 = document.getElementById('ajax_bestseller'+i);
		id3.style.color="#000";
	}
	id = document.getElementById(name);
	id.style.color="#a90061";

 httpObject = getHTTPObject();
  if (httpObject != null) {
      httpObject.open("GET", from , true);
      httpObject.send(null);
      document.getElementById(to).innerHTML = "<img src='" + jWebPath + "images/ajaxloading.gif'>";
      httpObject.onreadystatechange = ajax_load_bestseller;
      }
}

function ajax_load_bestseller(){

if(httpObject.readyState == 4){
      document.getElementById('best_seller_container').innerHTML = httpObject.responseText;
      }
}

function draw_select(){
if(httpObject.readyState == 4){
      document.getElementById('wishes' + tmp).innerHTML = httpObject.responseText;
      }
}
function set_message(message) {
    arr = message.split('*-*');
	i = 0;
	while( i<=5){	
		j=i+1;
 		if (j==1) {
	      document.getElementById('message_content'  + tmp ).value= arr[i];	 
		} else {
	      	document.getElementById('message_content' + j + tmp ).value= arr[i];
 		}
 		i=i+1;
	}
}

function set_message1(message) {
    arr = message.split('*-*');
	i = 0;
	while( i<=5){	
		document.getElementById('message_content'  + tmp ).value= arr[i]+'/n';	 
 		i=i+1;
	}
}

function recipeint(obj,id, url, i, env) {
	var url_login = (env=='smp')?jWebPath+"mobile-cart/eshop/register/":jWebPath+"cart/eshop/register/";
	if (obj.value==-1) {
	 d=document.getElementById(id);
	 d.innerHTML = "<div style='border:1px solid #ccc; padding:5px; background:#fff;'><form action='"+url+"' method=post ><input type=hidden name=target value="+i+"> <input type=text name=name value='Enter recipient name here' size=25 onClick=this.value=''> <input type=submit class=button value='Submit'><br/>Recipient's address will be entered after <br/>clicking 'Check Out'. <br/><br/>If you are a member, please <a href="+ url_login +" >login now</a> to <br/> make use  of  the addressbook</form></div>";

	} else  {
	 d=document.getElementById('change_form'+i);
	 d.submit();		
	}
}

function showhide(id)
{
 obj = document.getElementById(id);
 if (obj.style.display=='none')
 obj.style.display='';
 else
 obj.style.display='none'; 

}

function same_address(target,total)
{	
 alert('Loaded to all recipient address');	
 for (i=1; i<=total; i++)
 {
	 document.getElementById('company'+i).value = document.getElementById('company'+target).value;
	 document.getElementById('block'+i).value = document.getElementById('block'+target).value;

	 document.getElementById('unit'+i).value = document.getElementById('unit'+target).value;
	 document.getElementById('building'+i).value = document.getElementById('building'+target).value;
	 document.getElementById('address1'+i).value = document.getElementById('address1'+target).value;	  
	 document.getElementById('city'+i).value = document.getElementById('city'+target).value;
	 document.getElementById('state'+i).value = document.getElementById('state'+target).value;
	 document.getElementById('postcode'+i).value = document.getElementById('postcode'+target).value;
	 	 	 	 	 	 	 
 }
	
}
