<div class=ctop_full></div>
<div class=cmid_full>	
 <div style='padding-left:10px;'>
 {$product_detail}
 </div>
 <div style='clear:both;'></div>

  <div style='clear:both;'></div>
</div>
<div class=cbot_full></div>
<div style='border:0px solid red;'>

  <div class=ctop_full></div>
  <div class=cmid_full>	

    <div style='border-top:0px solid #ccc; margin:0px; 10px;'>
    
    <table>
     <tr>
        <td valign=top>
            <div style='padding-left:25px;'>
            <h2>Post a comment</h2>

            <div id="fb-root">
            </div>
            {literal}
            <script>(function(d, s, id) {
              var js, fjs = d.getElementsByTagName(s)[0];
              if (d.getElementById(id)) return;
              js = d.createElement(s); js.id = id;
              js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=242802689075885";
              fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script>

    	{/literal}
            <div class="fb-comments" data-href="{$cur_page}" data-num-posts="10" data-width="500">
            </div>
             </div> 
        </td>
        <td width=35> 
        </td>
        <td valign=top>
          {literal} 
            <script src="http://platform.twitter.com/anywhere.js?id=vobbOMeX1NR24uYb24nUA&v=1" /></script>
            <script src='http://code.jquery.com/jquery-latest.pack.js'></script>
            <script src='http://www.hummings.com/includes/js/jsTweetBox.js'></script>
						<script>
            function popupWindow(mypage, myname, w, h, scroll) {
              var winl = (screen.width - w) / 2;
              var wint = (screen.height - h) / 2;
              winprops = 'height=' + h + ',width=' + w + ',top=' + wint + ',left=' + winl
                  + ',scrollbars=' + scroll + ',resizable'
              win = window.open(mypage, myname, winprops)
              if (parseInt(navigator.appVersion) >= 4) {
                win.window.focus();
              }
            }
            </script>  
            <style>
						.twarea {
							border-color: #69C;
							border-style: solid;
							border-width: thin;
							padding: 3px;
							width:350px;
							height:30px;
						}
                
            .tweetbutton {
            inherit: none;
            height: 22px;
            display: inline-block;
            border-radius: 3px;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            /* gradient background -- thanks http://ie.microsoft.com/testdrive/graphics/cssgradientbackgroundmaker/ */
            background: url('https://si0.twimg.com/images/dev/cms/intents/bird/bird_blue/bird_16_blue.png') no-repeat 2px 1px, -ms-linear-gradient(top, #FEFEFE 0%, #DFDFDF 100%);
            background: url('https://si0.twimg.com/images/dev/cms/intents/bird/bird_blue/bird_16_blue.png') no-repeat 2px 1px, -moz-linear-gradient(top, #FEFEFE 0%, #DFDFDF 100%);
            background: url('https://si0.twimg.com/images/dev/cms/intents/bird/bird_blue/bird_16_blue.png') no-repeat 2px 1px, -o-linear-gradient(top, #FEFEFE 0%, #DFDFDF 100%);
            background: url('https://si0.twimg.com/images/dev/cms/intents/bird/bird_blue/bird_16_blue.png') no-repeat 2px 1px, -webkit-gradient(linear, left top, left bottom, color-stop(0, #FEFEFE), color-stop(1, #DFDFDF));
            background: url('https://si0.twimg.com/images/dev/cms/intents/bird/bird_blue/bird_16_blue.png') no-repeat 2px 1px, -webkit-linear-gradient(top, #FEFEFE 0%, #DFDFDF 100%);
             
            border: 1px solid #cccccc;
            padding-left: 22px;
            padding-right: 4px;
            padding-top: 2px;
            padding-bottom:2px;
            font-weight: bold;
            font-size: 0.7em;
            font-family: Arial;
            color: #333333;
            text-decoration: none;
            cursor:pointer;
            }
             
            .tweetbutton:hover {
            background: url('https://si0.twimg.com/images/dev/cms/intents/bird/bird_blue/bird_16_blue.png') no-repeat 2px 1px, -ms-linear-gradient(top, #f7f7f7 0%, #d9d9d9 100%);
            background: url('https://si0.twimg.com/images/dev/cms/intents/bird/bird_blue/bird_16_blue.png') no-repeat 2px 1px, -moz-linear-gradient(top, #f7f7f7 0%, #d9d9d9 100%);
            background: url('https://si0.twimg.com/images/dev/cms/intents/bird/bird_blue/bird_16_blue.png') no-repeat 2px 1px, -o-linear-gradient(top, #f7f7f7 0%, #d9d9d9 100%);
            background: url('https://si0.twimg.com/images/dev/cms/intents/bird/bird_blue/bird_16_blue.png') no-repeat 2px 1px, -webkit-gradient(linear, left top, left bottom, color-stop(0, #f7f7f7), color-stop(1, #d9d9d9));
            background: url('https://si0.twimg.com/images/dev/cms/intents/bird/bird_blue/bird_16_blue.png') no-repeat 2px 1px, -webkit-linear-gradient(top, #f7f7f7 0%, #d9d9d9 100%);
            }
              </style>            
            {/literal}
            <div id='js-tweet-box'></div>
            <br />
            <div style="padding-top:6px;">
            <form name="fronttw">
            <textarea class='twarea' name="txttwarea"></textarea>
            <p align="right"><input type="button" value="Tweet" class="tweetbutton" onclick="javascript:popupWindow('https://twitter.com/intent/tweet?profile_id=297868819&amp;tw_p=embeddedtimeline&amp;text='+document.fronttw.txttwarea.value+'&amp;tw_w=316731413166690305', '', 800, 400, 1);" /></p>
            
            </form>
            <div><a class="twitter-timeline" href="https://twitter.com/HummingFlowers" data-widget-id="316731413166690305">Tweets by @HummingFlowers</a>
{literal}<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>{/literal}
</div>
            </div>
       </td>
     </tr>
    </table>
    
    </div> 

   </div>

   <div style='clear:both;'></div>
   </div>
   
   <div class=cbot_full></div>
    <div style='clear:both;'></div>
{$product_review_main}
<div style='clear:both;'></div>
</div>