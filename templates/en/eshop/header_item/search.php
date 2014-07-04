<?php 
/*
include "$php5RootPath/languages/en/eshop/header_item/search.php" ;

$search = "
<script>
   function search_in(input)
   {
	   if (input.value=='$lang_search')
	     input.value='';
   }
   function search_out(input)
   {
	   if (input.value=='')
	     input.value='$lang_search';
   }
   function search_go()
   {

	   if (document.getElementById('search_input').value=='$lang_search') 
	   {
	     alert('$lang_search_alert');
		 return false;
	   }
	   else
	      document.getElementById('search_form').submit();
   }
   
</script>

<div class=top_left>
  <div class=line style='float:left;'></div><div class=line style='float:left;'></div>
    <div class=search_bg style='float:left;'> 
      <form action='index.php?o=search' method=post id=search_form>
       <input type=text class=search id=search_input value='$lang_search' onFocus=search_in(this) onblur=search_out(this); style='font-size:11px;'>
        <div class='search_go' style='float:right;' onClick=search_go();  ></div>
      </form>        
    </div>  

  <div class=line style='float:left;'></div><div class=line style='float:left;'></div>
  <div style='clear:both;;'></div>      
</div>";*/
$smarty->assign('link_search', sefBuild($php5WebPath, 'index.php?o=eshop&m=search', 1))
//$smarty->assign('search', $search);
?>