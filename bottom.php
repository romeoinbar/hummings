<?php
/***************************************************************************
*                                register.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
	if (@$msgAlert) {
?>
	<script type="text/javascript">alert('<?=$msgAlert?>');</script>	
<?
	}
?>
<?
	if (@$redirect) {
?>
		<script type="text/javascript">
    <!--
    window.location = "<?=$redirect?>"
    //-->
    </script>
<?
	}
?>