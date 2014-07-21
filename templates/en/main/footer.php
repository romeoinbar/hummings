<div style='margin:auto; width:1025px;' >

	<div class="clr">&nbsp;</div>

	<div id="newsletter" style='border:0px solid red;'>

   	<form action="{$link_newsletter}" method="post" name="frmNewsletter2" onsubmit="return checkAgreeNewsletter(this);">

     <table width="100%" border="0" cellspacing="0" cellpadding="0">

       <tr>

         <td width="40"><img src="{$php5WebPath}/images/ico_newsletter1.png" width="29" height="25" /></td>

         <td width="290" style="text-transform:uppercase;"><strong>sign up to receive updates 

         &amp; special offers</strong></td>

         <td align="right"><input name="nameNewsletter" type="text" class="textinput" id="namex" size="30" placeholder="Name" style=" width:180px;" />

         <input name="emailNewsletter" type="text" class="textinput" id="emailx" value="" size="30" placeholder="Email"  style=" width:180px;"  />

         </td>

         <td align="left">&nbsp;

         <input type="submit" name="button" id="button" value="GO" class="gray_btn1" style="margin-top:5px; padding-top:2px;"   onClick="clear_placeholder2();"  /></td>

         <td width=100> </td>

         <td align=right valign=center>

            <a href='https://www.facebook.com/HummingFlowersandGifts'  target=_blank border=0><img src='{$php5WebPath}/images/facebook_i.png' border=0 style='width:20px height:20px; padding-top:5px;' ></a>  &nbsp;

            <a href='https://twitter.com/hummingflowers' target=_blank border=0><img src='{$php5WebPath}/images/twitter_i.png' border=0 style='width:20px height:20px; padding-top:5px;'  ></a>  &nbsp;

            <a href='{$url_rss}' border=0><img src='{$php5WebPath}/images/rss_i.png' border=0  style='width:20px height:20px; padding-top:5px;'  ></a>  &nbsp;                     

         </td>         

       </tr>
<tr>

         <td width="40"></td>

         <td width="290" style="text-transform:uppercase;"></td>

         <td align="right"><input type="checkbox" name=newsletter_agree id=newsletter_agree value=1 /> I agree to receive the hummings email newsletter 

         </td>

         <td align="left">&nbsp;

        </td>

         <td width=100> </td>

         <td align=right valign=center>

                   

         </td>         

       </tr>
     </table>

     </form>

	</div>

<!-- ----------------------------// Begin Bottom menu //------------------------------------------- -->

<div id="bottom_menu_box" style='border:0px solid red;  PADDING-TOP:5PX; height:420px;'>

	<div class="inner">

    	<div class="block2" style='padding-top:5px; border:0px solid red; width:140px;' >

          <div class="bottom_header">Shop By Categories</div>

          <div class="block11">

         <a href="{$link_flower}" class="bottommenu">Flowers</a><br />

         <a href="{$link_gift}" class="bottommenu">Gifts</a><br />

         <a href="{$link_hamper}" class="bottommenu">Hampers</a>

          </div>

      </div>

    	<div class="block2" style='padding-top:5px; border:0px solid red; width:130px;' >

          <div class="bottom_header">Shop By Occasions</div>

          <div class="block11">

          {foreach from=$bottom_cats1 item=bottom_cat}

          <a href="{$bottom_cat->url}" class="bottommenu" {$bottom_cat->activemenu}>{$bottom_cat->name}</a><br />

          {/foreach}

          </div>

      </div>

        <div class="block2" style='padding-top:5px; border:0px solid red; width:100px;' >

        	<div class="bottom_header">Shop by price</div>

            <p>

            <a href="{$php5WebPath}/cart/eshop/by_price/show/20_50" class="bottommenu">$20-$50</a><br /> 

            <a href="{$php5WebPath}/cart/eshop/by_price/show/50_80" class="bottommenu">$50-$80</a><br /> 

            <a href="{$php5WebPath}/cart/eshop/by_price/show/80_120" class="bottommenu">$80-$120</a><br /> 

            <a href="{$php5WebPath}/cart/eshop/by_price/show/120_9999" class="bottommenu">$120 and above</a><br /> 

           </p>

        </div>

      	<div class="block3" style='padding-top:5px; border:0px solid red; width:180px;'  >

            <div class="bottom_header">More Info</div>

            <p>

            {foreach from=$more_infos item=more_info}

            <a href="{$more_info->url}" class="bottommenu">{$more_info->title}</a><br />           

           {/foreach}

           </p>

           {$config_contactus}

        </div>

      <div class="block4" style='padding-top:5px; border:0px solid red;width:250px;' >

       	<div class="bottom_header" style='margin-bottom:10px;'>Like Humming Flowers & gifts</div> 

        <iframe src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2FHummingFlowersandGifts&amp;width=240&amp;height=275&amp;colorscheme=light&amp;show_faces=true&amp;border_color&amp;stream=false&amp;header=false&amp;appId=242802689075885" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:240px; height:320px;" allowTransparency="true"></iframe></div>

    </div>

<div style='clear:both;'></div>

    <div id="toTop">^ Back to top</div>   

</div>

<div style='clear:both;'></dv>

<div id="footer" style='margin-top:10px; '>	

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="background-color:#fff;">

  <tr>

    <td width="380" align="center">&copy; Copyright Humming Flowers & Gifts Pte Ltd. All Right Reserved.</td>

    <td align="right" style="padding-right:10px; padding-bottom:10px;">

    <img src="{$php5WebPath}/images/biz_safe3.png" height="50" hspace="20" align="left" />&nbsp;&nbsp;

<!--- DO NOT EDIT - GlobalSign SSL Site Seal Code - DO NOT EDIT --->

    <table width=130 border=0 cellspacing=0 cellpadding=0 align="left" title="CLICK TO VERIFY: This site uses a GlobalSign SSL Certificate to secure your personal information." >

    <tr><td>

    <span id="ss_img_wrapper_100-50_image_en"><a href="http://www.globalsign.com.sg/ssl/" target=_blank title="SSL">

    <img alt="Buy SSL Certificate" border=0 id="ss_img" src="//seal.globalsign.com/SiteSeal/images/gs_noscript_110-55_en.gif">

    </a></span>

    {literal}

	<script type="text/javascript" src="//seal.globalsign.com/SiteSeal/gs_image_100-50_en.js" defer></script>

    {/literal}

    <br /><a href="http://www.globalsign.com.sg/ssl-information-center/" target=_blank title="Get Info about GlobalSign SSL Certificates" style="color:#000000; text-decoration:none; font:bold 8px arial; margin:0px; padding:0px;">

    SSL CERTIFICATES - Get Info</a></td></tr></table>

    <!--- DO NOT EDIT - GlobalSign SSL Site Seal Code - DO NOT EDIT --->

    <div style="float:right; width:166px; text-align:left;">

    Payment accepted<br /><img src="{$php5WebPath}/images/ico_payment.png" height="50" align="absmiddle" />

    </div>

    </td>

  </tr>

</table>



   <!-- <div class="copyright"></div>

    <div class="payment">

    </div>-->

    <div style="clear:both;"></div>

    {if $display_bottom==1}

    <div class="textofbottom">

<p style="color:#666; text-align:left; font-weight:normal; background-color:#fff; padding:20px;"><strong>Buy special flowers, gifts and hampers  online at <a href="{$php5WebPath}" style="color:#000;  text-decoration:underline;">Hummings.com</a></strong><br />

  <br />

  Customers in  Singapore, Malaysia and China would be glad to know that they can now order  special flowers and gifts online at <a href="{$php5WebPath}" style="color:#000;  text-decoration:underline;">Hummings.com</a> Humming Flowers &amp;  Gifts aims to offer the freshest flowers and the most value-for-money gifts at  suit your gifting needs at affordable prices. We do our best to make sure that  this is accompanied by personalized and prompt service. Humming Flowers &amp;  Gifts is the efficient hampers, flowers and gifts company, sought after for our <a href="http://www.hummings.com/cart/eshop/by_category/show/Newborn_407_407/" style="color:#000;">wide  choices</a>, personable service, eye-catching product designs and packaging, as  well as in-depth <a href="http://www.hummings.com/cart/articles/main/category/12/" style="color:#000; text-decoration:underline;">knowledge of local customs</a>.<br />

  <br />

  <strong>Traditional Asian gifts and hampers  available online</strong><br />

  <br />

  Buy traditional  Asian gifts and hampers online at <a href="{$php5WebPath}" style="color:#000;  text-decoration:underline;">Hummings.com</a>. Our customers in  Singapore, Malaysia and China can look forward to sending gifts with that  traditional touch during festivals such as Chinese New Year , Mid-Autumn  Festival, Hari Raya,Deepavali and Diwali. We are sure that our gifts would be able  to fully capture the essence of the festival or occasion in question, allowing  you to give gifts that would leave a lasting impression.<br />

  <br />

  <strong>Flowers, gifts and hampers for all  occasions available online</strong><br />

  <br />

  <a href="{$php5WebPath}" style="color:#000;  text-decoration:underline;">Humming Flowers  &amp; Gifts</a> offers flowers, gifts and hampers for all occasions at its online store. Whether  it is for family – Mother’s Day, Father’s Day or for the <a href="http://www.hummings.com/cart/eshop/by_category/show/Newborn_407_407/" style="color:#000;  text-decoration:underline;">newborn</a> or <a href="http://www.hummings.com/cart/eshop/by_category/show/Baby 1st Month Banner &amp; Balloons_406_/" style="color:#000;  text-decoration:underline;">baby’s full-month celebration</a>,for happy occasions such as <a href="http://www.hummings.com/cart/eshop/by_category/show/Grand Opening_417_/" style="color:#000;  text-decoration:underline;">grand openings</a>, <a href="http://www.hummings.com/cart/eshop/by_category/show/Housewarming Gifts_415_411/" style="color:#000;  text-decoration:underline;">housewarming</a> and <a href="http://www.hummings.com/cart/eshop/by_category/show/Wedding Gifts_411_415/" style="color:#000;  text-decoration:underline;">weddings</a> or for your special someone on your <a href="http://www.hummings.com/cart/eshop/by_category/show/Anniversary- Romance_429_/" style="color:#000;  text-decoration:underline;">Anniversary</a> and Valentine’s Day, we have something special that your loved one is  bound to remember. Humming Flowers &amp; Gifts also wants to be here for you  when helping you express your sincerest condolences during the <a href="http://www.hummings.com/cart/eshop/by_category/show/Sympathy_422_/" style="color:#000;  text-decoration:underline;">wake or  funeral</a> of a friend or a loved one. There for you through thick and thin, <a href="{$php5WebPath}" style="color:#000;  text-decoration:underline;">Humming  Flowers &amp; Gifts</a> is like a close friend who never leaves your side.<br />

  <br />

  <strong>Wide variety of flowers available  online at <a href="{$php5WebPath}" style="color:#000;  text-decoration:underline;">Hummings.com</a></strong><br />

  <br />

  Choose from a  wide variety of flowers and order online at Hummings.com. This variety includes <a href="http://www.hummings.com/cart/articles/main/view/Help Me Find a Rose_23_/" style="color:#000;  text-decoration:underline;">roses</a>, <a href="http://www.hummings.com/cart/articles/main/view/Help Me Find a Gift_22_/" style="color:#000;  text-decoration:underline;">sunflowers</a> and <a href="http://www.hummings.com/cart/articles/main/view/Help Me Find a Gift_22_/" style="color:#000;  text-decoration:underline;">tulips</a>, and comes in the form of <a href="http://www.hummings.com/cart/eshop/by_category/show/Hand Bouquets_409_/" style="color:#000;  text-decoration:underline;">hand  bouquets</a>, <a href="http://www.hummings.com/cart/eshop/by_category/show/Table Arrangements_412_409/" style="color:#000;  text-decoration:underline;">table arrangements</a> and <a href="http://www.hummings.com/cart/eshop/by_category/show/Everlasting Blooms_413_413/" style="color:#000;  text-decoration:underline;">everlasting blooms</a> (or artificial  flowers). With an amazing array of flowers like ours, you will never run out of  flower ideas for your friends and loved ones.<br />

  <br />

  <strong><a href="http://www.hummings.com/cart/eshop/by_category/show/Get Well_349_/" style="color:#000;  text-decoration:underline;">Get well soon</a></strong><a href="http://www.hummings.com/cart/eshop/by_category/show/Get%20Well_349_/" style="color:#000;  text-decoration:underline;"></a><strong> or speedy  recovery gifts for your HR and personal needs available online at <a href="{$php5WebPath}" style="color:#000;  text-decoration:underline;">Hummings.com</a></strong><br />

  <br />

  Looking for a <a href="http://www.hummings.com/cart/eshop/by_category/show/Get Well_421_/" style="color:#000;  text-decoration:underline;">get well soon</a> (or speedy  recovery) gift for your friend or loved one? Are you a Human Resource (HR)  professional looking for a get well soon (or speedy recovery) gift for your  staff? Hummings.com has a wide range of gift baskets (or hampers) that contain  wellness treats guaranteed to put a smile on the recipient’s face and restore  him to the pink of health in no time! <br />

  <br />

  <strong>Personalised  banners available online at <a href="{$php5WebPath}" style="color:#000;  text-decoration:underline;">Hummings.com</a></strong><br />

  <br />

  Get your personalized gift banners  online at Hummings.com. Humming Flowers &amp; Gifts provides personalized and  customized gift banners at its online store to make it easy for you <br />

  <br />

  Attending a <a href="http://www.hummings.com/cart/eshop/by_category/show/Grand Opening_417_/" style="color:#000;  text-decoration:underline;">grand opening</a>? Only Humming  Flowers &amp; Gifts can digitally customize grand opening banners by including  corporate logos and pictures with a day's notice (minimum 200dpi). <br />

  <br />

  Looking for something to relay your <a href="http://www.hummings.com/cart/eshop/by_category/show/Sympathy_422_/" style="color:#000;  text-decoration:underline;">deepest  sympathy</a>? Let Humming Flowers &amp; Gifts help you convey your sincerest  condolences with its <a href="http://www.hummings.com/cart/eshop/product_detail/show/Timeless Tribute_856_353/" style="color:#000;  text-decoration:underline;">Personalized Tributes</a><a href="http://www.hummings.com/cart/eshop/product_detail/show/Timeless Tribute_2208_422/" style="color:#000;  text-decoration:underline;">&amp; Personalized  Messenger Boxes</a> available at its online store. Our personalized tributes  and personalized messenger box could definitely help you give a fitting tribute  that would not only honor the life of the dearly departed but also provide much  needed comfort for those near and dear to him or her.<br />

  <br />

  Getting married  or planning for your ROM? Our online store provides <a href="http://www.hummings.com/cart/eshop/product_detail/show/Celebration of LOVE!_2150_405/" style="color:#000;  text-decoration:underline;">personalized  wedding banner</a> to help you achieve your dream wedding. <a href="{$php5WebPath}" style="color:#000;  text-decoration:underline;">Humming Flowers  &amp; Gifts</a> is the only florist and gift shop in Singapore to offer  personalized wedding banners for your newly-wed friends and loved ones. <br />

  <br />

  <strong>Wide variety of gifts available online  at <a href="{$php5WebPath}" style="color:#000;  text-decoration:underline;">Hummings.com</a></strong><br />

  <br />

  Be spoiled for  choice as our wide variety of gifts available here at our online store includes <a href="http://www.hummings.com/cart/eshop/by_category/show/Housewarming Gifts_415_407/" style="color:#000;  text-decoration:underline;">home appliances</a>, <a href="http://www.hummings.com/cart/eshop/by_category/show/Fruits &amp; Flowers_420_/" style="color:#000;  text-decoration:underline;">fresh fruits</a>, <a href="http://www.hummings.com/cart/eshop/by_category/show/Gourmet Food &amp; Chocolate Baskets_414_/" style="color:#000;  text-decoration:underline;">imported chocolates</a>, <a href="http://www.hummings.com/cart/eshop/product_detail/show/Timeless Coral_2133_408/" style="color:#000;  text-decoration:underline;">fragrances</a> and <a href="http://www.hummings.com/cart/eshop/product_detail/show/Write In Style (Pen with Key Case Set)_2137_408/" style="color:#000;  text-decoration:underline;">quality pens for men</a>. <br />

  <br />

  <strong>Classy gifts available at online  florist and gift store <a href="{$php5WebPath}" style="color:#000;  text-decoration:underline;">Hummings.com</a></strong><br />

  <br />

  Want to give a gift that exudes style and charm?  Our online store offers classy gifts such as Bvlgari and Anna Sui perfumes, CK  and Hugo Boss colognes, Alain Delon and Lindt chocolates and ipad  covers.<br />

  <br />

  <strong>At <a href="{$php5WebPath}" style="color:#000;  text-decoration:underline;">Humming Flowers &amp; Gifts</a> we do everything with you in mind </strong><br />

  <br />

  At Humming  Flowers &amp; Gifts we always aim to create a gifting experience… with you in  mind. We do this for you by keeping true to our belief of Quality, Creativity,  Service and Value. Humming Flowers &amp; Gifts is a one-stop shop for all your  gifting needs, allowing you to find flowers, gifts and hampers all in one place. <br />

  <br />

  <strong>Reliable, same-day and island-wide  delivery available online </strong><br />

  <br />

  By leveraging on  our operating systems and resources, we are able to make same-day deliveries  island-wide, making us the reliable flowers and gifts company in Singapore,  Malaysia and China. </p>



    </div>

    {/if}

</div>

</div>

{literal}

<script type="text/javascript">

$(function() {

	$(window).scroll(function() {

		if($(this).scrollTop() != 0) {

			$('#toTop').fadeIn();	

		} else {

			$('#toTop').fadeOut();

		}

	});

 

	$('#toTop').click(function() {

		$('body,html').animate({scrollTop:0},800);

	});	

});





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

{/literal}

