{literal}
<style>
	body, html {
		padding:0px;
		margin:0px;
	}
	.likeImage{
    width: 100px;
    height: 34px;
    background-image: url("http://www.hummings.com/images/like_facebook.png");
    background-repeat: no-repeat; 
	float:left;
}
.follow_twitter{
	margin-left:20px;
    width: 116px;
    height: 34px;
    background-image: url("http://www.hummings.com/images/follow_us_twitter.png");
    background-repeat: no-repeat;
	float:left;
}
.follow_instagram{
	margin-left:20px;
    width: 137px;
    height: 34px;
    background-image: url("http://www.hummings.com/images/follow_instagram.png");
    background-repeat: no-repeat;
	float:left;
}
.likeImage iframe, .follow_twitter iframe{
    opacity: 0;
}
</style>
{/literal}
<html>
	<body>
<table width="696" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="33px" height="10px">&nbsp;</td>
    <td>&nbsp;</td>
    <td width="33px">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>Dear {$email_to},</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><img src="{$php5WebPath}/images/email/top1.jpg" ></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><p>You now have full access to our 24 hours shopping service online.<br /><br />
      Your UserID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:  {$email_to}<br />
      Your Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: {$password}
  <br /><br />
      From now onwards, you'd be the first to receive news on our latest promotions and updates on our newest arrivals.
    </p>
      <p>Business hours:<br>
        Monday to Friday: 9.00am to 6.15pm<br>
      Saturday&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: 9.00am to 2.00pm        </p><p>As you are our top priority at Humming, we would also like to hear from you if you have any feedback or compliments. Email us at: online@humming.com.sg<br /><br />
    </p></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><img src="{$php5WebPath}/images/email/footer.jpg" ></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center"><hr size="1" color="#ccc">
   <div style="width:600px; margin:auto;"> <div class="likeImage">
<iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.hummings.com&amp;send=false&amp;layout=button_count&amp;width=400&amp;show_faces=false&amp;font&amp;colorscheme=light&amp;action=like&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:400px; height:21px;" allowTransparency="true"></iframe>
</div>

<div class="follow_twitter">
<iframe allowtransparency="true" frameborder="0" scrolling="no" src="https://platform.twitter.com/widgets/follow_button.html?screen_name=hummingflowers" style="width:150px; height:34px;"></iframe>
</div>
<div class="follow_instagram">
<a href="http://instagram.com/hummingflowers#" target="_blank"><img src="{$php5WebPath}/images/follow_instagram.png" border="0"></a>
</div> 
</div>
<div style="clear:both;"></div>
    <hr size="1" color="#ccc">
    </td>
    <td>&nbsp;</td>
  </tr>    
</table>
	</body>
</html>
