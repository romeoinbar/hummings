<script src="{$php5WebPath}/htmls/js/popup.js" type="text/javascript"></script>
{literal}
<style>
a{
cursor: pointer;
text-decoration:none;
}
#backgroundPopup{
display:none;
position:fixed;
_position:absolute; /* hack for internet explorer 6*/
height:100%;
width:100%;
top:0;
left:0;
background:#000000;
border:1px solid #cecece;
z-index:1;
}
#popupContact{
display:none;
position:fixed;
_position:absolute; /* hack for internet explorer 6*/
height:480px;
width:800px;
background:#FFFFFF;
border:0px solid #cecece;
z-index:99999;
padding:0px;
font-size:13px;
}
#popupContact h1{
text-align:left;
color:#6FA5FD;
font-size:22px;
font-weight:700;
border-bottom:1px dotted #D3D3D3;
padding-bottom:2px;
margin-bottom:20px;
}
#popupContactClose{
font-size:14px;
line-height:14px;
right:23px;
top:20px;
position:absolute;
color:#6fa5fd;
font-weight:700;
display:block;
}
#popupContactSignup{
font-size:14px;
line-height:14px;
right:24px;
top:440px;
position:absolute;
color:#6fa5fd;
font-weight:700;
display:block;
}
</style>
{/literal}
<form action="{$link_popup_email}" method="post" name="frmPopupPromoEmail">
<div id="popupContact">
    <div style="background:url({$php5WebPath}/images/signup_page.jpg) no-repeat;width:800px;height:480px">
    <a href="#" id="popupContactClose">&nbsp;&nbsp;</a>
    {if $msg}<div style="padding-left:250px;padding-top:210px;color:#000;">You are already subscribed to newsletter with entered email. <a href="#"  onclick="javascript:disablePopup();">Click here </a> to continue shopping</div>{else}<div style="padding-left:250px;padding-top:210px;color:#000;">&nbsp;</div>{/if}
    <div style="padding-left:366px;padding-top:27px"><input type="text" id="popupPromoEmail" name="email" style="border:0;height:16px;width:280px" placeholder="Email:" /><span style="width:100px;height:50px"><a href="#" onclick="javascript:checkPopupPromoEmail();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></span></div>
    <a href="#" id="popupContactSignup">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
  </div>
</div>
<div id="backgroundPopup"></div>
</form>
{literal}
<script>
//centering with css
//centerPopup();
//load popup
//loadPopup();

function isValidEmail( str ){
	var filter = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	if(filter.test(str)){
    	return true;
	}else{
	    return false;
	}	
}

function checkPopupPromoEmail()
{
	if(!isValidEmail(document.getElementById('popupPromoEmail').value)) {
		alert('Please input your email');
	} else {
		document.frmPopupPromoEmail.submit();
	}
}
</script>
{/literal}