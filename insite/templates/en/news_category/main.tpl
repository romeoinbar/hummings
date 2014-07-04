<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Category</title>
<link href="{$php5WebPathAD}/templates/css/main.css" rel="stylesheet" type="text/css" />
<link href="{$php5WebPathAD}/templates/css/menu.css" rel="stylesheet" type="text/css" />
<script src="{$php5WebPath}/includes/js/jquery/jquery.js" type="text/javascript"></script>
</head>

<body>
{include_php file="$php5RootAdminPath/modules/main/header.php"}
{literal}
<script>
 function checkItem(task, action) 
 {
	 frm = document.frmAdmin;
	 total = frm.total.value;
	 check = false;
	 a = confirm('Do you want to delete?');
	 if(a) {
		 for(i = 1; i < total; i++) {
			 id = document.getElementById('cid' + i);
			 if (id.checked) {
				 check = true;
				 break;
			 }
		 }
		 
		 if (!check) {
			 alert('Please select item to delete!!!');
			 return false;
		 } 
		 frm.action = action;
		 frm.task.value = task;
		 frm.submit();
	 }
 }
</script> 
{/literal}
<body>
  <form name="frmAdmin" action="{$action}" method="post">
  <div style="padding:10px;">
    <div class="page_header"><span class="pathway">HOME &gt; </span> NEWS CATEGORY MANAGER</div>
    <div class="outer-form">
      <table cellpadding="0" cellspacing="0" border="0" width="100%" class="table_list">
        {if $msg}
        <tr>
          <td style="color:#F00; border-bottom:1px solid #00F; border-top:1px solid #00F;" height="30"><?=$msg?></td>
        </tr>
        {/if}
        <tr>
          <td>
            <table cellpadding="0" cellspacing="0" width="98%">
              <tr>
                <td>Name:</td>
                <td><input type="text" name="s_name" value="{$s_name|escape}"  /></td>          
                <td align="right"><input type="submit" value="Search" class="button_class" /></td>
              </tr>
            </table>
         </td>
        </tr>
        <tr>
          <td>
            <table cellpadding="0" cellspacing="0" width="98%">
              <tr>
                <td width="1%">&nbsp;</td>
                <td width="90%"><p align="left"><input type="button" value="Delete" onClick="javascript:checkItem('delete', '{$link_category}');" class="button_class" />&nbsp;&nbsp;&nbsp;<input type="button" value="Create new category" onClick="window.location.href='{$link_create}'" class="button_class" /></p></td>
                <td width="5%">&nbsp;</td>
              </tr>
            </table>
         </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
            <table cellpadding="0" cellspacing="0" border="0"  width="100%">
              <tr>
                <td width="5" class="row_top_title">#</td>
                <td align="center" class="row_top_title">ID</td>
                <td align="center" class="row_top_title">Name</td>
              </tr>
              {if $categories}  
              {foreach from=$categories item=category}
              <tr>
                <td align="center" class="row_item"><input type="checkbox" name="chk[{$category.idx}]" value="{$category.id}" id="cid{$category.idx}" /></td>
                <td align="center" class="row_item">{$category.id}</td>
                <td align="center" class="row_item"><a href="{$category.link}">{$category.name}</a></td>
              </tr>
              {/foreach}
              {else}
              <tr bgcolor="#FFFFFF" style="color:#000" class="tr_row1">
                <td colspan="7">No records</td>
              </tr>
              {/if}  
            </table>
          </td>
        </tr>
        <tr>
          <td align="center" >{$paging}</td>
        </tr>
      </table>          
    </div>
  </div>
</div>
  <input type="hidden" value="{$total}" name="total"  />
  <input type="hidden" value="" name="task"  />
</form>
{include_php file="$php5RootAdminPath/modules/main/footer.php"}
</body>
</html>
