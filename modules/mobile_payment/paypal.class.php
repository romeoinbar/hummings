<?php
/**
 * Description of PayPal
 *
 * @author MATT (polyhedron@gmail.com)
 * @updated 12/14/2011
 */
class PayPal {

    private $version;
    private $proxy_host, $proxy_port;
    private $use_proxy;
    private $api_username, $api_password, $api_signature;
    private $api_endpoint;
    private $paypal_url;
    private $currency_type;
    private $payment_type;
    private $buttoncode;
    private $token_name;
    private $cancel_url;
    private $payIDname;
    private $storeName;

    /**
     *
     * @param bool $sandboxflag
     */

    public function __construct($sandboxflag = true){

        if(session_id() == '') session_start();

        $this->proxy_host = '127.0.0.1';
        $this->proxy_port = '808';
        $this->use_proxy = false;
        $this->version = 64;
        $this->currency_type = 'USD';
        $this->payment_type = 'Sale'; //Authorization or Sale
        $this->buttoncode = 'PP-ECWizard';
        $this->cancel_url = 'http://www.hummings.com/test/paypal/cart.php';
        $this->token_name = 'PPSESSIONTOKEN';
        $this->payIDname = 'PPPAYERID';
        $this->storeName = 'Hummings.com';

        if($sandboxflag){
            $this->api_username = 'seller_1357802909_biz_api1.ua-consultants.com';
            $this->api_password = 'UCKR6NS3J6KV9AHT';
            $this->api_signature = 'Ai1PaghZh5FmBLCDCTQpwG8jB264APQDRndg-ODIBb2kD8dn69EC2chA';
            $this->api_endpoint = 'https://api-3t.sandbox.paypal.com/nvp';
            $this->paypal_url = 'https://www.sandbox.paypal.com/webscr?cmd=_express-checkout&token=';
        } else {
            $this->api_username = '';
            $this->api_password = '';
            $this->api_signature = '';
            $this->api_endpoint = 'https://api-3t.paypal.com/nvp';
            $this->paypal_url = 'https://www.paypal.com/cgi-bin/webscr?cmd=_express-checkout&token=';
        }

    }



    /**
     *
     * @param float $paymentAmount
     * @param string $return_url
     * @return array
     */

    public function setShortcutExpressCheckout($paymentAmount, $return_url, $description)
    {
        //------------------------------------------------------------------------------------------------------------------------------------
        // Construct the parameter string that describes the SetExpressCheckout API call in the shortcut implementation

        $nvpstr =  "&PAYMENTREQUEST_0_AMT="             . $paymentAmount;
		$nvpstr .= $nvpstr ."&NOSHIPPING=1";
        $nvpstr .= "&PAYMENTREQUEST_0_PAYMENTACTION="   . urlencode($this->payment_type);
        $nvpstr .= "&RETURNURL="                        . urlencode($return_url);
        $nvpstr .= "&CANCELURL="                        . urlencode($this->cancel_url);
        $nvpstr .= "&PAYMENTREQUEST_0_CURRENCYCODE="    . urlencode($this->currency_type);
                $nvpstr .= "&PAYMENTREQUEST_0_DESC="                    . urlencode($description);

        //'---------------------------------------------------------------------------------------------------------------
        //' Make the API call to PayPal
        //' If the API call succeded, then redirect the buyer to PayPal to begin to authorize payment.
        //' If an error occured, show the resulting errors
        //'---------------------------------------------------------------------------------------------------------------
        $resArray=$this->hash_call("SetExpressCheckout", $nvpstr);
        $ack = strtoupper($resArray["ACK"]);
        if($ack=="SUCCESS" || $ack=="SUCCESSWITHWARNING")
        {
                $token = urldecode($resArray["TOKEN"]);
                $this->setToken($token);

        }

        return $resArray;
    }

    /**
     *
     * @param string $token
     * @return array
     */

    public function getShippingDetails($token)
    {

        $nvpstr = '&TOKEN=' . urlencode($token);

        $resArray=$this->hash_call("GetExpressCheckoutDetails", $nvpstr);
        $ack = strtoupper($resArray["ACK"]);
        if($ack == "SUCCESS" || $ack=="SUCCESSWITHWARNING")
        {
                $this->setPayerID($resArray['PAYERID']);
        }
        return $resArray;
    }

    /**
     *
     * @param float $FinalPaymentAmt
     * @return array
     */
    public function confirmPayment($FinalPaymentAmt, $invoiceID)
    {

        //Format the other parameters that were stored in the session from the previous calls
        $token                  = urlencode($this->getSessionToken());
        $paymentType            = urlencode($this->payment_type);
        $currencyCodeType       = urlencode($this->currency_type);
        $payerID                = urlencode($this->getPayerID());

        $nvpstr  =  '&TOKEN='                           . $token .
                    '&PAYERID='                         . $payerID .
                    '&PAYMENTREQUEST_0_PAYMENTACTION='  . $paymentType .
                    '&PAYMENTREQUEST_0_INVNUM='         . $invoiceID .
                    '&PAYMENTREQUEST_0_AMT='            . $FinalPaymentAmt .
                    '&PAYMENTREQUEST_0_CURRENCYCODE='   . $currencyCodeType;

        $resArray=$this->hash_call('DoExpressCheckoutPayment',$nvpstr);

        return $resArray;
    }

    /**
     *
     * @param float $paymentAmount
     * @param string $creditCardType
     * @param string $creditCardNumber
     * @param string $expDate
     * @param string $cvv2
     * @param string $firstName
     * @param string $lastName
     * @param string $street
     * @param string $city
     * @param string $state
     * @param string $zip
     * @param string $countryCode
     * @return array
     */
    public function directPayment(  $paymentAmount,
                                    $invoiceID,
                                    $creditCardType,
                                    $creditCardNumber,
                                    $expDate,
                                    $cvv2,
                                    $firstName,
                                    $lastName,
                                    $street,
                                    $city,
                                    $state,
                                    $zip,
                                    $countryCode,
                                    $shipName,
                                    $shipStreet,
                                    $shipCity,
                                    $shipState,
                                    $shipZip,
                                    $shipCountry
            )
    {
        //Construct the parameter string that describes DoDirectPayment
        $nvpstr = '&AMT='               . $paymentAmount;
        $nvpstr .= '&INVNUM='           . urlencode($invoiceID);
        $nvpstr .= '&DESC='             . urlencode($this->storeName . ' invoice number: ' . $invoiceID);
        $nvpstr .= '&CURRENCYCODE='     . urlencode($this->currency_type);
        $nvpstr .= '&PAYMENTACTION='    . urlencode($this->payment_type);
        $nvpstr .= '&CREDITCARDTYPE='   . urlencode($creditCardType);
        $nvpstr .= '&ACCT='             . urlencode($creditCardNumber);
        $nvpstr .= '&EXPDATE='          . urlencode($expDate);
        $nvpstr .= '&CVV2='             . urlencode($cvv2);
        $nvpstr .= '&FIRSTNAME='        . urlencode($firstName);
        $nvpstr .= '&LASTNAME='         . urlencode($lastName);
        $nvpstr .= '&STREET='           . urlencode($street);
        $nvpstr .= '&CITY='             . urlencode($city);
        $nvpstr .= '&STATE='            . urlencode($state);
                $nvpstr .= '&ZIP='              . urlencode($zip);
        $nvpstr .= '&COUNTRYCODE='      . urlencode($countryCode);
        $nvpstr .= '&SHIPTONAME='       . urlencode($shipName);
        $nvpstr .= '&SHIPTOSTREET='     . urlencode($shipStreet);
        $nvpstr .= '&SHIPTOCITY='       . urlencode($shipCity);
        $nvpstr .= '&SHIPTOSTATE='      . urlencode($shipState);
        $nvpstr .= '&SHIPTOZIP='        . urlencode($shipZip);
        $nvpstr .= '&SHIPTOCOUNTRY='    . urlencode($shipCountry);
                $nvpstr .= '&RETURNFMFDETAILS=' . 1;
        $nvpstr .= '&IPADDRESS='        . $_SERVER['REMOTE_ADDR'];
                echo $nvpstr;

        $resArray=$this->hash_call('DoDirectPayment', $nvpstr);

        return $resArray;
    }

    /**
     *
     * @param string $token
     */

    private function setToken($token){

        $_SESSION[$this->token_name] = $token;

    }

    /**
     *
     * @return string
     */

    private function getSessionToken(){

        return $_SESSION[$this->token_name];
    }

    /**
     *
     * @param string $payerID
     */

    private function setPayerID($payerID){

        $_SESSION[$this->payIDname] = $payerID;
    }

    /**
     *
     * @return string
     */

    public function getPayerID(){
        return $_SESSION[$this->payIDname];
    }

    /**
     *
     * @param string $token
     */

    public function redirectToPayPal($token)
    {

        $payPalURL = $this->paypal_url . $token;
        header("Location: ".$payPalURL);
    }

    /**
     *
     * @param string $methodName
     * @param string $nvpStr
     * @return array
     */

    private function hash_call($methodName, $nvpStr){

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL,$this->api_endpoint);
        curl_setopt($ch, CURLOPT_VERBOSE, 1);

        //turning off the server and peer verification(TrustManager Concept).
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);

        curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
        curl_setopt($ch, CURLOPT_POST, 1);

        if(@$USE_PROXY) curl_setopt ($ch, CURLOPT_PROXY, $PROXY_HOST. ':' . $PROXY_PORT);

        //NVPRequest for submitting to server
        $nvpreq='METHOD='       . urlencode($methodName) .
                '&VERSION='     . urlencode($this->version) .
                '&PWD='         . urlencode($this->api_password) .
                '&USER='        . urlencode($this->api_username) .
                '&SIGNATURE='   . urlencode($this->api_signature) .
                $nvpStr .
                '&BUTTONSOURCE='. urlencode($this->buttoncode);

        curl_setopt($ch, CURLOPT_POSTFIELDS, $nvpreq);

        $response = strtoupper(curl_exec($ch));

        $nvpResArray=$this->deformatNVP($response);

        return $nvpResArray;
    }

    /**
     *
     * @param string $nvpstr
     * @return array
     */
    private function deformatNVP($nvpstr)
    {
        $intial=0;
        $nvpArray = array();

        while(strlen($nvpstr))
        {
                //postion of Key
                $keypos= strpos($nvpstr,'=');
                //position of value
                $valuepos = strpos($nvpstr,'&') ? strpos($nvpstr,'&'): strlen($nvpstr);

                /*getting the Key and Value values and storing in a Associative Array*/
                $keyval=substr($nvpstr,$intial,$keypos);
                $valval=substr($nvpstr,$keypos+1,$valuepos-$keypos-1);
                //decoding the respose
                $nvpArray[urldecode($keyval)] =urldecode( $valval);
                $nvpstr=substr($nvpstr,$valuepos+1,strlen($nvpstr));
         }
         return $nvpArray;
    }
       
        public function print_rp($array){
                echo '<pre>';
                print_r($array);
                echo '</pre>';  
        }
}
?>
