<?php
 /***************************************************************************
 *                                php5_common.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	:
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");

function php5Init($per) {		
	global $php5DB, $php5RootPath, $php5Ext, $php5Config, $php5Template, $php5User, $php5Session, $php5_company, $php5_seeker, $php5_provider;
	global $type, $php5DB_en, $define, $php5DB_data;
	error_reporting(E_ALL);
	include($php5RootPath . '/includes/php5_db' . $php5Ext);
	include($php5RootPath . '/includes/php5_sessions' . $php5Ext);	
	include($php5RootPath . '/includes/php5_security' . $php5Ext);
	
	/*Begin init session*/
	$php5Session = new php5Session($php5DB);
	$php5Session->init($per) or die('Session initialisation failed');

	include($php5RootPath . '/includes/phpmailer/class.phpmailer' . $php5Ext);
	include($php5RootPath . '/classes/historylogs.class' . $php5Ext);	
	include($php5RootPath . '/classes/define.class' . $php5Ext);
	$define = new clsDefine();
}

/*
* Function to handle an array of integers
* Added 1.0.11
*/
function php5GetParamInts( $name, $type=NULL ) {
	if ( $type == NULL ) {
		$type = $_POST;
	}

	$array = php5GetParam( $type, $name, array(0) );
	
	if (!is_array($array)) {
		$temp_cid = array();
		$temp_cid[0] = $array;
		$array = $temp_cid;
	}

	php5ArrayToInts( $array );

	if (!is_array( $array )) {
		$array = array(0);
	}

	return $array;
}

function php5UpdateCounter($sTableName, $sCounterField, $id=0){
	global $php5DB;
	$query = "UPDATE #__$sTableName"
		. "\n SET $sCounterField = $sCounterField + 1 "
		. "\n WHERE id = '" . $id . "'"
		;

	$php5DB->setQuery( $query );
	return $php5DB->query();
}

function php5GetParam( &$arr, $name, $def=null, $mask=0 ) {
	static $noHtmlFilter 	= null;
	static $safeHtmlFilter 	= null;

	$return = null;
	if (isset( $arr[$name] )) {
		$return = $arr[$name];

		if (is_string( $return )) {
			// trim data
			if (!($mask&_PHP5_NOTRIM)) {
				$return = trim( $return );
			}

			if ($mask&_PHP5_ALLOWRAW) {
				// do nothing
			} else if ($mask&_PHP5_ALLOWHTML) {
				// do nothing - compatibility mode
			} else {
				// send to inputfilter
				if (is_null( $noHtmlFilter )) {
					$noHtmlFilter = new InputFilter( /* $tags, $attr, $tag_method, $attr_method, $xss_auto */ );
				}
				$return = $noHtmlFilter->process( $return );

				if (empty($return) && is_numeric($def)) {
				// if value is defined and default value is numeric set variable type to integer
					$return = intval($return);
				}
			}

			// account for magic quotes setting
			if (get_magic_quotes_gpc()) {
				$return = stripcslashes($return );
			}
		}

		return $return;
	} else {
		return $def;
	}
}

function php5GetConfig($name) {	
	if (isset($GLOBALS['php5_config'][$name])) {
        $result = $GLOBALS['php5_config'][$name];
    } else {
		global $php5DB;
		$query = "SELECT * FROM #__configuration";

		$php5DB->setQuery( $query );
		if ($configs = $php5DB->loadObjectList()){
			foreach($configs as $config){
				$GLOBALS['php5_config'][$config->key_name] = $config->value_name;
			}
		}
		else{
			die("Can't find the config talbe. Please check your db.");
		}

		$result	= $GLOBALS['php5_config'][$name];
	}
    return $result;
}  

function php5MkTime($date_s, $format = "d/m/Y") {
	$d = "";
	if(!empty($date_s)) {
		$arr_d = explode("/", $date_s);
		switch($format) {
			case "d/m/Y":
				$d = mktime(0, 0, 0, $arr_d[1], $arr_d[0], $arr_d[2]);
				break;
			case "m/d/Y":
				$d = mktime(0, 0, 0, $arr_d[0], $arr_d[1], $arr_d[2]);
				break;
		}
	}
	return $d;
}

function is_valid_date($date){
	$date = str_replace(array('\'', '-', '.', ','), '/', $date);
	$date = explode('/', $date);

	if(    count($date) == 1 // No tokens
			and    is_numeric($date[0])
			and    $date[0] < 20991231 and
			(    checkdate(substr($date[0], 4, 2)
									, substr($date[0], 6, 2)
									, substr($date[0], 0, 4)))
	)
	{
			return true;
	}
 
	if( count($date) == 3
			and    is_numeric($date[0])
			and    is_numeric($date[1])
			and is_numeric($date[2]) and
			(    checkdate($date[0], $date[1], $date[2]) //mmddyyyy
			or    checkdate($date[1], $date[0], $date[2]) //ddmmyyyy
			or    checkdate($date[1], $date[2], $date[0])) //yyyymmdd
	)
	{
			return true;
	}
 
	return false;
} 

function php5ShowMsg($flat, $msg="") {
	global $lang;
	$msg_str = "";
	switch($flat) {
		case CONNECT_ERROR:
			$msg_str = "<html>\n<header>\n";
			$msg_str = $msg_str . '<Meta http-equiv="Content-Type" Content="text/html; charset=utf-8">' . "\n";
			$msg_str = $msg_str . "</header>\n<body>\n" . $lang['an_connect_error_db'] . "\n";
			$msg_str = $msg_str . "</body>\n</html>\n";
			break;
		case _ERROR:
			$msg_str = $lang['an_error_occured'];
			break;
		default:
			$msg_str = $msg;
	}
	echo $msg_str;
}

function php5VarSecureInput($str) {
	$str=str_replace("'", "''", $str);
	$str=str_replace("<", "&lt;", $str);
	$str=str_replace(">", "&gt;", $str);
	$str=str_replace("=", "&#061;", $str);
	$str=str_replace("select", "s&nbsp;elect", $str);
	$str=str_replace("join", "j&nbsp;oin", $str);
	$str=str_replace("union", "u&nbsp;nion", $str);
	$str=str_replace("where", "w&nbsp;here", $str);
	$str=str_replace("insert", "i&nbsp;nsert", $str);
	$str=str_replace("delete", "d&nbsp;elete", $str);
	$str=str_replace("update", "u&nbsp;pdate", $str);
	$str=str_replace("like", "l&nbsp;ike", $str);
	$str=str_replace("drop", "d&nbsp;rop", $str);
	$str=str_replace("create", "c&nbsp;reate", $str);
	$str=str_replace("modify", "m&nbsp;odify", $str);
	$str=str_replace("rename", "r&nbsp;ename", $str);
	$str=str_replace("alter", "a&nbsp;lter", $str);
	$str=str_replace("cast", "c&nbsp;ast", $str);
	return $str;
}

function php5VarCleanFromInput() {
	$search = array('|/?\s*<.*?|si',				//1
					'|/?\s*>.*?|si',				//2
					'|</?\s*SCRIPT.*?>|si',			//3
					'|</?\s*FRAME.*?>|si',			//4
					'|</?\s*OBJECT.*?>|si',			//5
					'|</?\s*META.*?>|si',			//6
					'|</?\s*APPLET.*?>|si',			//7
					'|</?\s*LINK.*?>|si',			//8
					'|</?\s*IFRAME.*?>|si',			//9
					'|STYLE\s*=\s*"[^"]*"|si',		//10
					'|/?\s*=.*?|si',				//11
					'|/?\s*\".*?|si',				//12
					);

	$replace = array('&lt;',						//1
					'&gt;',							//2
					'',								//3
					'',								//4
					'',								//5
					'',								//6
					'',								//7
					'',								//8
					'',								//9
					'',								//10
					'&#061;',						//11
					'&quot;',						//12
					);

	$resarray =	array();

	foreach (func_get_args() as $var) {

	    if (empty($var) || is_array($var)) {
	        return;
	    }

	    if (isset($_REQUEST[$var])) {
            $ourvar = $_REQUEST[$var];			
            if (get_magic_quotes_gpc()) {
                php5StripSlashes($ourvar);
            }			
			$ourvar = preg_replace($search, $replace, $ourvar);
	    } else if (isset($_FILES[$var])) {
        	$ourvar = $_FILES[$var];
	    } else {
	        $ourvar = null;
	    }
	    array_push($resarray, $ourvar);
	}

	if (func_num_args()	== 1) {
		return $resarray[0];
	} else {
		return $resarray;
	}
}

function php5FormatContent($value) {
	$value = stripslashes($value);
	return $value;
}

function php5CarPrepareForShow($value) {
	if(is_array($value)) {
		$row = array();
		while(list($k, $v) =  each($value)) {
			$row[$k] = php5FormatContent($v);
		}
		$value = $row;
	}
	else{
		$value = php5FormatContent($value);
	}
	return $value;
}

/*function php5StripSlashes (&$value) {
    if(!is_array($value)) {
        $value = stripslashes(php5VarPrepareForStore($value));
    } else {
        array_walk($value, 'php5StripSlashes');
    }
}*/

function php5VarPrepareForStore() {
    $resarray = array();
    foreach (func_get_args() as $ourvar) {
        if (!get_magic_quotes_runtime()) {
            $ourvar = addslashes($ourvar);
        }
        array_push($resarray, $ourvar);
    }

    if (func_num_args() == 1) {
        return $resarray[0];
    } else {
        return $resarray;
    }
}

function php5ServerGetVar($name) {
    if (isset($_SERVER[$name])) {
        return $_SERVER[$name];
    }
    if (isset($_ENV[$name])) {
        return $_ENV[$name];
    }
    if ($val = getenv($name)) {
        return $val;
    }
    return;
}

function php5GetBaseURI() {
	$path = php5ServerGetVar('REQUEST_URI');

    if ((empty($path)) || (substr($path, -1, 1) == '/')) {
        $path = php5ServerGetVar('PATH_INFO');
        if (empty($path)) {
			$path = php5ServerGetVar('SCRIPT_NAME');
        } 
    } 

	//$path = preg_replace('/[#\?]*/', '', $path);
	//$path = dirname($path);

    if (preg_match('!^[/\\\]*$!', $path)) {
        $path = '';
    }

    return $path;
}

function php5GetBaseURL() {
	$server = php5ServerGetVar('HTTP_HOST');

	$https = php5ServerGetVar('HTTPS');
    if (isset($https) && $https != 'off') {
        $proto = 'https://';
    } else {
        $proto = 'http://';
    } 

    $path = php5GetBaseURI();

    return "$proto$server$path";
	return "$path";
}

function php5Redirect($redirect_url, $name=array(), $arr=NULL) {
	$param = "";
	if( count($name) > 0 && !is_null($arr) ){
		foreach( $name as $k => $v ){
			$param .= "&$k=" . php5GetParam( $arr, $v, "" );			
		}
	}
	
	$redirect_url .= $param;
	
    if (preg_match('!^http!', $redirect_url)) {
        header("Location:" . $redirect_url);
        return;
    } else {
        $redirect_url = preg_replace('!^/*!', '', $redirect_url);
        //$baseurl = php5GetBaseURL();				
        //header("Location: " . $baseurl . $redirect_url);
		header("Location: " . $redirect_url);
    }
}

function php5GetCurrentURI($args = array()) {
    $request = php5ServerGetVar('REQUEST_URI');

    if (empty($request)) {
        $scriptname = php5ServerGetVar('SCRIPT_NAME');
        $pathinfo = php5ServerGetVar('PATH_INFO');
        if ($pathinfo == $scriptname) {
            $pathinfo = '';
        }
        if (!empty($scriptname)) {
            $request = $scriptname . $pathinfo;
            $querystring = php5ServerGetVar('QUERY_STRING');
            if (!empty($querystring)) $request .= '?' . $querystring;
        } else {
            $request = '/';
        }
    }

    if (count($args) > 0) {
        if (strpos($request,'?') === false) $request .= '?';
        else $request .= '&';

        foreach ($args as $k=>$v) {
            if (is_array($v)) {
                foreach($v as $l=>$w) {
                    if (!empty($w)) $request .= $k . "[$l]=$w&";
                }
            } else {
                if (preg_match("/(&|\?)($k=[^&]*)/", $request, $matches)) {
                    $find = $matches[2];
                    if (!empty($v)) {
                        $request = preg_replace("/(&|\?)$find/", "$1$k=$v", $request);
                    } elseif ($matches[1] == '?') {
                        $request = preg_replace("/\?$find(&|)/", '?', $request);
                    } else {
                        $request = preg_replace("/&$find/", '', $request);
                    }
                } elseif (!empty($v)) {
                    $request .= "$k=$v&";
                }
            }
        }
        $request = substr($request, 0, -1);
    }
    return $request;
}
//hour can + or - 
function php5GMTTime($hour = 8) {
	$gm_time = time() - @date('Z', time()) + $hour*3600;
	return $gm_time;
}

function php5Time(){
	$server_time = date( 'O' );
	$offset = php5GetConfig('config_offset_user') - $server_time;
	return (time() + ($offset*60*60));
}

function php5FormatDate( $date, $format="", $offset=NULL ){
	$server_time = date( 'O' );
	$php5Offset = php5GetConfig('config_offset_user') - $server_time;

	if ( $format == '' ) {
		// %Y-%m-%d %H:%M:%S
		$format = _DATE_FORMAT_LC;
	}
	if ( is_null($offset) ) {
		$offset = $php5Offset;
	}
	if ( $date && ereg( "([0-9]{4})-([0-9]{2})-([0-9]{2})[ ]([0-9]{2}):([0-9]{2}):([0-9]{2})", $date, $regs ) ) {
		$date = mktime( $regs[4], $regs[5], $regs[6], $regs[2], $regs[3], $regs[1] );
		$date = $date > -1 ? strftime( $format, $date + ($offset*60*60) ) : '-';
	}
	return $date;
}

function php5CurrentDate($d="", $format=""){
	$d = empty($d)?php5Time():$d;
	$format = empty($format)?php5GetConfig('config_date_format'):$format;
	return date($format, $d);
}

function php5VarPrepareForOS() {
    static $search = array('!\.\./!si', // .. (directory traversal)
                           '!^.*://!si', // .*:// (start of URL)
                           '!^/!si',     // Forward slash (directory traversal)
                           '!^\\\\!si'); // Backslash (directory traversal)
    static $replace = array('',
                            '',
                            '_',
                            '_');

    $resarray = array();
    foreach (func_get_args() as $ourvar) {
        $ourvar = preg_replace($search, $replace, $ourvar);
        if (!get_magic_quotes_runtime()) {
            $ourvar = addslashes($ourvar);
        }
        array_push($resarray, $ourvar);
    }
    if (func_num_args() == 1) {
        return $resarray[0];
    } else {
        return $resarray;
    }
}

function php5VarPrepareForDisplay() {
    static $search = array('/(.)@(.)/se');
    static $replace = array('"&#" .
                            sprintf("%03d", ord("\\1")) .
                            ";&#064;&#" .
                            sprintf("%03d", ord("\\2")) . ";";');

    $resarray = array();
    foreach (func_get_args() as $ourvar) {
        $ourvar = htmlspecialchars($ourvar);
        $ourvar = preg_replace($search, $replace, $ourvar);

        array_push($resarray, $ourvar);
    }

    if (func_num_args() == 1) {
        return $resarray[0];
    } else {
        return $resarray;
    }
}

function php5ClipString($str, $l) {
	$str = strlen($str) < $l?$str:substr($str, 0 , $l) . "...";
	return $str;
}


function php5SendMail($toname, $to, $subject, $email_text, $fromname, $from, $template, $values=array(), $is_html=true) {
	global $php5RootPath, $php5Ext;

	
	$email_content = "";
	
	if( strlen($email_text) > 0 ){
		$email_content = $email_text;
	}
	else{
		$template = $php5RootPath . "/images/et/" . $template;
		if( file_exists($template) ){
			$email_content = file_get_contents( $template );
			$search = array();
			$replace = array();
			foreach($values as $key => $value){
				array_push($search, $key);
				array_push($replace, $value);
			}

			$email_content = str_replace($search, $replace, $email_content);
		}
	}
	
	if(!php5Mail($from, $fromname, $to, $subject, $email_content, $is_html)){
		return false;
	}
	
	return true;
}

/**
* Function to create a mail object for futher use (uses phpMailer)
* @param string From e-mail address
* @param string From name
* @param string E-mail subject
* @param string Message body
* @return object Mail object
*/
function php5CreateMail( $from='', $fromname='', $subject, $body ) {
	global $php5RootPath;
	
	$mail = new PHPMailer();

	$mail->PluginDir = $php5RootPath .'/includes/phpmailer/';
	$mail->SetLanguage( 'en', $php5RootPath . '/includes/phpmailer/language/' );
	//$mail->CharSet 	= substr_replace(php5ConfigCharset, '', 0, 8);
	$mail->CharSet 	= php5ConfigCharset;
	$mail->IsMail();
	$mail->From 	= $from;
	$mail->FromName = $fromname;
	$mail->Mailer 	= php5ConfigMailer;

	// Add smtp values if needed
	if ( php5ConfigMailer == 'smtp' ) {
		$mail->SMTPAuth = php5ConfigSMTPAuth;
		$mail->Username = php5ConfigSMTPUser;
		$mail->Password = php5ConfigSMTPPass;
		$mail->Host 	= php5ConfigSMTPHost;
	} else

	// Set sendmail path
	if ( php5ConfigMailer == 'sendmail' ) {
		if (php5ConfigSendMail)
			$mail->Sendmail = php5ConfigSendMail;
	} // if

	$mail->Subject 	= $subject;
	$mail->Body 	= $body;

	return $mail;
}

/**
* Mail function (uses phpMailer)
* @param string From e-mail address
* @param string From name
* @param string/array Recipient e-mail address(es)
* @param string E-mail subject
* @param string Message body
* @param boolean false = plain text, true = HTML
* @param string/array CC e-mail address(es)
* @param string/array BCC e-mail address(es)
* @param string/array Attachment file name(s)
* @param string/array ReplyTo e-mail address(es)
* @param string/array ReplyTo name(s)
*/
function php5Mail( $from, $fromname, $recipient, $subject, $body, $mode=0, $cc=NULL, $bcc=NULL, $attachment=NULL, $replyto=NULL, $replytoname=NULL ) {
	$mail = php5CreateMail( $from, $fromname, $subject, $body );

	// activate HTML formatted emails
	if ( $mode ) {
		$mail->IsHTML(true);
	}

	if (is_array( $recipient )) {
		foreach ($recipient as $to) {
			$mail->AddAddress( $to );
		}
	} else {
		$mail->AddAddress( $recipient );
	}
	if (isset( $cc )) {
		if (is_array( $cc )) {
			foreach ($cc as $to) {
				$mail->AddCC($to);
			}
		} else {
			$mail->AddCC($cc);
		}
	}
	if (isset( $bcc )) {
		if (is_array( $bcc )) {
			foreach ($bcc as $to) {
				$mail->AddBCC( $to );
			}
		} else {
			$mail->AddBCC( $bcc );
		}
	}
	if ($attachment) {
		if (is_array( $attachment )) {
			foreach ($attachment as $fname) {
				$mail->AddAttachment( $fname );
			}
		} else {
			$mail->AddAttachment($attachment);
		}
	}
	//Important for being able to use mosMail without spoofing...
	if ($replyto) {
		if (is_array( $replyto )) {
			reset( $replytoname );
			foreach ($replyto as $to) {
				$toname = ((list( $key, $value ) = each( $replytoname )) ? $value : '');
				$mail->AddReplyTo( $to, $toname );
			}
        } else {
			$mail->AddReplyTo($replyto, $replytoname);
		}
    }

	$mailssend = $mail->Send();
	
	if( $mail->error_count > 0 ) {	
		echo 'error';	
	}
	return $mailssend;
}

function php5FormatString($str, $prefix='0', $num=6) {
	if(strlen($str) >= $num)
		return $str;
	$p = "";

	for($n=0; $n<($num - strlen($str)); $n++) {
		$p .= $prefix;
	}

	return $p . $str;
}

function php5ShortenText($text, $chars = 0, $add_f = false, $ch = "&nbsp; ") {
	$text = trim(ucfirst($text));
	if( $chars > 0 && strlen($text) > $chars) {
		$text = $text . " ";
		$text = substr($text, 0, $chars);
		$text = substr($text, 0, strrpos($text, ' '));
		if(substr($text, -1, 1) == ",")
			$text = substr($text, 0, strlen($text)-1);
		$text = $text . "...";
	}
	else{
		if(substr($text, -1, 1) == ",")
			$text = substr($text, 0, strlen($text)-1);
		if($add_f && $chars > 0 && $chars > strlen($text))
			$text .= str_repeat($ch, ($chars - strlen($text))/2);
	}
	return $text;
}

function php5RandomStringGenerate($length = 6) {
	$chars = '2346789ABCEFGHJKLMNPRTWXYZ';
	$word = "";
	for ($x = 1; $x <= $length; $x++) {
		$number = rand(1, strlen($chars));
		$word .= substr($chars, $number - 1, 1);
	}
	return $word;
}

function php5IsNotNull($value) {
	if (is_array($value)) {
    	if (sizeof($value) > 0) {
        	return true;
      	} else {
        	return false;
      	}
    } else {
    	if ( (is_string($value) || is_int($value)) && ($value != '') && ($value != 'NULL') && (strlen(trim($value)) > 0)) {
        	return true;
      	} else {
        	return false;
      	}
    }
}

function php5FormatNumber($val) {
	$val = number_format($val, 2);
	$val = str_replace(".00", "", $val);
	if(strlen($val) == 1 ) $val = str_replace("0", "", $val);
	if(strlen($val) == 4 ) $val = str_replace("0.00", "", $val);
	return $val;
}

function php5Stripslashes( &$value ) {
	$ret = '';
	if (is_string( $value )) {
		$ret = stripslashes( $value );
	} else {
		if (is_array( $value )) {
			$ret = array();
			foreach ($value as $key => $val) {
				$ret[$key] = php5Stripslashes( $val );
			}
		} else {
			$ret = $value;
		}
	}
	return $ret;
}

function php5BindArrayToObject( $array, &$obj, $ignore='', $prefix=NULL, $checkSlashes=true ) {
	if (!is_array( $array ) || !is_object( $obj )) {
		return (false);
	}

	$ignore = ' ' . $ignore . ' ';
	foreach (get_object_vars($obj) as $k => $v) {
		if( substr( $k, 0, 1 ) != '_' ) {			// internal attributes of an object are ignored
			if (strpos( $ignore, ' ' . $k . ' ') === false) {
				if ($prefix) {
					$ak = $prefix . $k;
				} else {
					$ak = $k;
				}
				if (isset($array[$ak])) {
					$obj->$k = ($checkSlashes && get_magic_quotes_gpc()) ? php5Stripslashes( $array[$ak] ) : $array[$ak];
				}
			}
		}
	}

	return true;
}

function php5ArrayToInts( &$array, $default=null ) {
	if (is_array( $array )) {
		/*$n = count( $array );
		for ($i = 0; $i < $n; $i++) {
			$array[$i] = intval( $array[$i] );
		}*/
		foreach($array as $key => $value){
			$array[$key] = intval( $value );
		}
	} else {
		if (is_null( $default )) {
			return array();
		} else {
			return array( $default );
		}
	}
}

function mosMakeHtmlSafe( &$mixed, $quote_style=ENT_QUOTES, $exclude_keys='' ) {
	if (is_object( $mixed )) {
		foreach (get_object_vars( $mixed ) as $k => $v) {
			if (is_array( $v ) || is_object( $v ) || $v == NULL || substr( $k, 1, 1 ) == '_' ) {
				continue;
			}
			if (is_string( $exclude_keys ) && $k == $exclude_keys) {
				continue;
			} else if (is_array( $exclude_keys ) && in_array( $k, $exclude_keys )) {
				continue;
			}
			$mixed->$k = htmlspecialchars( $v, $quote_style );
		}
	}
}

function php5MakeHtmlSafe( &$mixed, $quote_style=ENT_QUOTES, $exclude_keys='' ) {
	if (is_object( $mixed )) {
		foreach (get_object_vars( $mixed ) as $k => $v) {
			if (is_array( $v ) || is_object( $v ) || $v == NULL || substr( $k, 1, 1 ) == '_' ) {
				continue;
			}
			if (is_string( $exclude_keys ) && $k == $exclude_keys) {
				continue;
			} else if (is_array( $exclude_keys ) && in_array( $k, $exclude_keys )) {
				continue;
			}
			$mixed->$k = htmlspecialchars( $v, $quote_style );
		}
	}
}
/**
* Utility function to provide ToolTips
* @param string ToolTip text
* @param string Box title
* @returns HTML code for ToolTip
*/
function php5ToolTip( $tooltip, $title='', $width='', $image='tooltip.png', $text='', $href='#', $link=1 ) {
	global $php5WebPath;

	if ( $width ) {
		$width = ', WIDTH, \''.$width .'\'';
	}
	if ( $title ) {
		$title = ', CAPTION, \''.$title .'\'';
	}
	if ( !$text ) {
		$image 	= $php5WebPath . '/includes/js/ThemeOffice/'. $image;
		$text 	= '<img src="'. $image .'" border="0" alt="tooltip"/>';
	}
	$style = 'style="text-decoration: none; color: #333;"';
	if ( $href ) {
		$style = '';
	} else{
		$href = '#';
	}

	$mousover = 'return overlib(\''. $tooltip .'\''. $title .', BELOW, RIGHT'. $width .');';

	$tip = "<!-- Tooltip -->\n";
	if ( $link ) {
		$tip .= '<a href="'. $href .'" onmouseover="'. $mousover .'" onmouseout="return nd();" '. $style .'>'. $text .'</a>';
	} else {
		$tip .= '<span onmouseover="'. $mousover .'" onmouseout="return nd();" '. $style .'>'. $text .'</span>';
	}

	return $tip;
}
/**
* Replaces &amp; with & for xhtml compliance
*
* Needed to handle unicode conflicts due to unicode conflicts
*
* @package Joomla.Framework
* @since 1.0
*/
function ampReplace( $text ) {
	$text = str_replace( '&&', '*--*', $text );
	$text = str_replace( '&#', '*-*', $text );
	$text = str_replace( '&amp;', '&', $text );
	$text = preg_replace( '|&(?![\w]+;)|', '&amp;', $text );
	$text = str_replace( '*-*', '&#', $text );
	$text = str_replace( '*--*', '&&', $text );

	return $text;
}

function php5ShowBar($pperc, $width=100, $xecho=true, $label=''){
	$what = "<img src=\"images/leftbar.gif\" height=\"15\" width=\"7\" alt=\"$label\" /><img src=\"images/mainbar.gif\" height=\"15\" width=\"$pperc\" alt=\"$label\" /><img src=\"images/rightbar.gif\" height=\"15\" width=\"7\" alt=\"$label\" />";
	/*$what = '<table width="200" border="0" cellspacing="0" cellpadding="0" style="border: 1 solid #666666;" bgcolor="FFFFFF">
				<tr>';
	$what .=  $pperc>0?'<td width="'.$pperc.'%" height="12" bgcolor="#00CC33">&nbsp;</td>':'';
	$what .=  '<td width="100%" height="12">&nbsp;</td>
				</tr>
			</table>';*/
    if($xecho == true) {
	    echo $what; 
    } else {
    	return $what;
    }
}

/**
 * internal function to generate a new href link
 * @param	string	iso_code of the wanted language
 * @return	string	new href string
 */
function createHRef($href, $iso = array() ){
//	$href= $_SERVER['PHP_SELF'];
	$hrefVars = "";
	$pos = strpos($href, '?');
	if($pos===false) return $href;
	$str = substr($href,$pos+1,strlen($href)-1);
	$href = substr($href,0,$pos);
	$vars = explode( "&", $str );
	
	if( count($vars) > 0 && $href){
		foreach ($vars as $var) {
			if( eregi('=', $var ) ) {
				list($key, $value) = explode( "=", $var);
				if(!array_key_exists($key, $iso)) {
					if( $hrefVars != "" ) $hrefVars .= "&";
					$hrefVars .= "$key=$value";
				}
			}
		}
	}
	
	if( is_array($iso) && count($iso)>0  ) {
		foreach ($iso as $key => $value){
			if( $hrefVars != "" ) $hrefVars .= "&";
			$hrefVars .= "$key=$value";
		}
//		if( $hrefVars != "" ) $hrefVars .= "&";
//		$hrefVars .= "language=$iso";
	}
	
	if( $hrefVars != "" ) {
		$href .= "?$hrefVars";
	}
	return $href;
}

function php5UTF8ToASCII($str, $unknown = '?') {	
	$uta = array();
	if ( strlen($str) == 0 ) { return $uta; }
    
    $len = strlen($str);
    $i = 0;
    
	while ( $i < $len ) {
	 	$ord = NULL;
        $increment = 1;

        $ord0 = ord($str{$i});
        # Much nested if /else - PHP fn calls expensive, no block scope...
        
        # 1 byte - ASCII
        if ( $ord0 >= 0 && $ord0 <= 127 ) {
            $ord = $ord0;
            $increment = 1;
            
        } else {
            
            # 2 bytes
            $ord1 = ord($str{$i+1});
            
            if ( $ord0 >= 192 && $ord0 <= 223 ) {
                
                $ord = ( $ord0 - 192 ) * 64 + ( $ord1 - 128 );
                $increment = 2;
                
            } else {
                
                # 3 bytes
                $ord2 = ord($str{$i+2});
                
                if ( $ord0 >= 224 && $ord0 <= 239 ) {
                    
                    $ord = ($ord0-224)*4096 + ($ord1-128)*64 + ($ord2-128);
                    $increment = 3;
                    
                } else {
                    
                    # 4 bytes
                    $ord3 = ord($str{$i+3});
                    
                    if ($ord0>=240 && $ord0<=247) {
                        
                        $ord = ($ord0-240)*262144 + ($ord1-128)*4096 
                            + ($ord2-128)*64 + ($ord3-128);
                        $increment = 4;
                        
                    }
					else{continue;}
                    
                }
                
            }
            
        }
		$i += $increment;
		$uta[] = intval($ord);
	 }	
	 return $uta;
}

function php5CreateTextOrdering( $str, $unknown = '?' ){
	$univn = array(
				 "0x00c1" => "A|04",	"0x00c0" => "A|01", "0x1ea2" => "A|02", "0x00c3" => "A|03", "0x1ea0" => "A|05",	"0x1ea4" => "A|16", 
				 "0x1ea6" => "A|13",	"0x1ea8" => "A|14", "0x1eaa" => "A|15", "0x1eac" => "A|17", "0x00c2" => "A|12",	"0x1eae" => "A|10", 
				 "0x1eb0" => "A|07", 	"0x1eb2" => "A|08",	"0x1eb4" => "A|09", "0x1eb6" => "A|11", "0x0102" => "A|06",	"0x00c9" => "E|04", 
				 "0x00c8" => "E|01", 	"0x1eba" => "E|02", "0x1ebc" => "E|03", "0x1eb8" => "E|05", "0x1ebe" => "E|10", "0x1ec0" => "E|07", 
				 "0x1ec2" => "E|08", 	"0x1ec4" => "E|09", "0x1ec6" => "E|11", "0x00ca" => "E|06", "0x00cd" => "I|4", 	"0x00cc" => "I|1", 
				 "0x1ec8" => "I|2", 	"0x0128" => "I|3", 	"0x1eca" => "I|5", 	"0x00d3" => "O|04", "0x00d2" => "O|01", "0x1ece" => "O|02", 
				 "0x00d5" => "O|03", 	"0x1ecc" => "O|05", "0x1ed0" => "O|10", "0x1ed2" => "O|07", "0x1ed4" => "O|08", "0x1ed6" => "O|09", 
				 "0x1ed8" => "O|11", 	"0x00d4" => "O|06", "0x1eda" => "O|16", "0x1edc" => "O|13", "0x1ede" => "O|14", "0x1ee0" => "O|15", 
				 "0x1ee2" => "O|17", 	"0x01a0" => "O|12", "0x00da" => "U|04", "0x00d9" => "U|01", "0x1ee6" => "U|02", "0x0168" => "U|03", 
				 "0x1ee4" => "U|05", 	"0x1ee8" => "U|10", "0x1eea" => "U|07", "0x1eec" => "U|08", "0x1eee" => "U|09", "0x1ef0" => "U|11", 
				 "0x01af" => "U|06", 	"0x00dd" => "Y|4", 	"0x1ef2" => "Y|1",	"0x1ef6" => "Y|2", 	"0x1ef8" => "Y|3", 	"0x1ef4" => "Y|5",
				 "0x0110" => "D|1",
				 
				 "0x00e1" => "a|04", 	"0x00e0" => "a|01", "0x1ea3" => "a|02", "0x00e3" => "a|03", "0x1ea1" => "a|05", "0x1ea5" => "a|16", 
				 "0x1ea7" => "a|13", 	"0x1ea9" => "a|14", "0x1eab" => "a|15", "0x1ead" => "a|17", "0x00e2" => "a|12",	"0x1eaf" => "a|10", 
				 "0x1eb1" => "a|07", 	"0x1eb3" => "a|08", "0x1eb5" => "a|09", "0x1eb7" => "a|11", "0x0103" => "a|06",	"0x00e9" => "e|04", 
				 "0x00e8" => "e|01", 	"0x1ebb" => "e|02", "0x1ebd" => "e|03", "0x1eb9" => "e|05", "0x1ebf" => "e|10", "0x1ec1" => "e|07", 
				 "0x1ec3" => "e|08", 	"0x1ec5" => "e|09", "0x1ec7" => "e|11", "0x00ea" => "e|06",	"0x00ed" => "i|4", 	"0x00ec" => "i|1", 
				 "0x1ec9" => "i|2", 	"0x0129" => "i|3", 	"0x1ecb" => "i|5", 	"0x00f3" => "o|04", "0x00f2" => "o|01", "0x1ecf" => "o|02", 
				 "0x00f5" => "o|03",	"0x1ecd" => "o|05", "0x1ed1" => "o|10", "0x1ed3" => "o|07", "0x1ed5" => "o|08", "0x1ed7" => "o|09", 
				 "0x1ed9" => "o|11", 	"0x00f4" => "o|06",	"0x1edb" => "o|16", "0x1edd" => "o|13", "0x1edf" => "o|14", "0x1ee1" => "o|15", 
				 "0x1ee3" => "o|17", 	"0x01a1" => "o|12", "0x00fa" => "u|04", "0x00f9" => "u|01", "0x1ee7" => "u|02", "0x0169" => "u|03", 
				 "0x1ee5" => "u|05", 	"0x1ee9" => "u|10", "0x1eeb" => "u|07", "0x1eed" => "u|08", "0x1eef" => "u|09", "0x1ef1" => "u|11", 
				 "0x01b0" => "u|06", 	"0x00fd" => "y|4", 	"0x1ef3" => "y|1", 	"0x1ef7" => "y|2", 	"0x1ef9" => "y|3", 	"0x1ef5" => "y|5", 
				 "0x0111" => "d|1");

	
	$a = php5UTF8ToASCII( $str, $unknown );
	$r = array();	

	foreach($a as $v){
		$hec = sprintf("0x%04s", dechex($v));
		if( isset($univn[ $hec ]) ){
			$r[] = $univn[ $hec ];
		}
		else{
			$r[] = chr($v);
		}
	}	
	return implode("", $r);
}

/**
 * Initialise GZIP
 */
function initGzip() {
	global $php5_gzip, $do_gzip_compress;

	$do_gzip_compress = false;
	if ($php5_gzip == true) {
		$phpver 	= phpversion();
		$useragent 	= php5GetParam( $_SERVER, 'HTTP_USER_AGENT', '' );
		$canZip 	= php5GetParam( $_SERVER, 'HTTP_ACCEPT_ENCODING', '' );

		$gzip_check 	= 0;
		$zlib_check 	= 0;
		$gz_check		= 0;
		$zlibO_check	= 0;
		$sid_check		= 0;
		if ( strpos( $canZip, 'gzip' ) !== false) {
			$gzip_check = 1;
		}
		if ( extension_loaded( 'zlib' ) ) {
			$zlib_check = 1;
		}
		if ( function_exists('ob_gzhandler') ) {
			$gz_check = 1;
		}
		if ( ini_get('zlib.output_compression') == true ) {
			$zlibO_check = 1;
		}
		if ( ini_get('session.use_trans_sid') ) {
			$sid_check = 1;
		}
		if ( $phpver >= '4.0.4pl1' && ( strpos($useragent,'compatible') !== false || strpos($useragent,'Gecko')	!== false ) ) {
			// Check for gzip header or northon internet securities or session.use_trans_sid
			if ( ( $gzip_check || isset( $_SERVER['---------------']) ) && $zlib_check && $gz_check && !$zlibO_check && !$sid_check ) {
				// You cannot specify additional output handlers if
				// zlib.output_compression is activated here
				ob_start( 'ob_gzhandler' );
				return;
			}
		} else if ( $phpver > '4.0' ) {			
			if ( $gzip_check ) {
				if ( $zlib_check ) {					
					$do_gzip_compress = true;
					ob_start();
					ob_implicit_flush(0);

					header( 'Content-Encoding: gzip' );
					return;
				}
			}
		}
	}
	ob_start();
}

/**
* Perform GZIP
*/
function doGzip() {
	global $do_gzip_compress;	
	if ( $do_gzip_compress ) {
		$gzip_contents = ob_get_contents();
		ob_end_clean();
		$gzip_size = strlen($gzip_contents);
		$gzip_crc = crc32($gzip_contents);

		$gzip_contents = gzcompress($gzip_contents, 9);
		$gzip_contents = substr($gzip_contents, 0, strlen($gzip_contents) - 4);

		echo "\x1f\x8b\x08\x00\x00\x00\x00\x00";
		echo $gzip_contents;
		echo pack('V', $gzip_crc);
		echo pack('V', $gzip_size);
	} else {
		ob_end_flush();		
	}
}

//Paging class
class php5Paging{
	var $pageTotal;
	var $curPage;
	var $url;	
	var $events;
	var $js;

	function php5Paging($pageTotal=0, $curPage=0, $url='', $events=''){
		$this->pageTotal 	= $pageTotal;
		$this->curPage 	= $curPage;
		$this->url 		= $url;
		$this->events 	= $events;
	}		
	
	function checkDivPage(){
		return $this->pageTotal>1?true:false;
	}
	
	function showDivPages(){
		global $lang;

		$str_page = "";	

		$nStart =  $this->curPage - php5ConfigPageTotal;
		if($nStart <= php5ConfigBeginPage)
			$nStart = php5ConfigBeginPage;
			
		if($nStart > 1)
			if($this->js==1){
				$str_page .= "<a class=\"link_page\" href='#' onclick=\"javascript:viewUsers(1);\" title=\"" . $lang['page_first'] . "\" " . $this->events . ">&nbsp;<b>&laquo;</b>&nbsp;" . $lang['page_first'] . "</a> ";
			}
			else{
				$str_page .= "<a class=\"link_page\" href=\"" . $this->url . "&p=1\" title=\"" . $lang['page_first'] . "\" " . $this->events . ">&nbsp;<b>&laquo;</b>&nbsp;" . $lang['page_first'] . "</a> ";
			}

		if($this->curPage > 1) {
			if($this->js==1){
				$str_page .= "<a class=\"link_page\" href='#' onclick=\"javascript:viewUsers(" . ($this->curPage-1) . ");\" title=\"" . @$lang['page_number_cap'] . "&nbsp;" . ($this->curPage-1) . "\" " . $this->events . ">&nbsp;&lt;&nbsp;</a>";
			}
			else{
				$str_page .= "<a class=\"link_page\" href=\"" . $this->url . "&p=" . ($this->curPage-1) . "\" title=\"" . @$lang['page_number_cap'] . "&nbsp;" . ($this->curPage-1) . "\" " . $this->events . ">&nbsp;&lt;&nbsp;</a>";
			}
		}

		$nStop =  $this->curPage + php5ConfigPageTotal;

		if($nStop > $this->pageTotal)
			$nStop = $this->pageTotal;

		if($nStop < (php5ConfigPageTotal*2 + 2) && $this->pageTotal > (php5ConfigPageTotal*2))
			$nStop = php5ConfigPageTotal*4 + 1;

		for($i=$nStart; $i<=$nStop; $i++) {
			if($i == $this->curPage)
				$str_page .= "<span class=\"txt_curr_page\">" . $i . "</span>\n";
			else{
				if($this->js==1){
					$str_page .= "<a class=\"link_page\" href='#' onclick=\"javascript:viewUsers(" . $i . ");\" title=\"" . @$lang['page_number_cap'] . "&nbsp;" . $i . "\" " . $this->events . ">" . $i . "</a>\n";
				}
				else{
					$str_page .= "<a class=\"link_page\" href=\"" . $this->url . "&p=" . $i . "\" title=\"" . @$lang['page_number_cap'] . "&nbsp;" . $i . "\" " . $this->events . ">" . $i . "</a>\n";
				}
			}
		}	

		if($this->curPage < $this->pageTotal){
			if($this->js==1){
				$str_page .= "<a class=\"link_page\" href='#' onclick=\"javascript:viewUsers(" . ($this->curPage+1) . ");\" title=\"" . @$lang['page_number_cap'] . "&nbsp;" . ($this->curPage+1) . "\" " . $this->events . ">&nbsp;&gt;&nbsp;</a>";
			}
			else{
				$str_page .= "<a class=\"link_page\" href=\"" . $this->url . "&p=" . ($this->curPage+1) . "\" title=\"" . @$lang['page_number_cap'] . "&nbsp;" . ($this->curPage+1) . "\" " . $this->events . ">&nbsp;&gt;&nbsp;</a>";
			}
		}
	
		if($nStop < $this->pageTotal){
			if($this->js==1){
				$str_page .= "<a class=\"link_page\" href='#' onclick=\"javascript:viewUsers(" . $this->pageTotal . ");\" title=\"" . @$lang['page_last'] . "\" " . $this->events . ">&nbsp;" . @$lang['page_last'] . "&nbsp;<b>&raquo;</b></a>";
			}
			else{
				$str_page .= "<a class=\"link_page\" href=\"" . $this->url . "&p=" . $this->pageTotal . "\" title=\"" . @$lang['page_last'] . "\" " . $this->events . ">&nbsp;" . @$lang['page_last'] . "&nbsp;<b>&raquo;</b></a>";
			}
		}

		return @$lang['page_number_cap'].' '.$str_page;
	}
	

	function showDivPagesUser(){
		global $lang, $php5WebPath;
		
		$path = $php5WebPath."/template/default/images";
		$ConfigPageTotal = 2;
		
		$str_page = "<div class=\"div_page_fashion\">";	

		$nStart =  $this->curPage - $ConfigPageTotal;
		$nStopTemp =  $this->pageTotal - ($this->curPage + $ConfigPageTotal);
		if($nStopTemp < 0){
			$nStart = $nStart + $nStopTemp;
		}
		if($nStart <= php5ConfigBeginPage)
			$nStart = php5ConfigBeginPage;

		if($nStart >= 1 && $this->curPage>1)
			if($this->js==1){
				$str_page .= "<div class=\"div_page\"><a class=\"link_page\" href=\"javascript:viewUsers(1);\" title=\"" . $lang['page_first'] . "\" " . $this->events . "><img src=\"".$path."/page6.gif"."\" /></a></div>";
			}
			else{
				$str_page .= "<div class=\"div_page\"><a class=\"link_page\" href=\"" . $this->url . "&p=1\" title=\"" . $lang['page_first'] . "\" " . $this->events . "><img src=\"".$path."/page6.gif"."\" /></a></div>";
			}

		if($this->curPage > 1) {
			if($this->js==1){
				$str_page .= "<div class=\"div_page\"><a class=\"link_page\" href=\"javascript:viewUsers(" . ($this->curPage-1) . ");\" title=\"" . @$lang['page_number_cap'] . "&nbsp;" . ($this->curPage-1) . "\" " . $this->events . "><img src=\"".$path."/page3.gif"."\" /></a></div>";
			}
			else{
				$str_page .= "<div class=\"div_page\"><a class=\"link_page\" href=\"" . $this->url . "&p=" . ($this->curPage-1) . "\" title=\"" . @$lang['page_number_cap'] . "&nbsp;" . ($this->curPage-1) . "\" " . $this->events . "><img src=\"".$path."/page3.gif"."\" /></a></div>";
			}
		}
		else{
			$str_page .= "<div class=\"div_page\"><img src=\"".$path."/page7.gif"."\" /></div>";
			$str_page .= "<div class=\"div_page\"><img src=\"".$path."/page1.gif"."\" /></div>";
		}

		$nStop =  $this->curPage + $ConfigPageTotal;

		if($nStop > $this->pageTotal)
			$nStop = $this->pageTotal;

		if($nStop < ($ConfigPageTotal*2 + 2) && $this->pageTotal > ($ConfigPageTotal*2))
			$nStop = $ConfigPageTotal*2 + 1;

		for($i=$nStart; $i<=$nStop; $i++) {
			if($i == $this->curPage)
				$str_page .= "<div class=\"text_fashion\">" . $i . "</div>";
			else{
				if($this->js==1){
					$str_page .= "<div class=\"div_page_text\"><a class=\"fashion\" href=\"javascript:viewUsers(" . $i . ");\" title=\"" . @$lang['page_number_cap'] . "&nbsp;" . $i . "\" " . $this->events . ">" . $i . "</a></div>";
				}
				else{
					$str_page .= "<div class=\"div_page_text\"><a class=\"fashion\" href=\"" . $this->url . "&p=" . $i . "\" title=\"" . @$lang['page_number_cap'] . "&nbsp;" . $i . "\" " . $this->events . ">" . $i . "</a></div>";
				}
			}
		}	

		if($this->curPage < $this->pageTotal){
			if($this->js==1){
				$str_page .= "<div class=\"div_page\"><a class=\"link_page\" href=\"javascript:viewUsers(" . ($this->curPage+1) . ");\" title=\"" . @$lang['page_number_cap'] . "&nbsp;" . ($this->curPage+1) . "\" " . $this->events . "><img src=\"".$path."/page2.gif"."\" /></a></div>";
			}
			else{
				$str_page .= "<div class=\"div_page\"><a class=\"link_page\" href=\"" . $this->url . "&p=" . ($this->curPage+1) . "\" title=\"" . @$lang['page_number_cap'] . "&nbsp;" . ($this->curPage+1) . "\" " . $this->events . "><img src=\"".$path."/page2.gif"."\" /></a></div>";
			}
		}

		if($this->curPage < $this->pageTotal){
			if($this->js==1){
				$str_page .= "<div class=\"div_page\"><a class=\"link_page\" href=\"javascript:viewUsers(" . $this->pageTotal . ");\" title=\"" . @$lang['page_last'] . "\" " . $this->events . "><img src=\"".$path."/page5.gif"."\" /></a></div>";
			}
			else{
				$str_page .= "<div class=\"div_page\"><a class=\"link_page\" href=\"" . $this->url . "&p=" . $this->pageTotal . "\" title=\"" . @$lang['page_last'] . "\" " . $this->events . "><img src=\"".$path."/page5.gif"."\" /></a></div>";
			}
		}
		else{
			$str_page .= "<div class=\"div_page\"><img src=\"".$path."/page8.gif"."\" /></div>";
			$str_page .= "<div class=\"div_page\"><img src=\"".$path."/page4.gif"."\" /></div>";
		}

		return " <div class=\"clr\"></div></div>".$str_page;
	}	
}
$htmlent2utf8 = array(
 '&nbsp;' => "\xC2\xA0", '&iexcl;' => "\xC2\xA1", '&cent;' => "\xC2\xA2", 
 '&pound;' => "\xC2\xA3", '&curren;' => "\xC2\xA4", '&yen;' => "\xC2\xA5", 
 '&brvbar;' => "\xC2\xA6", '&sect;' => "\xC2\xA7", '&uml;' => "\xC2\xA8", 
 '&copy;' => "\xC2\xA9", '&ordf;' => "\xC2\xAA", '&laquo;' => "\xC2\xAB", 
 '&not;' => "\xC2\xAC", '&shy;' => "\xC2\xAD", '&reg;' => "\xC2\xAE", 
 '&macr;' => "\xC2\xAF", '&deg;' => "\xC2\xB0", '&plusmn;' => "\xC2\xB1", 
 '&sup2;' => "\xC2\xB2", '&sup3;' => "\xC2\xB3", '&acute;' => "\xC2\xB4", 
 '&micro;' => "\xC2\xB5", '&para;' => "\xC2\xB6", '&middot;' => "\xC2\xB7", 
 '&cedil;' => "\xC2\xB8", '&sup1;' => "\xC2\xB9", '&ordm;' => "\xC2\xBA", 
 '&raquo;' => "\xC2\xBB", '&frac14;' => "\xC2\xBC", '&frac12;' => "\xC2\xBD", 
 '&frac34;' => "\xC2\xBE", '&iquest;' => "\xC2\xBF", '&Agrave;' => "\xC3\x80", 
 '&Aacute;' => "\xC3\x81", '&Acirc;' => "\xC3\x82", '&Atilde;' => "\xC3\x83", 
 '&Auml;' => "\xC3\x84", '&Aring;' => "\xC3\x85", '&AElig;' => "\xC3\x86", 
 '&Ccedil;' => "\xC3\x87", '&Egrave;' => "\xC3\x88", '&Eacute;' => "\xC3\x89", 
 '&Ecirc;' => "\xC3\x8A", '&Euml;' => "\xC3\x8B", '&Igrave;' => "\xC3\x8C", 
 '&Iacute;' => "\xC3\x8D", '&Icirc;' => "\xC3\x8E", '&Iuml;' => "\xC3\x8F", 
 '&ETH;' => "\xC3\x90", '&Ntilde;' => "\xC3\x91", '&Ograve;' => "\xC3\x92", 
 '&Oacute;' => "\xC3\x93", '&Ocirc;' => "\xC3\x94", '&Otilde;' => "\xC3\x95", 
 '&Ouml;' => "\xC3\x96", '&times;' => "\xC3\x97", '&Oslash;' => "\xC3\x98", 
 '&Ugrave;' => "\xC3\x99", '&Uacute;' => "\xC3\x9A", '&Ucirc;' => "\xC3\x9B", 
 '&Uuml;' => "\xC3\x9C", '&Yacute;' => "\xC3\x9D", '&THORN;' => "\xC3\x9E", 
 '&szlig;' => "\xC3\x9F", '&agrave;' => "\xC3\xA0", '&aacute;' => "\xC3\xA1", 
 '&acirc;' => "\xC3\xA2", '&atilde;' => "\xC3\xA3", '&auml;' => "\xC3\xA4", 
 '&aring;' => "\xC3\xA5", '&aelig;' => "\xC3\xA6", '&ccedil;' => "\xC3\xA7", 
 '&egrave;' => "\xC3\xA8", '&eacute;' => "\xC3\xA9", '&ecirc;' => "\xC3\xAA", 
 '&euml;' => "\xC3\xAB", '&igrave;' => "\xC3\xAC", '&iacute;' => "\xC3\xAD", 
 '&icirc;' => "\xC3\xAE", '&iuml;' => "\xC3\xAF", '&eth;' => "\xC3\xB0", 
 '&ntilde;' => "\xC3\xB1", '&ograve;' => "\xC3\xB2", '&oacute;' => "\xC3\xB3", 
 '&ocirc;' => "\xC3\xB4", '&otilde;' => "\xC3\xB5", '&ouml;' => "\xC3\xB6", 
 '&divide;' => "\xC3\xB7", '&oslash;' => "\xC3\xB8", '&ugrave;' => "\xC3\xB9", 
 '&uacute;' => "\xC3\xBA", '&ucirc;' => "\xC3\xBB", '&uuml;' => "\xC3\xBC", 
 '&yacute;' => "\xC3\xBD", '&thorn;' => "\xC3\xBE", '&yuml;' => "\xC3\xBF", 
 '&OElig;' => "\xC5\x92", '&oelig;' => "\xC5\x93", 
 '&Scaron;' => "\xC5\xA0", '&scaron;' => "\xC5\xA1", '&Yuml;' => "\xC5\xB8", 
 '&circ;' => "\xCB\x86", '&tilde;' => "\xCB\x9C", '&ensp;' => "\xE2\80\82", 
 '&emsp;' => "\xE2\80\83", '&thinsp;' => "\xE2\80\89", '&zwnj;' => "\xE2\80\8C", 
 '&zwj;' => "\xE2\80\8D", '&lrm;' => "\xE2\80\8E", '&rlm;' => "\xE2\80\8F", 
 '&ndash;' => "\xE2\80\93", '&mdash;' => "\xE2\80\94", '&lsquo;' => "\xE2\80\98", 
 '&rsquo;' => "\xE2\80\99", '&sbquo;' => "\xE2\80\9A", '&ldquo;' => "\xE2\80\9C", 
 '&rdquo;' => "\xE2\80\9D", '&bdquo;' => "\xE2\80\9E", '&dagger;' => "\xE2\80\A0", 
 '&Dagger;' => "\xE2\80\A1", '&permil;' => "\xE2\80\B0", '&lsaquo;' => "\xE2\80\B9", 
 '&rsaquo;' => "\xE2\80\BA", '&euro;' => "\xE2\x82\xAC", '&fnof;' => "\xC6\x92", 
 '&Alpha;' => "\xCE\x91", '&Beta;' => "\xCE\x92", '&Gamma;' => "\xCE\x93", 
 '&Delta;' => "\xCE\x94", '&Epsilon;' => "\xCE\x95", '&Zeta;' => "\xCE\x96", 
 '&Eta;' => "\xCE\x97", '&Theta;' => "\xCE\x98", '&Iota;' => "\xCE\x99", 
 '&Kappa;' => "\xCE\x9A", '&Lambda;' => "\xCE\x9B", '&Mu;' => "\xCE\x9C", 
 '&Nu;' => "\xCE\x9D", '&Xi;' => "\xCE\x9E", '&Omicron;' => "\xCE\x9F", 
 '&Pi;' => "\xCE\xA0", '&Rho;' => "\xCE\xA1", '&Sigma;' => "\xCE\xA3", 
 '&Tau;' => "\xCE\xA4", '&Upsilon;' => "\xCE\xA5", '&Phi;' => "\xCE\xA6", 
 '&Chi;' => "\xCE\xA7", '&Psi;' => "\xCE\xA8", '&Omega;' => "\xCE\xA9", 
 '&alpha;' => "\xCE\xB1", '&beta;' => "\xCE\xB2", '&gamma;' => "\xCE\xB3", 
 '&delta;' => "\xCE\xB4", '&epsilon;' => "\xCE\xB5", '&zeta;' => "\xCE\xB6", 
 '&eta;' => "\xCE\xB7", '&theta;' => "\xCE\xB8", '&iota;' => "\xCE\xB9", 
 '&kappa;' => "\xCE\xBA", '&lambda;' => "\xCE\xBB", '&mu;' => "\xCE\xBC", 
 '&nu;' => "\xCE\xBD", '&xi;' => "\xCE\xBE", '&omicron;' => "\xCE\xBF", 
 '&pi;' => "\xCF\x80", '&rho;' => "\xCF\x81", '&sigmaf;' => "\xCF\x82", 
 '&sigma;' => "\xCF\x83", '&tau;' => "\xCF\x84", '&upsilon;' => "\xCF\x85", 
 '&phi;' => "\xCF\x86", '&chi;' => "\xCF\x87", '&psi;' => "\xCF\x88", 
 '&omega;' => "\xCF\x89", '&thetasym;' => "\xCF\x91", '&upsih;' => "\xCF\x92", 
 '&piv;' => "\xCF\x96", '&bull;' => "\xE2\80\A2", '&hellip;' => "\xE2\80\A6", 
 '&prime;' => "\xE2\80\B2", '&Prime;' => "\xE2\80\B3", '&oline;' => "\xE2\80\BE", 
 '&frasl;' => "\xE2\81\84", '&weierp;' => "\xE2\84\98", '&image;' => "\xE2\84\91", 
 '&real;' => "\xE2\84\9C", '&trade;' => "\xE2\84\A2", '&alefsym;' => "\xE2\84\B5", 
 '&larr;' => "\xE2\86\90", '&uarr;' => "\xE2\86\91", '&rarr;' => "\xE2\86\92", 
 '&darr;' => "\xE2\86\93", '&harr;' => "\xE2\86\94", '&crarr;' => "\xE2\86\B5", 
 '&lArr;' => "\xE2\87\90", '&uArr;' => "\xE2\87\91", '&rArr;' => "\xE2\87\92", 
 '&dArr;' => "\xE2\87\93", '&hArr;' => "\xE2\87\94", '&forall;' => "\xE2\88\80", 
 '&part;' => "\xE2\88\82", '&exist;' => "\xE2\88\83", '&empty;' => "\xE2\88\85", 
 '&nabla;' => "\xE2\88\87", '&isin;' => "\xE2\88\88", '&notin;' => "\xE2\88\89", 
 '&ni;' => "\xE2\88\8B", '&prod;' => "\xE2\88\8F", '&sum;' => "\xE2\88\91", 
 '&minus;' => "\xE2\88\92", '&lowast;' => "\xE2\88\97", '&radic;' => "\xE2\88\9A", 
 '&prop;' => "\xE2\88\9D", '&infin;' => "\xE2\88\9E", '&ang;' => "\xE2\88\A0", 
 '&and;' => "\xE2\88\A7", '&or;' => "\xE2\88\A8", '&cap;' => "\xE2\88\A9", 
 '&cup;' => "\xE2\88\AA", '&int;' => "\xE2\88\AB", '&there4;' => "\xE2\88\B4", 
 '&sim;' => "\xE2\88\BC", '&cong;' => "\xE2\89\85", '&asymp;' => "\xE2\89\88", 
 '&ne;' => "\xE2\89\A0", '&equiv;' => "\xE2\89\A1", '&le;' => "\xE2\89\A4", 
 '&ge;' => "\xE2\89\A5", '&sub;' => "\xE2\8A\82", '&sup;' => "\xE2\8A\83", 
 '&nsub;' => "\xE2\8A\84", '&sube;' => "\xE2\8A\86", '&supe;' => "\xE2\8A\87", 
 '&oplus;' => "\xE2\8A\95", '&otimes;' => "\xE2\8A\97", '&perp;' => "\xE2\8A\A5", 
 '&sdot;' => "\xE2\8B\85", '&lceil;' => "\xE2\8C\88", '&rceil;' => "\xE2\8C\89", 
 '&lfloor;' => "\xE2\8C\8A", '&rfloor;' => "\xE2\8C\8B", '&lang;' => "\xE2\8C\A9", 
 '&rang;' => "\xE2\8C\AA", '&loz;' => "\xE2\97\8A", '&spades;' => "\xE2\99\A0", 
 '&clubs;' => "\xE2\99\A3", '&hearts;' => "\xE2\99\A5", '&diams;' => "\xE2\99\A6" ); 
 /*
  convert HTML entities (as defined in XHTML 1.0 spec) to UTF-8-encoded Unicode
  EXCEPT: lt, gt, amp, quot, and apos
*/
function htmlent_to_utf8($entstring) {
   global $htmlent2utf8;
   return strtr($entstring, $htmlent2utf8);
}
function genRandomString($length) {
    
    $characters = '0123456789abcdefghijklmnopqrstuvwxyz';
    $string = '';    

    for ($p = 0; $p < $length; $p++) {
        @$string .= $characters[mt_rand(0, strlen($characters))];
    }

    return @$string;
}


function fckeditor($params){
	global $php5RootPath,$php5WebPath;
    require_once($php5RootPath."/includes/fckeditor/fckeditor.php");
    $oFCKeditor = new FCKeditor($params['name']) ;
    $oFCKeditor->BasePath    = $php5WebPath."/includes/fckeditor/" ;
    $oFCKeditor->Value        = $params['value'];
    $oFCKeditor->Height        = $params['height'];
    $oFCKeditor->width        = $params['width'];
    $oFCKeditor->ToolbarSet    = $params['toolbar'];
    $oFCKeditor->Create() ;
} 

function resizeImage($originalImage, $thumbfile, $toWidth,$toHeight){
    // The file
	$filename = $originalImage;
	
	// Set a maximum height and width
	$width = $toWidth;
	$height = $toHeight;	
	
	// Get new dimensions
	list($width_orig, $height_orig) = getimagesize($filename);	
	
	// Resample
	$image_p = imagecreatetruecolor($width, $height);
	$image = imagecreatefromjpeg($filename);
	imagecopyresampled($image_p, $image, 0, 0, 0, 0, $width, $height, $width_orig, $height_orig);
	
	// Output	
	imagejpeg($image_p, $thumbfile);
}
function uploadPhoto($file_array, $filename){
	$err = '';
	$uploaded_type = $file_array['type'] ;
	$uploaded_size = $file_array['size'];
	if($uploaded_size > 2000000) {
		 $err="The file's size can not exceed 2MB";
	} else if($uploaded_type!="image/gif" && $uploaded_type!="image/jpg" && $uploaded_type!="image/jpeg" && $uploaded_type!="image/png") {
		$err="Files not supported.";
	} else if (is_uploaded_file($file_array['tmp_name'])){
		copy($file_array['tmp_name'], $filename) or die("Couldn't copy");	
	}		
	return $err;
}
function curPageURL() {
 $pageURL = 'http';
 if ($_SERVER["HTTPS"] == "on") {$pageURL .= "s";}
 $pageURL .= "://";
 if ($_SERVER["SERVER_PORT"] != "80") {
  $pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
 } else {
  $pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
 }
 return $pageURL;
}

/*
 *  check login
 */
function checkLogin(){
	global $php5Session, $php5WebPath;
	$admin_id = $php5Session->getVar("admin_id");
	if (!$admin_id)
		php5Redirect(sefBuild($php5WebPath, 'index.php?o=main&m=main', 0));	
}
/*
 *  check login of admin
 */
function checkLoginAdmin(){
	global $php5Session, $php5WebPath;
	$admin_id = $php5Session->getVar("admin_id");
	if (!$admin_id) {
		return false;
	}
  return true;
}
/*
 *  create connect common
 */
function connectDBCommon($db_host, $db_user, $db_pass, $db_name = 'uaconsul_motul_comon', $table_prefix){
	// Make the database connection.
	$php5DB = new php5Database( $db_host, $db_user, $db_pass, $db_name, $table_prefix );
	if ($php5DB->getErrorNum()) {
		$php5SystemError = $php5DB->getErrorNum();	
		return false;
	}
	return $php5DB;
}
/*
 *  create connect english
 */
function connectDBEnglish($db_host, $db_user, $db_pass, $db_name = 'uaconsul_motul_en', $table_prefix){
	// Make the database connection.
	$php5DB = new php5Database( $db_host, $db_user, $db_pass, $db_name, $table_prefix );
	if ($php5DB->getErrorNum()) {
		$php5SystemError = $php5DB->getErrorNum();	
		return false;
	}
	return $php5DB;
}
/*
 * write logs
 */

function writeHistoryLogs($type, $who_id, $action, $hdb){
	$row = new php5HistoryLogs($hdb);
	$row->id  = '';
	$row->type  = $type;
	$row->who_id  = $who_id;
	$row->action  = $action;
	$row->remote_ip = $_SERVER['REMOTE_ADDR'];
	$row->date = php5GMTTime();
	
	if (!$row->store()) {	
		return false;
	}
	return true;
}

function line_chart($arr_value_x, $arr_value_y, $ID,$Y_Title, $X_Title){
	$script = "
			<script type=\"text/javascript\" src=\"https://www.google.com/jsapi\"></script>
			<script type=\"text/javascript\">	
			  google.load(\"visualization\", \"1\", {packages:[\"corechart\"]});
			  google.setOnLoadCallback(drawChart);
			  function drawChart() {
				var rows = ".count($arr_value_x).";  
				var w = 700;
				if (rows>10){
					w += (rows-10)*60; 
				}  
				
				var data = new google.visualization.DataTable();
				data.addColumn('string', 'Month');
				data.addColumn('number', '".$Y_Title."');
				data.addRows(rows);
			";
			
	for($i=0; $i<count($arr_value_x); $i++){
		$script.="data.setValue(". $i .", 0, '".$arr_value_x[$i]."');
			     data.setValue(". $i .", 1, ".$arr_value_y[$i].");";
	}
    $script.="var chart = new google.visualization.LineChart(document.getElementById('".$ID."'));
        chart.draw(data, {width: w, height: 240, title: 'Company Performance',fontSize: 11, lineWidth:3, colors:['#b20368','#004411'], legend:'none', chartArea:{left:50,top:30, width:'100%',height:'75%'}, vAxis:{title: '".$Y_Title."'}, hAxis:{title: '".$X_Title."'}});
      }
    </script>	
	";
	$script.='<div id="'.$ID.'" style="width:670px; overflow:auto; height:260px; font-size:11px;"></div>';
	return $script;
}
function php5CleanSpecialChar($str){
	$clean = preg_replace("/^[^a-z0-9]?(.*?)[^a-z0-9]?$/i", "$1", $str);
	$clean = strtolower($clean);
	$clean = str_replace(" ","-", $clean);
	return $clean;
}
function createDateRangeArray($start_date,$end_date) {  
  
  $arr1 = explode('/', $start_date);
  $arr2 = explode('/', $end_date);  

  $aryRange=array();
  $iDateFrom=mktime(1,0,0,$arr1[0], $arr1[1],$arr1[2]);
  $iDateTo=mktime(1,0,0,$arr2[0], $arr2[1],$arr2[2]);
  
  if ($iDateTo>=$iDateFrom) {
    array_push($aryRange,date('Y-m-d',$iDateFrom)); // first entry

    while ($iDateFrom<$iDateTo) {
      $iDateFrom+=86400; // add 24 hours
      array_push($aryRange,date('Y-m-d',$iDateFrom));
    }
  }
  return $aryRange;
}
////////////////////////////////////////////////
function insertMailSms($hdb, $type, $mobile, $content)
{
		global $php5RootPath;
		require_once($php5RootPath . "/classes/mailsms.class.php");
		$mailsms = new MailSms($hdb);
		$mailsms->type = $type;
		$mailsms->mobile = $mobile;
		$mailsms->content = $content;
		$mailsms->date_post = php5GMTTime();
		$mailsms->store();
}
//////////////////////////////////////////////////////////////////
function sendSMSAllow($php5DB, $mobile, $content, $flg = 1)
{
	$smsflg = 1;
	$order   = array(" ", "-", "+", "(", ")");
	$mobile = str_replace($order, "", $mobile);
	//create soap client while setting response timeout to 10 minutes
	try {
			$client = new SoapClient('http://asia.ipx.com/api/services2/SmsApi52?wsdl',
			array('default_socket_timeout'=>'600'));
			$params = array(
			'correlationId'=>'corrId',
			'originatingAddress'=>'81033',
			'originatorTON'=>'0',
			'destinationAddress'=> $mobile,
			'userData'=> $content,
			'userDataHeader'=>'#NULL#',
			'DCS'=>'-1',
			'PID'=>'-1',
			'relativeValidityTime'=>'-1',
			'deliveryTime'=>'#NULL#',
			'statusReportFlags'=>'0',
			'accountName'=>'#NULL#',
			'tariffClass'=>'SGD0',
			'VAT'=>'-1',
			'referenceId'=>'#NULL#',
			'serviceName'=>'#NULL#',
			'serviceCategory'=>'#NULL#',
			'serviceMetaData'=>'#NULL#',
			'campaignName'=>'#NULL#',
			'username'=>'uasolutionBC-sg',
			'password'=>'17AGaSG7jh');
			$result = $client -> __soapCall('send', array('request' => $params));
			$st = '';
			$st .= 'Mobile: '.$mobile.'<br>';
			$st .= 'Content: '.$content.'<br>';
			$st .= 'Result: correlationId: '.$result->correlationId.'<br>';
			$st .= 'Result: messageId: '.$result->messageId.'<br>';
			$st .= 'Result: responseCode: '.$result->responseCode.'<br>';
			$st .= 'Result: reasonCode: '.$result->reasonCode.'<br>';
			$st .= 'Result: responseMessage: '.$result->responseMessage.'<br>';
			$st .= 'Result: temporaryError: '.$result->temporaryError.'<br>';
			$st .= 'Result: billingStatus: '.$result->billingStatus.'<br>';
			$st .= 'Result: VAT: '.$result->VAT.'<br>';
			insertMailSms($php5DB, 2, $mobile, $st);
			
	} catch (Exception $e) {
			$st = '';
			$st .= 'Mobile: '.$mobile.'<br>';
			$st .= 'Content: '.$content.'<br>';
			$st .= 'Error system <br>';
			insertMailSms($php5DB, 2, $mobile, $st);		
	}
	
}

function updateVisitor($is_member){
	global $php5DB_en;
	$ip = $_SERVER['REMOTE_ADDR'];
	$curTime = php5MkTime(date("m/d/Y"), "m/d/Y");
	$query = "SELECT * FROM #__visitors WHERE `date`='$curTime' AND `ip`='$ip' AND is_member=$is_member";
	
	$php5DB_en->setQuery($query);
	$r = $php5DB_en->query();
	
	if($php5DB_en->getNumRows($r) == 0){
		$query = "INSERT INTO #__visitors(`ip`, `date`, is_member) VALUES('". $ip."', '".$curTime."', ".$is_member.")";
		$php5DB_en->setQuery( $query );
		if($php5DB_en->query()){
			return true;
		}
	}		
	return false;
}
function isCheckout($url){	
	global $php5Session;
	if ($php5Session->getVar('counter') < 2 ) {
          header('Location: ' . $url);	 			  
	}
	$php5Session->setVar('err_msg', 'Please add a item to your cart.');
}

function lib_get_discounted_price($unit_price, $discount_type, $discount_value) {
	//$unit_price = $this->unit_price;
	//$discount_type = $this->condtype2 	;
	//$discount_value = $this->discount;				
	switch($discount_type)
	{
	 case 'ZD02':
		  return $unit_price* (100 - $discount_value) / 100;
		  break;
	 case 'ZD03':
		  return $unit_price - ($discount_value) ;
		  break;			    
	 }
	return $uit_price;		 
}
function lib_gst($price) {
	$config = new Configuration();
	$gst = $config->get_value('config_gst');
	$gst_rate =  $gst/100;
	return number_format(($price*$gst_rate),2);
}

function smtpcom_get( $ch, $url ) {
	curl_setopt($ch, CURLOPT_URL, $url);
	$res = curl_exec($ch);
	if ( !curl_errno($ch) && $res ) {
		$parsed = json_decode($res, 1);
		if ( !$parsed['code'] ){
			return $parsed;
		} else {
			//echo 'Error ' . @$parse['code'] . '.' . @$parse['message'];
		}
	} else {
		echo 'Some error was occured: ' . curl_errno($ch);
	}
}

?>