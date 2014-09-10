<?php

/***************************************************************************
*                                index.php
 *
 *   Begin date             : 
 *   Copyright              : 
 *   Email                  : 
 ***************************************************************************/
define('PHP5_PHP', true);
session_name( md5( 'http://hummings.com/' ) );


session_cache_expire(10);
session_start();

if( intval($_SESSION["nganluong_id"]) < 1 ){
    header('Location: ' . 'http://hummings.com/modules/vn/login.php');	
}

require_once("../../includes/nganluong.php");
//Tài khoản nhận tiền
$receiver="do_work_online@yahoo.com";
//Khai báo url trả về 
$return_url="http://hummings.com/modules/vn/success.php";
//Giá của cả giỏ hàng 
$price=1500000;
//Mã giỏ hàng HM00001;HM00002;HM00003;HM00004;HM00005;HM00006;HM00007;HM00008;HM00009;HM00010;HM00011;HM00012;HM00013
//HM00014;HM00015;HM00016;HM00017;HM00018;HM00019;HM00020;HM00021;HM00022;HM00023;HM00025;HM00026;HM00027;HM00028;HM00029;HM00030;HM00031
$order_code="HM00032";
//Thông tin giao dịch
$transaction_info=md5("HM00032");
	//Khai báo đối tượng của lớp NL_Checkout
$nl= new NL_Checkout();
//Tạo link thanh toán đến nganluong.vn
$url= $nl->buildCheckoutUrlExpand($return_url, $receiver, $transaction_info,  $order_code, $price, 'vnd', 100);


?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<!-- Footer -->

  <head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />		
		<meta name="robots" content="INDEX,FOLLOW" />
<meta name="description" content="" />

		<meta name="keywords" content="" />



<!--
<link href='http://fonts.googleapis.com/css?family=Tienne' rel='stylesheet' type='text/css'>
-->
<link href="http://www.hummings.com/htmls/css/forms.css" rel="stylesheet" type="text/css" />
<link href="http://www.hummings.com/htmls/css/style.css" rel="stylesheet" type="text/css" />
<link href="http://www.hummings.com/htmls/css/template_main.css" rel="stylesheet" type="text/css" />

	<link rel="stylesheet" type="text/css" href="http://www.hummings.com/htmls/calendar/tcal.css" />



    <!--  slider  -->
	<link rel="stylesheet" href="http://www.hummings.com/htmls/css/banner/global.css">


    <!-- validate -->
    
    <!-- tooltip -->
    <link href="http://www.hummings.com/htmls/css/tooltip.css" rel="stylesheet" type="text/css" />
    <!-- tooltip  -->

<script>
var jWebPath="http://www.hummings.com/";

</script>

  
<link href="http://www.hummings.com/templates/en/css/news.css" rel="stylesheet" type="text/css" />
<link href="http://www.hummings.com/templates/en/css/mainmenu.css" rel="stylesheet" type="text/css" />


</head>

<body onLoad="" > 
<div class=div_center>

<div id="header">
	<div class="inner_body">
		<div class="block1">
        	<div class="blockmenu" style='margin-left:10px;'><img src="http://www.hummings.com/images/line1.png" width="3" height="16" align="absmiddle" /><a href="http://www.hummings.com" class="menu">Home</a><img src="http://www.hummings.com/images/line2.png" width="1" height="16" align="absmiddle" />
                        <a href="http://www.hummings.com/cart/eshop/register/" class="menu">Sign up or Log in</a>
                        <img src="http://www.hummings.com/images/line2.png" width="1" height="16" align="absmiddle" /><a href="http://www.hummings.com/cart/eshop/my_account/" class="menu">My Account</a>
            <img src="http://www.hummings.com/images/line1.png" width="3" height="16" align="absmiddle" /></div>
             <div class="clr"></div>
          <div style="margin-top:50px; margin-left:25px;"><a href="http://www.hummings.com"><img src="http://www.hummings.com/images/humming.png" border="0" /></a></div>
        </div>
      <div class="block2"><a href="http://www.hummings.com"><img src="http://www.hummings.com/images/logo.png" width="305" height="94" border="0" /></a></div>
	</div>
</div>
  
<div class="clr">&nbsp;</div>
<div class="clr">&nbsp;</div>
<div class="line5">

</div>
<div style='clear:both;'></div>
</div><!-- end containerwrap -->



	<!-- Footer -->

	<div style='margin:auto; width:1025px;' >
<div class="clr">&nbsp;</div>
<!-- ----------------------------// Begin Bottom menu //------------------------------------------- -->
<div id="bottom_menu_box" style='border:0px solid red;  PADDING-TOP:5PX; height:420px;'>

<div style='margin:0px; padding:10px 0px; border:0px solid #ccc;width:500px'>
  <div class="subcolumns">
    <div class="c66l">
        <div class="box">
            <div class="header"><span class="ll box-bullet12 b"><h6>Order</h6></span></div>
            <div class="content"><div class="detail">
              <div align="center" style="height: 40px; line-height:40px; font-size:14px; font-weight:bold; color: red">
                DEMO LẬP TRÌNH TÍCH HỢP NÚT "THANH TOÁN ĐƠN HÀNG"  VÀO WEBSITE BÁN HÀNG
              </div>
              <div align="center" style="height: 40px; line-height:40px; font-size:16px;">Trang hoá đơn bán hàng</div>
                <table border="1" cellpadding="3" cellspacing="0" style="border-collapse:collapse;" width="600px" align="center">
                <tr bgcolor="#CCCCCC">
                <td align="center" width="30">STT</td>
                <td align="center">Tên</td>			
                <td align="center">Giá</td>
                <td align="center">SL</td>
                <td align="center">Thành tiền</td>
              </tr>
            <tr>
              <td colspan="2">
            
            <a href="<?php echo $url;?>"> 
              <img border="0" src="https://www.nganluong.vn/data/images/buttons/11.gif" /> 
              </a>
              
              </td>
                <td colspan="3" align="right"><b>Tổng tiền:</b> <?php echo $price?> VND</td>
                </tr>
            </table>
            </div></div>
        </div>
    </div>
</div>
</div>

	<div class="inner"></div>
<div style='clear:both;'></div>
    <div id="toTop">^ Back to top</div>   
</div>
<div style='clear:both;'></dv>
<div id="footer" style='margin-top:10px; '>	
    <div class="copyright">&copy; Copyright Humming Flowers & Gifts Pte Ltd. All Right Reserved.</div>
    <div class="payment">Payment accepted &nbsp;&nbsp;&nbsp;&nbsp; <img src="http://www.hummings.com/images/ico_payment.png" width="153" height="20" align="absmiddle" /></div>
    <div style="clear:both;"></div>
        <div class="textofbottom">
<p style="color:#666; text-align:left; font-weight:normal; background-color:#fff; padding:20px;"><strong>Buy special flowers, gifts and hampers  online at <a href="http://www.hummings.com" style="color:#000;  text-decoration:underline;">Hummings.com</a></strong><br />
  <br />
  Customers in  Singapore, Malaysia and China would be glad to know that they can now order  special flowers and gifts online at <a href="http://www.hummings.com" style="color:#000;  text-decoration:underline;">Hummings.com</a> Humming Flowers &amp;  Gifts aims to offer the freshest flowers and the most value-for-money gifts at  suit your gifting needs at affordable prices. We do our best to make sure that  this is accompanied by personalized and prompt service. Humming Flowers &amp;  Giftsis the efficient hampers, flowers and gifts company, sought after for our <a href="http://www.hummings.com/cart/eshop/by_category/show/Categories_201_/" style="color:#000;">wide  choices</a>, personable service, eye-catching product designs and packaging, as  well as in-depth <a href="http://www.hummings.com/cart/articles/main/category/12/" style="color:#000; text-decoration:underline;">knowledge of local customs</a>.  Please link  <a href="http://www.hummings.com" style="color:#000;  text-decoration:underline;">Hummings.com</a><br />
  <br />
  <strong>Traditional Asian gifts and hampers  available online</strong><br />
  <br />
  Buy traditional  Asian gifts and hampers online at <a href="http://www.hummings.com" style="color:#000;  text-decoration:underline;">Hummings.com</a>. Our customers in  Singapore, Malaysia and China can look forward to sending gifts with that  traditional touch during festivals such as Chinese New Year , Mid-Autumn  Festival, Hari Raya,Deepavali and Diwali. We are sure that our gifts would be able  to fully capture the essence of the festival or occasion in question, allowing  you to give gifts that would leave a lasting impression.<br />
  <br />
  <strong>Flowers, gifts and hampers for all  occasions available online</strong><br />
  <br />
  <a href="http://www.hummings.com" style="color:#000;  text-decoration:underline;">HummingFlowers  &amp; Gifts</a> offers flowers, gifts and hampers for all occasions at its online store. Whether  it is for family – <a href="http://www.hummings.com/cart/eshop/by_category/show/Mothers Day_391_/" style="color:#000;  text-decoration:underline;">Mother's Day</a>, <a href="http://www.hummings.com/cart/eshop/by_category/show/Fathers Day_332_/" style="color:#000;  text-decoration:underline;">Father's Day</a> or for the <a href="http://www.hummings.com/cart/eshop/by_category/show/Newborn_335_/" style="color:#000;  text-decoration:underline;">newborn</a> or <a href="http://www.hummings.com/cart/eshop/product_detail/show/Happy 1st Month!_1090_294/" style="color:#000;  text-decoration:underline;">baby's full-month celebration</a>,for happy occasions such as <a href="http://www.hummings.com/cart/eshop/by_category/show/Grand Opening_352_/" style="color:#000;  text-decoration:underline;">grand openings</a>, <a href="http://www.hummings.com/cart/eshop/by_category/show/Housewarming Gifts_295_/" style="color:#000;  text-decoration:underline;">housewarming</a> and <a href="http://www.hummings.com/cart/eshop/by_category/show/Wedding Gifts_390_/" style="color:#000;  text-decoration:underline;">weddings</a> or for your special someone on your <a href="http://www.hummings.com/cart/eshop/by_category/show/Anniversary_392_/" style="color:#000;  text-decoration:underline;">Anniversary</a> and <a href="http://www.hummings.com/cart/eshop/by_category/show/Valentines Day_395_/" style="color:#000;  text-decoration:underline;">Valentine's Day</a>, we have something special that your loved one is  bound to remember. Humming Flowers &amp; Giftsalso wants to be here for you  whenhelping you express your sincerest condolences during the <a href="http://www.hummings.com/cart/eshop/by_category/show/Sympathy_353_/" style="color:#000;  text-decoration:underline;">wake or  funeral</a>of a friend or a loved one. There for you through thick and thin, <a href="http://www.hummings.com" style="color:#000;  text-decoration:underline;">Humming  Flowers &amp; Gifts</a> is like a close friend who never leaves your side.<br />
  <br />
  <strong>Wide variety of flowers available  online at <a href="http://www.hummings.com" style="color:#000;  text-decoration:underline;">Hummings.com</a></strong><br />
  <br />
  Choose from a  wide variety of flowers and order online at Hummings.com. This variety includes <a href="http://www.hummings.com/cart/articles/main/view/Help Me Find a Rose_23_/" style="color:#000;  text-decoration:underline;">roses</a>, <a href="http://www.hummings.com/cart/articles/main/view/Help Me Find a Gift_22_/" style="color:#000;  text-decoration:underline;">sunflowers</a> and <a href="http://www.hummings.com/cart/articles/main/view/Help Me Find a Gift_22_/" style="color:#000;  text-decoration:underline;">tulips</a>, and comes in the form of <a href="http://www.hummings.com/cart/eshop/by_category/show/Hand Bouquets_336_/" style="color:#000;  text-decoration:underline;">hand  bouquets</a>, <a href="http://www.hummings.com/cart/eshop/by_category/show/Table Arrangements_340_/" style="color:#000;  text-decoration:underline;">table arrangements</a> and <a href="http://www.hummings.com/cart/eshop/by_category/show/Everlasting Blooms_344_/" style="color:#000;  text-decoration:underline;">everlasting blooms</a> (or artificial  flowers). With an amazing array of flowers like ours, you will never run out of  flower ideas for your friends and loved ones.<br />
  <br />
  <strong><a href="http://www.hummings.com/cart/eshop/by_category/show/Get Well_349_/" style="color:#000;  text-decoration:underline;">Get well soon</a></strong><a href="http://www.hummings.com/cart/eshop/by_category/show/Get%20Well_349_/" style="color:#000;  text-decoration:underline;"></a><strong> or speedy  recovery gifts for your HR and personal needs available online at <a href="http://www.hummings.com" style="color:#000;  text-decoration:underline;">Hummings.com</a></strong><br />
  <br />
  Looking for a <a href="http://www.hummings.com/cart/eshop/by_category/show/Get Well_349_/" style="color:#000;  text-decoration:underline;">get well soon</a> (orspeedy  recovery) gift for your friend or loved one? Are you a Human Resource (HR)  professional looking for a get well soon (or speedy recovery) gift for your  staff? Hummings.com has a wide range of gift baskets (or hampers) that contain  wellness treats guaranteed to put a smile on the recipient's face and restore  him to the pink of health in no time! <br />
  <br />
  <strong>Personalised  banners available online at <a href="http://www.hummings.com" style="color:#000;  text-decoration:underline;">Hummings.com</a></strong><br />
  <br />
  Get your personalized gift banners  online at Hummings.com. Humming Flowers &amp; Gifts provides personalized and  customized gift banners at its online store to make it easy for you <br />
  <br />
  Attending a <a href="http://www.hummings.com/cart/eshop/by_category/show/Grand Opening_352_/" style="color:#000;  text-decoration:underline;">grand opening</a>? Only Humming  Flowers &amp; Gifts can digitally customize grand opening banners by including  corporate logos and pictures with a day's notice (minimum 200dpi). <br />
  <br />
  Looking for somethingto relay your <a href="http://www.hummings.com/cart/eshop/by_category/show/Sympathy_353_/" style="color:#000;  text-decoration:underline;">deepest  sympathy</a>? Let Humming Flowers &amp; Gifts help you convey your sincerest  condolences with its <a href="http://www.hummings.com/cart/eshop/product_detail/show/Timeless Tribute_856_353/" style="color:#000;  text-decoration:underline;">Personalized Tributes</a><a href="http://www.hummings.com/cart/eshop/product_detail/show/Timeless%20Tribute_856_353/" style="color:#000;  text-decoration:underline;">&amp; Personalized  Messenger Boxes</a> available at its online store. Our personalized tributes  and personalized messenger box could definitely help you give a fitting tribute  that would not only honor the life of the dearly departed but also provide much  needed comfort for those near and dear to him or her.<br />
  <br />
  Getting married  or planning for your ROM? Our online store provides <a href="http://www.hummings.com/cart/eshop/product_detail/show/Comforting Memo_1199_353/" style="color:#000;  text-decoration:underline;">personalized  wedding banner</a> to help you achieve your dream wedding. <a href="http://www.hummings.com" style="color:#000;  text-decoration:underline;">Humming Flowers  &amp; Gifts</a> is the only florist and gift shop in Singapore to offer  personalized wedding banners for your newly-wed friends and loved ones. <br />
  <br />
  <strong>Wide variety of gifts available online  at <a href="http://www.hummings.com" style="color:#000;  text-decoration:underline;">Hummings.com</a></strong><br />
  <br />
  Be spoiled for  choice as our wide variety of gifts available here at our online store includes <a href="http://www.hummings.com/cart/eshop/by_category/show/Urban Lifestyle_342_/" style="color:#000;  text-decoration:underline;">home appliances</a>, <a href="http://www.hummings.com/cart/eshop/by_category/show/Fruits &amp; Flowers_347_/" style="color:#000;  text-decoration:underline;">fresh fruits</a>, <a href="http://www.hummings.com/cart/eshop/by_category/show/Gourmet Food Hampers_343_/" style="color:#000;  text-decoration:underline;">imported chocolates</a>, <a href="http://www.hummings.com/cart/eshop/by_category/show/Birthday For Ladies_256_337/" style="color:#000;  text-decoration:underline;">fragrances</a> and <a href="http://www.hummings.com/cart/eshop/by_category/show/Birthday For Men_257_337/" style="color:#000;  text-decoration:underline;">quality pens for men</a>. <br />
  <br />
  <strong>Classy gifts available at online  florist and gift store <a href="http://www.hummings.com" style="color:#000;  text-decoration:underline;">Hummings.com</a></strong><br />
  <br />
  Want to give a gift that exudes style and charm?  Our online store offers classy gifts such as Bvlgari and Anna Sui perfumes, CK  and Hugo Boss colognes, Alain Delon and <a href="http://www.hummings.com/cart/eshop/product_detail/show/Simply Lindt_1247_343/" style="color:#000;  text-decoration:underline;">Lindt chocolates</a> and <a href="http://www.hummings.com/cart/eshop/product_detail/show/Urbane Man (Brown Leatherette)_1322_257/" style="color:#000;  text-decoration:underline;">ipad  covers</a>.<br />
  <br />
  <strong>At <a href="http://www.hummings.com" style="color:#000;  text-decoration:underline;">Humming Flowers &amp; Gifts</a> we do everything with you in mind </strong><br />
  <br />
  At Humming  Flowers &amp; Gifts we always aim to create a gifting experience… with you in  mind. We do this for you by keeping true to our belief of Quality, Creativity,  Service and Value. Humming Flowers &amp; Gifts is a one-stop shop for all your  gifting needs, allowing you to find flowers, gifts and hampers all in one place. <br />
  <br />
  <strong>Reliable, same-day and island-wide  delivery available online </strong><br />
  <br />
  By leveraging on  our operating systems and resources, we are able to make same-day deliveries  island-wide, making us the reliable flowers and gifts company in Singapore,  Malaysia and China. </p>

    </div>
  </div>
</div>

   
</script>


    

		<script type="text/javascript">

         

          var _gaq = _gaq || [];

           _gaq.push(['_setAccount', 'UA-36134782-1']);

           _gaq.push(['_trackPageview']);

         

          (function() {

             var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;

             ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';

             var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);

           })();

         

        </script>    
<!-- Google Code for Christmas 2012 Conversion Page -->
<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 994114048;
var google_conversion_language = "en";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "2kS4CKDchAQQgPSD2gM";
var google_conversion_value = 0;
/* ]]> */
</script>
<script type="text/javascript" src="http://www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/994114048/?value=0&amp;label=2kS4CKDchAQQgPSD2gM&amp;guid=ON&amp;script=0"/>
</div>
</noscript> 


</body>

</html>
