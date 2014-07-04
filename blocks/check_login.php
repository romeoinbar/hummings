<?php

if ($php5Session->getVar('user_id'))
{

}
else
{
          header('Location: ' . sefBuild($php5WebPath, 'index.php?o=eshop&m=register&task=&t=outsite', 1)  );  

}
?>