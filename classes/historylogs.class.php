<?php
class php5HistoryLogs extends php5DBTable
{
	/***************/
	var $id 			= null;
	/***************/
	var $type 		= null;
	/***************/
	var $who_id 	= null;
	/***************/
	var $action 	= null;
	/***************/
	var $remote_ip 	= null;
	/***************/
	var $date 		= null;

	function php5HistoryLogs( &$php5DB ) {
		$this->php5DBTable( '#__history_logs', array('id'), $php5DB );
	}
}
?>