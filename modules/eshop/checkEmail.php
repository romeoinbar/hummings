<?php
include_once "$php5RootPath/classes/tables.class.php"; 
$popup=1;
$clean=1;

  $id = $_GET['id'];
  $query = "SELECT COUNT(*) as c FROM #__user WHERE email='$id' ";

  $php5DB_en->setQuery( $query );  
  $rows = $php5DB_en->loadAssocList();
  $row = $rows['0'];

if ($row['c']==1)
  $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'ajax/no.tpl');
else
  $tpl = sprintf($php5TemplateFile, $language, 'eshop', 'ajax/yes.tpl');
  
$smarty->display($tpl);
  

return;

