<div class="header1" style="float:left; width:300px;">Address book</div>
<div style="float:right;"><a href="{$add_url}"><strong>ADD NEW ENTRY [+]</strong></a></div>
<div class="clr">&nbsp;</div>
<div class="expand_wrapper">
{foreach from=$address_books item=address_book}
	<div class="expand_heading"><a href="#">{$address_book->name} , {$address_book->surname}</a></div>	
	<div class="toggle_container">
		<div class="box">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td valign="top"><p><strong>Title:</strong> {$address_book->title}</p>
            <p><strong>Surname:</strong> {$address_book->name}</p>
            <p><strong>Given name:</strong> {$address_book->name}</p>
            <p><strong>Gender: 
             </strong>
             
{if $address_book->gender eq '1'}
    Male
{elseif $address_book->gender eq '2'}
    Female
{else}
    
{/if}
             </p>
            <p><strong>Birthdate:  </strong>{$address_book->dob}</p>
            <p><strong>Mobile Number:</strong>{$address_book->pre_telephone1} {$address_book->mid_telephone1} {$address_book->telephone1}</p>
            <p><strong>Work Number:</strong> {$address_book->pre_telephone2} {$address_book->mid_telephone2} {$address_book->telephone2}</p>
            <p><strong>Fax Number:</strong> {$address_book->pre_fax} {$address_book->mid_fax} {$address_book->fax}</p></td>
            <td valign="top">
             <p><strong>Company:</strong> {$address_book->company}</p>
            <p><strong>Block / Unit:</strong> {$address_book->block}  {$address_book->ubit}</p>
            <p><strong>Building:</strong> {$address_book->building}</p>
            <p><strong>Street:</strong> {$address_book->address1}</p>
            <p><strong>Postal Code:</strong> {$address_book->postcode}</p>
            <p><strong>City:</strong> {$address_book->city}</p>
            <p><strong>State:</strong> {$address_book->state}</p>
            <p><strong>Country:</strong> {$address_book->country}</p>
            <a href='{$php5WebPath}/cart/eshop/my_account/address_book_edit/{$address_book->address_book_id}' class='gray_btn' style='color:white;'> EDIT </a> &nbsp; 
            <a href='{$php5WebPath}/cart/eshop/my_account/address_book_delete2/{$address_book->address_book_id}' class='gray_btn' style='color:white;'> DELETE </a>            
            <br/><br/>
            </td>
          </tr>
        </table>
		</div>
	</div>  
    <div class="clr" style="height:10px;"></div>
{/foreach}

</div>
{literal}
<script type="text/javascript">
$(document).ready(function(){
	$(".toggle_container").hide();
	$(".expand_heading").toggle(function(){
		$(this).addClass("active"); 
		}, function () {
		$(this).removeClass("active");
	});
	$(".expand_heading").click(function(){
		$(this).next(".toggle_container").slideToggle("slow");
	});
});
</script>
{/literal}
