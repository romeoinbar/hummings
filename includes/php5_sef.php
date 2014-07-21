<?php
/**
 * @version $Id: php5_sef.php 2009-04-07
 * @package 
 * @author 
 * @copyright Copyright (C) 2008 - 2009 by DGC Corp. All rights reserved.
 * @link
 */
$localhost = 1;
defined('PHP5_PHP') or die("Application is stopping!!!");

$folder = 1;
$keysearch = 1;
$arr_folder = array(
                "cart" => 1
              );
if ($php5_sef) {
    $url_array = explode('/', $_SERVER['REQUEST_URI']);
    $i = 0;
    if($localhost) {
      $i++;
    }
    if ( count($url_array) ) {
        $uri = explode('?', $_SERVER['REQUEST_URI']);
        $uri_array = explode('/', trim( $uri[0], '/' ));
        $QUERY_STRING = '';
                if(isset($uri_array[($localhost + 1)-1])) {
                    if($uri_array[($localhost + 1)-1] == 'mobile-cart') {
                        $_REQUEST['env']     = 'smp';
                    } else {
                        $_REQUEST['env']     = 'PC';
                    }
                } else {
                    $_REQUEST['env']     = 'PC';
                }
                if( (count($uri_array) + 1) >= (1 + $i) && (isset($uri_array[$i]) && $uri_array[$i] != 'admin')) {
                    if( count($uri_array) >= ($i + 4 + $keysearch) ) {
                            $m             = @$uri_array[$i+2];
                            $f             = @$uri_array[$i + 1];
                            $task           = @$uri_array[$i + 3];
                            $id           = @$uri_array[$i + 4];
    
                            // pass data onto global variables
                            $_GET['m']         = $m;
                            $_REQUEST['m']       = $m;
                            $_GET['o']         = $f;
                            $_REQUEST['o']       = $f;
                            $_GET['task']       = $task;
                            $_REQUEST['task']     = $task;
                            $_GET['id']       = $id;
                            $_REQUEST['id']     = $id;
    
                            $QUERY_STRING = "m=$m&f=$f&task=$task&id=$id";
                    }
                    elseif( count($uri_array) == ($i + 3 + $keysearch) ) {
                            $m             = @$uri_array[$i + 2];
                            $f             = @$uri_array[$i+1];
                            $task           = @$uri_array[$i + 3];
    
                            // pass data onto global variables
                            $_GET['m']         = $m;
                            $_REQUEST['m']       = $m;
                            $_GET['o']         = $f;
                            $_REQUEST['o']       = $f;
                            $_GET['task']       = $task;
                            $_REQUEST['task']     = $task;
    
                            $QUERY_STRING = "m=$m&f=$f&task=$task";
                    }
                    elseif( count($uri_array) == ($i + 2 + $keysearch) ) {
                            $m             = @$uri_array[$i + 2];
                            $f             = @$uri_array[$i+1];
    
                            // pass data onto global variables
                            $_GET['m']         = $m;
                            $_REQUEST['m']       = $m;
                            $_GET['o']         = $f;
                            $_REQUEST['o']       = $f;
    
                            $QUERY_STRING = "m=$m&f=$f";
                    }
                    elseif( count($uri_array) == ($i + 1 + $keysearch) ) {
                            $f             = @$uri_array[$i+1];

                            $_GET['o']         = $f;
                            $_REQUEST['o']       = $f;

                            $QUERY_STRING = "f=$f";
                    }
                } else {
                    if( count($uri_array) == ($i + 1) ) {
                          $t             = "insite";
                            $m             = "";
                            $f             = "";
                            $task           = "";
    
                            // pass data onto global variables
                            $_GET['t']         = $t;
                            $_REQUEST['t']       = $t;
    
                            $QUERY_STRING = "t=$t";
                    } else if( count($uri_array) == ($i + 2) ) {
                          $t             = "insite";
                            $m             = "";
                            $f             = $uri_array[$i + 1];
    
                            // pass data onto global variables
                            $_GET['t']         = $t;
                            $_REQUEST['t']       = $t;
                            $_GET['o']         = $f;
                            $_REQUEST['o']       = $f;
    
                            $QUERY_STRING = "t=$t&o=$f";
                        
                    } else if( count($uri_array) == ($i + 3) ) {
                        $t             = "insite";
                            $m             = $uri_array[$i + 2];
                            $f             = $uri_array[$i + 1];
    
                            // pass data onto global variables
                            $_GET['t']         = $t;
                            $_REQUEST['t']       = $t;
                            $_GET['m']         = $m;
                            $_REQUEST['m']       = $m;
                            $_GET['o']         = $f;
                            $_REQUEST['o']       = $f;
    
                            $QUERY_STRING = "t=$t&o=$f";
                        
                    } else if( count($uri_array) > ($i + 3) ) {
                            $t             = "insite";
                            $m             = $uri_array[$i + 2];
                            $f             = $uri_array[$i + 1];
                            $task           = @$uri_array[$i + 3];
                            $id          = @$uri_array[$i + 4];
    
                            // pass data onto global variables
                            $_GET['t']         = $t;
                            $_REQUEST['t']       = $t;
                            $_GET['m']         = $m;
                            $_REQUEST['m']       = $m;
                            $_GET['o']         = $f;
                            $_REQUEST['o']       = $f;
                            $_GET['task']       = $task;
                            $_REQUEST['task']     = $task;
                            $_GET['id']       = $id;
                            $_REQUEST['id']     = $id;
    
                            $QUERY_STRING = "t=$t&o=$f&m=$m&task=$task&id=$id";
                        
                    }
                }

        if( isset($_REQUEST['qs']) && strlen($_REQUEST['qs']) > 2 ) {
            $_REQUEST['qs'] = $_GET['qs'] = explode('/', trim($_REQUEST['qs'], '/'));
        }

        if( strlen($QUERY_STRING) > 0 ) {
            $_SERVER['QUERY_STRING']   = $QUERY_STRING;
            $REQUEST_URI         = $php5WebPath . '/index.php?'. $QUERY_STRING;
            $_SERVER['REQUEST_URI']   = $REQUEST_URI;
        }
//print_r($_SERVER);die;
    }
} else {
    $uri = explode('?', $_SERVER['REQUEST_URI']);
    $uri_array = explode('/', trim( $uri[0], '/' ));
    $QUERY_STRING = '';
    $i = 0;
    if($localhost) {
        $i++;
    }
    if( (count($uri_array)  == ($i + 1) && isset($uri_array[$i]) && $uri_array[$i] == 'admin')) {
        $_GET['t']         = 'admin';
        $_REQUEST['t']       = 'admin';
    }
}

/**
 * Converts an absolute URL to SEF format
 * @param string The URL
 * @return string
 */
function sefBuild( $php5WebPath, $string, $outsite = 1, $setpage = false ) {
    global $php5_sef, $env;

    // SEF URL Handling
    //if ( $php5_sef && !eregi("^(([^:/?#]+):)",$string) ) {
    if ( $php5_sef ) {
    // Replace all &amp; with &
        $string = str_replace( '&amp;', '&', $string );

        // Home index.php
        if ($string == 'index.php') {
            return $php5WebPath;
        }

        // break link into url component parts
        $url = parse_url( $string );

        // check if link contained fragment identifiers (ex. #foo)
        $fragment = '';
        if ( isset($url['fragment']) ) {
        // ensure fragment identifiers are compatible with HTML4
            if (preg_match('@^[A-Za-z][A-Za-z0-9:_.-]*$@', $url['fragment'])) {
                $fragment = '#'. $url['fragment'];
            }
        }

        // check if link contained a query component
        if ( isset($url['query']) ) {
        // special handling for javascript
            $url['query'] = stripslashes( str_replace( '+', '%2b', $url['query'] ) );
            // clean possible xss attacks
            $url['query'] = preg_replace( "'%3Cscript[^%3E]*%3E.*?%3C/script%3E'si", '', $url['query'] );

            // break url into component parts
            parse_str( $url['query'], $parts );

            // special handling for javascript
            foreach( $parts as $key => $value) {
                if ( strpos( $value, '+' ) !== false ) {
                    $parts[$key] = stripslashes( str_replace( '%2b', '+', $value ) );
                }
            }
            $sefstring = '';
            if($outsite) {
                            if($env == 'PC') {
                  $sefstring = 'cart/';
                            } else {
                                $sefstring = 'mobile-cart/';
                            }
            } else {
                            $sefstring = 'admin/';
                        }
            // Module urls
            if ( isset($parts['o']) ) {
            //index
                if ( isset( $parts['o'] ) ) {
                    $sefstring .= $parts['o'].'/';
                }
                // module
                if ( isset( $parts['m'] ) ) {
                    $sefstring .= $parts['m'].'/';
                }
                // file
                if ( isset( $parts['f'] ) ) {
                    $sefstring .= $parts['f'].'/';
                }
                // action
                if ( isset( $parts['task'] ) ) {
                    $sefstring .= $parts['task'].'/';
                }
                // id
                if ( isset( $parts['id'] ) ) {
                    $sefstring .= $parts['id'].'/';
                }
                // cid
                if ( isset( $parts['cid'] ) ) {
                    $sefstring .= $parts['cid'].'/';
                }

                $string = $sefstring;
            }
        }
		$page = $setpage ? "?" : ""; 
        return $php5WebPath .'/'. $string . $page . $fragment;
    } else {
    	// Handling for when SEF is not activated
		$page = $setpage ? "&" : "";	
        // Home index.php
        if ($string == 'index.php') {
                        if($outsite) {
                return $php5WebPath;
                        } else {
                            return $php5WebPath .'/index.php?t=admin'. $page;
                        }
        } else {
                    if($outsite) {
                        return $php5WebPath .'/'. $string . $page;
                    } else {
                        return $php5WebPath .'/'. $string."&t=admin". $page;
                    }
                }
        
    }
}
