<?php
/**
 * Description of PaypalPayment
 *
 * @author Matt (polyhedron@gmail.com)
 * @updated 12/14/2011
 */
class PaypalPayment extends PayPal {
   
    private $billingInfo = array();
    private $shippingInfo = array();
    private $cardInfo = array();

    public function  __construct($sandboxflag = true) {
        parent::__construct($sandboxflag);
    }

    public function sendToExpress($amount,$subtotal, $ship, $tax, $return_url,$desc){

       $resArray = $this->setShortcutExpressCheckout($amount,$subtotal, $ship, $tax, $return_url,$desc);
	 //	$this->print_rp($resArray);
        if($this->resIsGood($resArray)){
          $this->redirectToPayPal( $this->getResToken($resArray) );
        }

    }

    public function getExpressInfo($token){

        $resArray = $this->getShippingDetails($token);
        $this->billingInfo['fullName'] = $resArray['PAYMENTREQUEST_0_SHIPTONAME'];
        $this->billingInfo['business'] = $resArray['BUSINESS'];
        $this->billingInfo['email'] = $resArray['EMAIL'];

        $this->shippingInfo['fullName'] = $resArray['PAYMENTREQUEST_0_SHIPTONAME'];
        $this->shippingInfo['business'] = $resArray['BUSINESS'];
        $this->shippingInfo['street'] = $resArray['PAYMENTREQUEST_0_SHIPTOSTREET'];
        $this->shippingInfo['city'] = $resArray['PAYMENTREQUEST_0_SHIPTOCITY'];
        $this->shippingInfo['state'] = $resArray['PAYMENTREQUEST_0_SHIPTOSTATE'];
        $this->shippingInfo['zip'] = $resArray['PAYMENTREQUEST_0_SHIPTOZIP'];
        $this->shippingInfo['country'] = $resArray['PAYMENTREQUEST_0_SHIPTOCOUNTRYCODE'];

    }

    public function confirmExpress($finalAmount, $invoiceID){

        $resArray = $this->confirmPayment($finalAmount, $invoiceID);

        if($this->resIsGood($resArray)){
            return $resArray['PAYMENTINFO_0_TRANSACTIONID'];
        } else {
			return false;
		}
    }

    public function payWithCard($amount, $invoiceID){

        if(!empty($this->billingInfo) || !empty($this->shippingInfo) || !empty($this->cardInfo)){

            $resArray = $this->directPayment($amount,
                                            $invoiceID,
                                            $this->cardInfo['cardType'],
                                            $this->cardInfo['cardNumber'],
                                            $this->cardInfo['cardExp'],
                                            $this->cardInfo['cardCVV2'],
                                            $this->billingInfo['fname'],
                                            $this->billingInfo['lname'],
                                            $this->billingInfo['street'],
                                            $this->billingInfo['city'],
                                            $this->billingInfo['state'],
                                            $this->billingInfo['zip'],
                                            $this->billingInfo['country'],
                                            $this->shippingInfo['fname'] . ' ' . $this->shippingInfo['lname'],
                                            $this->shippingInfo['street'],
                                            $this->shippingInfo['city'],
                                            $this->shippingInfo['state'],
                                            $this->shippingInfo['zip'],
                                            $this->shippingInfo['country']);

            $this->print_rp($resArray);
                        return $resArray['TRANSACTIONID'];
        }

    }

    public function setCardInfo($cardNumber,
                                $cardType,
                                $cardExp,
                                $cardCVV2){
        $this->cardInfo = array(
            'cardNumber' => $cardNumber,
            'cardType' => $cardType,
            'cardExp' => $cardExp,
            'cardCVV2' => $cardCVV2
        );

    }

    public function setBillingInfo($fname, $lname, $business, $street, $city, $state, $zip, $country = 'US'){
        $this->billingInfo = array(
            'fname' => $fname,
            'lname' => $lname,
            'fullName' => $fname . ' ' . $lname,
            'business' => $business,
            'street' => $street,
            'city' => $city,
            'state' => $state,
            'zip' => $zip,
            'country' => $country
        );
        $this->shippingInfo = $this->billingInfo;
    }

    public function changeShippingInfo($fname, $lname, $business, $street, $city, $state, $zip, $country = 'US'){
        $this->shippingInfo = array(
            'fname' => $fname,
            'lname' => $lname,
            'fullName' => $fname . ' ' . $lname,
            'business' => $business,
            'street' => $street,
            'city' => $city,
            'state' => $state,
            'zip' => $zip,
            'country' => $country
        );
    }

    public function getBillingInfo(){
        return $this->billingInfo;
    }

    public function getShippingInfo(){
        return $this->shippingInfo;
    }

    private function resIsGood($resArray){
        $ack = $resArray['ACK'];
        if($ack=='SUCCESS' || $ack=='SUCCESSWITHWARNING') return true;
        return false;
    }

    private function getResToken($resArray){
        return $resArray['TOKEN'];
    }

}
?>
