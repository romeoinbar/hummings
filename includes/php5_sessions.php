<?php

/* * *************************************************************************
 *                                php5_session.php
 *
 *   Begin date           	: Wednesday, Aug 3, 2005
 *   Copyright            	: (C) 2005 K&G Software Company
 *   Email                	: sales@php5-vn.com
 * ************************************************************************* */
defined('PHP5_PHP') or die("Application is stopping!!!");

class php5Session extends php5DBTable {

    /** @var int Primary key */
    var $id = null;

    /** @var int */
    var $user_id = 0;

    /** @var string */
    var $ip = null;

    /** @var string */
    var $access_time = null;

    /** @var string */
    var $access_in = null;

    /** @var string */
    var $access_out = null;

    /** @var string */
    var $url = null;

    /** @var string */
    var $secure_key = null;

    /** @var int */
    var $permission = null;

    function php5Session(&$php5DB) {
        $this->php5DBTable('#__session', 'id', $php5DB);
    }

    function getVar($name) {
        if (isset($_SESSION['ses_php5_' . $name])) {
            return $_SESSION['ses_php5_' . $name];
        }

        return false;
    }

    function setVar($name, $value) {
        $_SESSION['ses_php5_' . $name] = $value;
        return true;
    }

    function delVar($name) {
        unset($_SESSION['ses_php5_' . $name]);
        unset($GLOBALS['ses_php5_' . $name]);

        return true;
    }

    function init($per) {
        global $php5DB;

        $php5WebPath = 'http://www.hummings.com.sg';

        session_name(md5($php5WebPath));


        session_cache_expire(10);
        session_start();

        header('Cache-Control: cache');

        $sessid = $this->getSessionID($per);

        $ipaddr = php5ServerGetVar('REMOTE_ADDR');
        if (empty($ipaddr)) {
            $ipaddr = php5ServerGetVar('HTTP_CLIENT_IP');
        }
        $tmpipaddr = php5ServerGetVar('HTTP_CLIENT_IP');
        if (!empty($tmpipaddr)) {
            $ipaddr = $tmpipaddr;
        }
        $fwdipaddr = php5ServerGetVar('HTTP_X_FORWARDED_FOR');
        if (!empty($fwdipaddr)) {
            $ipaddr = preg_replace('/,.*/', '', $fwdipaddr);
        }
        $tmpipaddr = $fwdipaddr;
        if (!empty($tmpipaddr)) {
            $ipaddr = preg_replace('/,.*/', '', $tmpipaddr);
        }

        $user_id = $this->getUserID($per);
        $this->delete();

        $query = "SELECT * FROM #__session WHERE id = '$sessid'";
        $this->_db->setQuery($query);

        //if( $this->checkBlockedIPs($ipaddr) ) return;

        if ($this->_db->loadObject($row)) {
            $this->id = $row->id;
            $this->user_id = $row->user_id;
            $this->ip = $row->ip;
            $this->access_in = $row->access_in;
            $this->access_out = $row->access_out;
            $this->access_time = $row->access_time;
            $this->url = $row->url;
            $this->secure_key = $row->secure_key;
            $this->permission = $row->permission;
            //
            $this->updateAccessTime();
            $this->updateAccessOut($sessid);
        } else {
            $this->id = $sessid;
            $this->user_id = 0;
            $this->ip = $ipaddr;
            $this->access_time = "1|0|0|0|0";
            $this->access_in = php5GMTTime();
            $this->access_out = php5GMTTime();
            $this->url = php5GetBaseURL();
            $this->secure_key = "";
            $this->permission = PER_USER;

            $this->insert();
            srand((double) microtime() * 1000000);
            $this->setVar('rand', rand());
            //commend
            //$this->updateCounter();
            //$this->updateStatistic();
        }
        return true;
    }

    function delete($oid = null) {
        $timeOver = php5GMTTime() - php5GetConfig('config_time_out');

        $query = "DELETE FROM #__session WHERE access_out < '$timeOver'";
        $this->_db->setQuery($query);

        if ($this->_db->query()) {
            return true;
        }
        return false;
    }

    function updateAccessOut($sessid) {
        $query = "UPDATE #__session SET access_out = '" . php5GMTTime() . "', url='" . php5GetBaseURL() . "', access_time = '" . $this->access_time . "' WHERE id = '$sessid'";
        $this->_db->setQuery($query);
        if ($this->_db->query()) {
            return true;
        }
        return false;
    }

    function updateSecureKey($key, $per) {
        $query = "UPDATE #__session SET secure_key = '$key' WHERE id='" . $this->getSessionID($per) . "'";
        $this->_db->setQuery($query);
        if ($this->_db->query()) {
            return true;
        }
        return false;
    }

    function insert() {
        $ret = $this->_db->insertObject($this->_tbl, $this);
        if (!$ret) {
            $this->_error = strtolower(get_class($this)) . "::store failed <br />" . $this->_db->stderr();
            return false;
        } else {
            return true;
        }
    }

    function update($updateNulls = false) {
        $ret = $this->_db->updateObject($this->_tbl, $this, 'id', $updateNulls);

        if (!$ret) {
            $this->_error = strtolower(get_class($this)) . "::store failed <br />" . $this->_db->stderr();
            return false;
        } else {
            return true;
        }
    }

    function destroy($sessid) {
        global $php5DB;

        $query = "DELETE FROM #__session WHERE session_id = '$sessid'";

        $this->_db->setQuery($query);
        if ($this->_db->query()) {
            return true;
        }
        return false;
    }

    function getSessionID($per = 0) {
        return md5(session_id() . $per);
    }

    function updateCounter() {
        //time access
        $query = "UPDATE #__statistics SET svalue = svalue + 1 WHERE id='time' AND skey <= 5";
        $this->_db->setQuery($query);
        $this->_db->query();

        $curTime = php5GMTTime();
        //Counter
        $mt = mktime(0, 0, 0, date("m", $curTime), date("d", $curTime), date("Y", $curTime));
        $query = "SELECT * FROM #__counter WHERE sdate=$mt";

        $this->_db->setQuery($query);
        $r = $this->_db->query();

        if ($this->_db->getNumRows($r) > 0) {
            $query = "UPDATE #__counter SET svalue = svalue + 1 WHERE sdate='" . $mt . "'";
        } else {
            $query = "INSERT INTO #__counter(sdate) VALUES('" . $mt . "')";
        }
        $this->_db->setQuery($query);
        $ret = $this->_db->query();

        if (!$ret) {
            $this->_db->_error = strtolower(get_class($this->_db)) . "::store failed <br />" . $this->_db->stderr();
            return false;
        } else {
            return true;
        }
    }

    function updateAccessTime() {
        $query = "SELECT access_time FROM #__session WHERE id='" . $this->id . "'";
        $this->_db->setQuery($query);
        $access_time = $this->_db->loadResult();

        if (!is_null($access_time)) {
            $nTime = php5GMTTime() - $this->access_in;
            $a_access_time = explode("|", $access_time);
            if ($a_access_time[4] == 1)
                return true;

            //15 minutes
            if (($nTime >= 5 * 60) && $a_access_time[1] == 0) {
                $query = "UPDATE #__statistics SET svalue = svalue + 1 WHERE id='time' AND (skey=15 OR skey=0)";
                $this->_db->setQuery($query);
                $this->_db->query($query);

                /* $query = "UPDATE #__statistics SET svalue = svalue - 1 WHERE id='time' AND (skey=5 OR skey=0)";
                  $this->_db->setQuery($query);
                  $this->_db->query($query); */
                $this->access_time = "1|1|0|0|0";
            }

            //30 minutes
            if (($nTime >= 15 * 60) && $a_access_time[2] == 0) {
                $query = "UPDATE #__statistics SET svalue = svalue + 1 WHERE id='time' AND (skey=30 OR skey=0)";
                $this->_db->setQuery($query);
                $this->_db->query($query);

                $query = "UPDATE #__statistics SET svalue = svalue - 1 WHERE id='time' AND (skey=15 OR skey=0)";
                $this->_db->setQuery($query);
                $this->_db->query($query);
                $this->access_time = "1|1|1|0|0";
            }

            //60 minutes
            if (($nTime >= 30 * 60) && $a_access_time[3] == 0) {
                $query = "UPDATE #__statistics SET svalue = svalue + 1 WHERE id='time' AND (skey=60 OR skey=0)";
                $this->_db->setQuery($query);
                $this->_db->query($query);

                /* $query = "UPDATE #__statistics SET svalue = svalue - 1 WHERE id='time' AND (skey=30 OR skey=0)";
                  $this->_db->setQuery($query);
                  $this->_db->query($query); */
                $this->access_time = "1|1|1|1|0";
            }

            //hon 60 minutes
            if (($nTime >= 60 * 60) && $a_access_time[4] == 0) {
                $query = "UPDATE #__statistics SET svalue = svalue + 1 WHERE id='time' AND (skey=61 OR skey=0)";
                $this->_db->setQuery($query);
                $this->_db->query($query);

                /* $query = "UPDATE #__statistics SET svalue = svalue - 1 WHERE id='time' AND (skey=60 OR skey=0)";
                  $this->_db->setQuery($query);
                  $this->_db->query($query); */
                $this->access_time = "1|1|1|1|1";
            }
        }
        return true;
    }

    function updateStatistic() {
        $query = "SELECT user_id FROM #__session WHERE id='" . $this->id . "'";
        $this->_db->setQuery($query);
        $user_id = $this->_db->loadResult();
        if ($user_id >= 0) {
            $is_member = $user_id > 0 ? 1 : 0;
            $curTime = php5GMTTime();

            //per hour counter
            $_hour = mktime(date("G", $curTime), 0, 0, date("n", $curTime), date("j", $curTime), date("Y", $curTime));
            $query = "SELECT svalue FROM #__statistics WHERE id='hour' AND skey='$_hour' AND is_member=" . $is_member;
            $this->_db->setQuery($query);
            if ($this->_db->loadResult()) {
                $query = "UPDATE #__statistics SET svalue=svalue+1
					WHERE id='hour' AND skey='$_hour' AND is_member=" . $is_member;
            } else {
                $query = "INSERT INTO #__statistics(id, skey, svalue, is_member) VALUES ('hour', '$_hour',1,$is_member)";
            }
            $this->_db->setQuery($query);
            $this->_db->query();

            // Per day counter
            $_date = mktime(0, 0, 0, date("n", $curTime), date("d", $curTime), date("Y", $curTime));
            $query = "SELECT svalue FROM #__statistics WHERE id='day' AND skey='$_date' AND is_member=" . $is_member;
            $this->_db->setQuery($query);
            if ($this->_db->loadResult()) {
                $query = "UPDATE #__statistics SET svalue=svalue+1
					WHERE id='day' AND skey='$_date' AND is_member=" . $is_member;
            } else {
                $query = "INSERT INTO #__statistics(id, skey, svalue, is_member) VALUES ('day', '$_date', 1, $is_member)";
            }
            $this->_db->setQuery($query);
            $this->_db->query();

            //weekday counter
            $_week = mktime(0, 0, 0, date("n", $curTime), date("j", $curTime), date("Y", $curTime));
            $query = "SELECT svalue FROM #__statistics WHERE id='week' AND skey='$_week' AND is_member=" . $is_member;
            $this->_db->setQuery($query);
            if ($this->_db->loadResult()) {
                $query = "UPDATE #__statistics SET svalue=svalue+1
					WHERE id='week' AND skey='$_week' AND is_member=" . $is_member;
            } else {
                $query = "INSERT INTO #__statistics(id, skey, svalue, is_member) VALUES ('week', '$_week', 1, $is_member)";
            }
            $this->_db->setQuery($query);
            $this->_db->query();

            //month counter
            $_month = mktime(0, 0, 0, date("n", $curTime), 1, date("Y", $curTime));
            $query = "SELECT svalue FROM #__statistics WHERE id='month' AND skey='$_month' AND is_member=" . $is_member;
            $this->_db->setQuery($query);
            if ($this->_db->loadResult()) {
                $query = "UPDATE #__statistics SET svalue=svalue+1
					WHERE id='month' AND skey='$_month' AND is_member=" . $is_member;
            } else {
                $query = "INSERT INTO #__statistics(id, skey, svalue, is_member) VALUES ('month', '$_month', 1, $is_member)";
            }
            $this->_db->setQuery($query);
            $this->_db->query();
        }
    }

    function getUserID($per) {
        $user_id = $this->getVar('user_id');

        return $user_id;
    }

    function checkBlockedIPs($ip) {
        $ips = explode(";", php5GetConfig("config_blocked_ip"));
        if (in_array($ip, $ips))
            return true;
        return false;
    }

}

?>