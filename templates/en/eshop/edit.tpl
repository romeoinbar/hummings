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
<body>
  <form name="frmAdmin" action="{$action}" method="post">
  <div style="padding:10px;">
    <div class="page_header"><span class="pathway">HOME &gt; </span> EDIT NEWS CATEGORY</div>
    <div class="outer-form">
      <table cellpadding="0" cellspacing="0" border="0" width="100%">
        {if $msg}
        <tr>
          <td style="color:#F00; border-bottom:1px solid #00F; border-top:1px solid #00F;" height="30">{$msg}</td>
        </tr>
        {/if}
      </table>
      <table border="0" cellpadding="0" cellspacing="5" width="100%">
        <tr>
          <td width="15%" class="title3">Name:</td>
          <td width="85%"><input type="text" name="name" maxlength="100" value="{$name|escape}"></td>
        </tr>
        <tr>
          <td></td>
          <td><input type="submit"  value="Update"  class="button_class" />&nbsp;<input type="button" value="back" onClick="window.location.href='{$link_return}'"  class="button_class" /></td>
        </tr>
      </table>          
  	</div>
  </form>
{include_php file="$php5RootAdminPath/modules/main/footer.php"}
</body>
</html>
