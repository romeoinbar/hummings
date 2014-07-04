<%@ page import="com.wiz.enets2.transaction.util.*,
		 com.wiz.enets2.transaction.umapi.data.*,
		 com.wiz.enets2.transaction.umapi.*,
		 org.apache.commons.lang.*,
		 java.util.*"%>
<%
  TxnReq req = new TxnReq();
  CreditTxnReq credReq = new CreditTxnReq();
  
  String mid = request.getParameter("mid");
  String tid = request.getParameter("tid");
  String paymentMode = request.getParameter("payment_mode");
  String amt = request.getParameter("txn_amount");
  String currency = request.getParameter("currency_code");
  String merRef = request.getParameter("merchant_txn_ref");
  String submitMode = request.getParameter("submission_mode");
  String merCertId = request.getParameter("merchant_cert_id");
  String pan = request.getParameter("pan");
  String expiry = request.getParameter("expiry_date");
  String stan = request.getParameter("stan");
  String paymentType = request.getParameter("payment_type");
  
  String successURL = request.getParameter("success_url");
  String successURLParams = request.getParameter("success_url_params");
  String failureURL = request.getParameter("failure_url");
  String failureURLParams = request.getParameter("failure_url_params");
  String notifyURL       = request.getParameter("notify_url");
  String notifyURLParams = request.getParameter("notify_url_params");
  String postURL       = request.getParameter("post_url"); 
  String postURLParams = request.getParameter("post_url_params");
  String cancelURL       = request.getParameter("cancel_url"); 
  String cancelURLParams = request.getParameter("cancel_url_params");
  
  //Start: For RPP only
  String param1 = request.getParameter("param1");
  String param2 = request.getParameter("param2");
  String param3 = request.getParameter("param3");
  String param4 = request.getParameter("param4");
  String param5 = request.getParameter("param5");
  //End : For RPP only
  
  req.setNetsMid(mid);
  req.setTid(tid);
  req.setPaymentMode(paymentMode);
  req.setTxnAmount(amt);
  req.setCurrencyCode(currency);
  req.setMerchantTxnRef(merRef);
  req.setSubmissionMode(submitMode);
  req.setMerchantCertId(merCertId);
  req.setSuccessUrl(successURL);
  if (successURLParams != null && !successURLParams.equals("")) {
      req.setSuccessUrlParams(successURLParams);
  }
  
  req.setFailureUrl(failureURL);
  if (failureURLParams != null && !failureURLParams.equals("")) {
      req.setFailureUrlParams(failureURLParams);
  }
  
  if (notifyURL != null)
      req.setNotifyUrl(notifyURL);

  if (notifyURLParams != null)
      req.setNotifyUrlParams(notifyURLParams);
      
      
  // =======================================      
  credReq.setPan(pan);
  credReq.setExpiryDate(expiry);
  credReq.setPaymentType(paymentType);
  credReq.setStan(stan);
  credReq.setCardHolderName(request.getParameter("name"));
  credReq.setCvv(request.getParameter("cvv"));
  if (postURL != null)
     credReq.setPostUrl(postURL);
  if (postURLParams != null)
     credReq.setPostUrlParams(postURLParams);  
     
  if (cancelURL != null)
     credReq.setCancelUrl(cancelURL);
  if (cancelURLParams != null)
     credReq.setCancelUrlParams(cancelURLParams);
     
  
  //Start : For RPP only
  credReq.setParam1(param1);
  credReq.setParam2(param2);
  credReq.setParam3(param3);
  credReq.setParam4(param4);
  credReq.setParam5(param5);
  //End : For RPP only
  
  EzProtect prot = new EzProtect();
  prot.setBillFirstName(request.getParameter("bill_first_name"));
  prot.setBillLastName(request.getParameter("bill_last_name"));
  prot.setBillInitial(request.getParameter("bill_initial"));
  prot.setBillAddr1(request.getParameter("bill_addr1"));
  prot.setBillAddr2(request.getParameter("bill_addr2"));
  prot.setBillCoyName(request.getParameter("bill_coy_name"));
  prot.setBillCity(request.getParameter("bill_city"));
  prot.setBillState(request.getParameter("bill_state"));
  prot.setBillZipCode(request.getParameter("bill_zip_code"));
  prot.setBillCountry(request.getParameter("bill_country"));
  prot.setBillMobileNum(request.getParameter("bill_mobile_num"));
  prot.setBillPhoneNum(request.getParameter("bill_phone_num"));
  prot.setBillFaxNum(request.getParameter("bill_fax_num"));
  prot.setBillEmail(request.getParameter("bill_email"));
  prot.setShipFirstName(request.getParameter("ship_first_name"));
  prot.setShipLastName(request.getParameter("ship_last_name"));
  prot.setShipInitial(request.getParameter("ship_initial"));
  prot.setShipAddr1(request.getParameter("ship_addr1"));
  prot.setShipAddr2(request.getParameter("ship_addr2"));
  prot.setShipCoyName(request.getParameter("ship_coy_name"));
  prot.setShipCity(request.getParameter("ship_city"));
  prot.setShipState(request.getParameter("ship_state"));
  prot.setShipZipCode(request.getParameter("ship_zip_code"));
  prot.setShipCountry(request.getParameter("ship_country"));
  prot.setShipMobileNum(request.getParameter("ship_mobile_num"));
  prot.setShipPhoneNum(request.getParameter("ship_phone_num"));
  prot.setShipFaxNum(request.getParameter("ship_fax_num"));
  prot.setShipEmail(request.getParameter("ship_email"));
  prot.setShopperIpAddr(request.getParameter("shopper_id_addr"));
  prot.setProductFormat(request.getParameter("product_format"));
  
  String prdDetails = request.getParameter("product_details");
  if (prdDetails != null && !prdDetails.equals(""))
  {
        ProductDetails detail = null;
        java.util.StringTokenizer st1 = new java.util.StringTokenizer (prdDetails, "||");
        System.out.println("$$$$$$$ " + prdDetails);
        int max = Integer.parseInt(st1.nextToken());
        System.out.println("$$$$$$$ max=" + max);
        int count = 0;
        ArrayList detailLst = new ArrayList (max);
        while (count < max)
        {
          System.out.println("$$$$$$$ in while");
          detail = new ProductDetails();
          detail.setName(st1.nextToken());
          System.out.println("$$$$$$$ name = " + detail.getName());
          detail.setSku(st1.nextToken());
          System.out.println("$$$$$$$ sku = " + detail.getSku());
          detail.setPrice(st1.nextToken());
          System.out.println("$$$$$$$ price = " + detail.getPrice());
          detail.setQuantity(Integer.parseInt(st1.nextToken()));
          System.out.println("$$$$$$$ quantity = " + detail.getQuantity());
          detailLst.add(detail);
          System.out.println("$$$$$$$ after add");
          count++;
        }
        prot.setProductDetails(detailLst);    
          System.out.println("$$$$$$$ after set product details");
  }

  credReq.setEzProtect(prot);
          System.out.println("$$$$$$$ after set product ezprotect");
  req.setCreditTxnReq(credReq);

	DebitTxnReq debitReq = new DebitTxnReq();
	
	String mid2 = request.getParameter("mid");
	String tid2 = request.getParameter("tid");
	String amt2 = request.getParameter("txn_amount");
	String currency2 = request.getParameter("currency_code");
	String merRef2 = request.getParameter("merchant_txn_ref");
	String merCertId2 = request.getParameter("merchant_cert_id");
	String txnDate2	= request.getParameter("merchant_txn_date");
	String txnTime2	= request.getParameter("merchant_txn_time");
	String timeZone2	= request.getParameter("merchant_time_zone");
	String countryCode	= request.getParameter("merchant_country_code");
	String param6 = request.getParameter("param1");
	String param7 = request.getParameter("param2");
	String param8 = request.getParameter("param3");
	String param9 = request.getParameter("param4");
	String param10 = request.getParameter("param5");

	req.setNetsMid(mid2);
	req.setTid(tid2);
	req.setTxnAmount(amt2);
	req.setCurrencyCode(currency2);
	req.setMerchantTxnRef(merRef2);
	req.setMerchantCertId(merCertId2);
	debitReq.setParam1(param6);
	debitReq.setParam2(param7);
	debitReq.setParam3(param8);
	debitReq.setParam4(param9);
	debitReq.setParam5(param10);

	debitReq.setMerchantTxnDate(txnDate2);
	debitReq.setMerchantTxnTime (txnTime2);
	debitReq.setMerchantTimeZone (timeZone2);
	debitReq.setMerchantCountryCode (countryCode);
	req.setDebitTxnReq(debitReq);

  
  UMIDMerchant m = UMIDMerchant.getInstance();
%>

<html>
<head></head>
<%
  if (submitMode.equalsIgnoreCase("B"))
  {
    String sMsg = m.formPayReq(req);
    String url = StringEscapeUtils.escapeHtml((String)request.getParameter("gw_url")); 
%>
<body onLoad="document.txnForm.submit()">
<form name="txnForm" action="<%=url%>" method="POST">
<input type="hidden" name="message" value="<%=sMsg%>">
</form>
</body>

<%
  } 
  else
  {
    String url = request.getParameter("gw_url");
    TxnRes res = m.doPayment(req);
    CreditTxnRes credRes = res.getCreditTxnRes();
    if (credRes == null)
      credRes = new CreditTxnRes();
%>
<body>
<table width="100%">
<tr colspan="2"> eNETS II Merchant Simulator Server Submission Result </tr>
<tr>  <td>MID: </td> <td><input type="text" name="mid" value="<%=res.getMid()%>"/></td> </tr>
<tr>  <td>Merchant Txn Ref: </td> <td><input type="text" name="merchant_txn_ref" value="<%=res.getMerchantTxnRef()%>"/></td> </tr>
<tr>  <td>NETS Txn Ref: </td> <td><input type="text" name="nets_txn_ref" value="<%=res.getNetsTxnRef()%>"/></td> </tr>
<tr>  <td>NETS Txn Time: </td> <td><input type="text" name="nets_txn_dtm" value="<%=res.getNetsTxnDtm()%>"/></td> </tr>
<tr>  <td>NETS Txn Status: </td> <td><input type="text" name="nets_txn_status" value="<%=res.getNetsTxnStatus()%>"/></td> </tr>
<tr>  <td>NETS Txn Response Code: </td> <td><input type="text" name="nets_txn_resp_code" value="<%=res.getNetsTxnRespCode()%>"/></td> </tr>
<tr>  <td>NETS Txn Msg: </td> <td><input type="text" name="nets_txn_msg" value="<%=res.getNetsTxnMsg()%>"/></td> </tr>
<tr>  <td>NETS Amt Deducted: </td> <td><input type="text" name="nets_amt_deducted" value="<%=credRes.getNetsAmountDeducted()%>"/></td> </tr>
<tr>  <td>Bank Auth ID: </td> <td><input type="text" name="bank_auth_id" value="<%=credRes.getBankAuthId()%>"/></td> </tr>
</table>
</body>
<%
  }
%>
</html>
