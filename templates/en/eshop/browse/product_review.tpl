<div class=ctop_full></div>
<div class=cmid_full>	
{literal}
<script>
function check_reviewform() {

		var comment = document.getElementById('comment');



		var ausgewaehlt = false;


			if (comment.value.length==0) {
				alert('Please enter your review!');
				return false;
			}else {
				return true;
			}

		}

</script>
{/literal}

<div style='border:0px solid red;'>

  <div class=cmid_full>	

    <div style='border-top:0px solid #ccc; margin:0px; 10px;'>   
            <div style='padding-left:25px;'>
            <h2>Reviews</h2>
				<div>&nbsp;</div>
 <div class="list-reviews">
 {if $ratings}
 {foreach from=$ratings item=rating}
 <form action="{$url_review}" name="frmRating{$rating.idx}" method="post">
 <input type='hidden' name='task' value='helpful'>
 <input type="hidden" name="review_id" value="{$rating.rating_review_id}" />
 <input type="hidden" name="helpful" value="{$rating.helpful}" />
 <input type="hidden" name="report_abuse" value="{$rating.report_abuse}" /> 
 <input type="hidden" name="product_id" value="{$product_id}" />
 <div style="font-size:14px;"><strong>{$rating.title}</strong></div>
 {if $rating.helpful>0}
 <div style="font-size:10px;">{$rating.helpful} people found the following review helpful</div>
 {/if}
 <div style="float:left; width:80px;">
  <span class="vote"> 
  <span title="{$rating.voteText}" class="vmicon ratingbox" style="display:inline-block;width:70px;"> 
  <span class="stars-orange" style="width:{$rating.star}px"></span>
  </span>
  </span></div>
 <div style="float:left;color:#666; font-size:11px; font-style:italic; margin-top:5px;">Posted on <strong>{$rating.created_on}</strong> by <strong>{$rating.user_name}</strong></div>
 <div class="clr"></div> 
 <p> {$rating.comment}</p>
 <div id="review_message"></div>
 {if $user->user_id}
 <p><span style="color:#eb4ea6;"><strong>Was this review helpful to you?</strong></span> <input name="" type="button" value="Yes" onclick="doReview('helpful', {$rating.rating_review_id});" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <span style="color:#D50955; text-decoration:underline; cursor:pointer;" onclick="javascript:doReview('report_abuse', {$rating.rating_review_id});"><strong>Report abuse</strong></span></p>
 {else}
 <p><span style="color:#eb4ea6;"><strong>Was this review helpful to you?</strong></span> <input name="" type="button" value="Yes" onclick="window.location.href='{$url_login}'" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <span style="color:#D50955; text-decoration:underline; cursor:pointer;" onclick="javascript:window.location.href='{$url_login}';"><strong>Report abuse</strong></span></p>
 {/if}
 <hr size="1" color="#ccc" width="98%" align="left" />
 </form>
  {/foreach}
  {/if}
  {if $user->user_id}
 		{if !$user_exist}
      <form action='{$url_review}' method=post onsubmit="return check_reviewform();">
<input type='hidden' name='product_id' value='{$product_id}' />
<input type='hidden' name='id' value='{$product_id}' />
<input type='hidden' name='task' value='addreview'>
<input type='hidden' name='created_by' value='{$user->user_id}'>
      <div style=' margin-top:15px; padding:15px; border:1px solid #ddd; text-align:left;'>
      	<div><select name="vote" id="vote" size=​"1" class aria-invalid=​"false">
           {html_options options=$votes}
               </select></div>               
        <p>Title:<br />
        <input name="title" type="text" size="70" maxlength="255" />
		</p>
        <div>Review

				<br />

				<textarea title="Submit Review" class="inputbox" id="comment" name="comment" rows="5" cols="60"></textarea>
		
</div> 
				<div style="color:#BB0986; font-style:italic; width:500px; margin-top:5px; margin-bottom:5px; font-size:11px;"><strong>Note:</strong> Humming Flowers & Gifts reserves the right not to publish any comment that contains any form of vulgarity and deemed offensive. </div>
				<div><input type=submit class=button value=' Submit review ' onclick="alert('Thank you for your review!');" /></div>
      </div> 

     <div style='margin-top:15px; '>
     		
     </div>   
    {/if}
  {else}      
	<div><input type=button value=' Please log in to place a review ' onclick="window.location='{$url_login}'" /></div>   
  {/if}
</div>
<input type="hidden" name="product_id" value="{$product_id}" />
</form>
 <div style='clear:both;'></div>
</div>
<div class=cbot_full></div>
{literal}
<script language="javascript">
function doReportAbuse(obj){
	obj.task.value='report_abuse';
	alert("Thanks for your feedback.");
	obj.submit();
}
</script>
{/literal}
