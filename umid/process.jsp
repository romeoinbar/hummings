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

	req.setNetsMid(mid);
	req.setTid(tid);
	req.setPaymentMode(paymentMode);
	req.setTxnAmount(amt);
	req.setCurrencyCode(currency);
	req.setMerchantTxnRef(merRef);
	req.setSubmissionMode(submitMode);
	req.setMerchantCertId(merCertId);
	req.setSuccessUrl(successURL);
	req.setSuccessUrlParams(successURLParams);
	req.setFailureUrl(failureURL);
	req.setFailureUrlParams(failureURLParams);
	req.setNotifyUrl(request.getParameter("notify_url"));
	req.setNotifyUrlParams(request.getParameter("notify_url_params"));
	
	credReq.setPan(pan);
	credReq.setExpiryDate(expiry);
	credReq.setPaymentType(paymentType);
	credReq.setStan(stan);
	credReq.setCardHolderName(request.getParameter("name"));
	credReq.setCvv(request.getParameter("cvv"));
	credReq.setPostUrl(request.getParameter("post_url"));
	credReq.setPostUrlParams(request.getParameter("post_url_params"));
	credReq.setCancelUrl(request.getParameter("cancel_url"));
	credReq.setCancelUrlParams(request.getParameter("cancel_url_params"));
	
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
	prot.setShopperIpAddr(request.getParameter("shopper_ip_addr"));
	prot.setProductFormat(request.getParameter("product_format"));
	
	String prdDetails = request.getParameter("product_details");
	if (prdDetails != null && !prdDetails.equals(""))
	{
        ProductDetails detail = null;
        java.util.StringTokenizer st1 = new java.util.StringTokenizer (prdDetails, "||");

        int max = Integer.parseInt(st1.nextToken());
        int count = 0;
        ArrayList detailLst = new ArrayList (max);
        while (count < max)
        {
        	detail = new ProductDetails();
        	detail.setName(st1.nextToken());
        	detail.setSku(st1.nextToken());
        	detail.setPrice(st1.nextToken());
        	detail.setQuantity(Integer.parseInt(st1.nextToken()));
        	detailLst.add(detail);
        	count++;
        }
        prot.setProductDetails(detailLst);		
	}

	credReq.setEzProtect(prot);
	req.setCreditTxnReq(credReq);
	
	CreditMerchant m = (CreditMerchant) Merchant.getInstance (Merchant.MERCHANT_TYPE_CREDIT);
%>

<html>
<head></head>
<%
	if (submitMode.equalsIgnoreCase("B"))
	{
		String sMsg = m.formPayReq(req);
		if(sMsg != null && !sMsg.equals("")){
			String url = (String)StringEscapeUtils.escapeHtml(request.getParameter((String)StringEscapeUtils.escapeHtml(("gw_url"))));
%>
<body onLoad="document.txnForm.submit()">
<form name="txnForm" action="<%=url%>" method="POST">
<input type="hidden" name="message" value="<%=sMsg%>">
</form>
</body>
<%		}
		else{
%>
		<h1>ERROR FORMING PAYMENT REQUEST!</h1>
<%
		}
	} 
	else
	{
		TxnRes res = m.doPayment(req);
		if(res==null){
		%>
		<h1>ERROR DURING PAYMENT!</h1>
		<%
		}
		else{
		CreditTxnRes credRes = res.getCreditTxnRes();
		if (credRes == null)
			credRes = new CreditTxnRes();
%>
<body>
<table width="100%">
<tr colspan="2"> eNETS II Merchant Simulator Server Submission Result </tr>
<tr>	<td>MID: </td> <td><input type="text" name="mid" value="<%=res.getMid()%>"/></td> </tr>
<tr>	<td>Merchant Txn Ref: </td> <td><input type="text" name="merchant_txn_ref" value="<%=res.getMerchantTxnRef()%>"/></td> </tr>
<tr>	<td>NETS Txn Ref: </td> <td><input type="text" name="nets_txn_ref" value="<%=res.getNetsTxnRef()%>"/></td> </tr>
<tr>	<td>NETS Txn Time: </td> <td><input type="text" name="nets_txn_dtm" value="<%=res.getNetsTxnDtm()%>"/></td> </tr>
<tr>	<td>NETS Txn Status: </td> <td><input type="text" name="nets_txn_status" value="<%=res.getNetsTxnStatus()%>"/></td> </tr>
<tr>	<td>NETS Txn Response Code: </td> <td><input type="text" name="nets_txn_resp_code" value="<%=res.getNetsTxnRespCode()%>"/></td> </tr>
<tr>	<td>NETS Txn Msg: </td> <td><input type="text" name="nets_txn_msg" value="<%=res.getNetsTxnMsg()%>"/></td> </tr>
<tr>	<td>NETS Amt Deducted: </td> <td><input type="text" name="nets_amt_deducted" value="<%=credRes.getNetsAmountDeducted()%>"/></td> </tr>
<tr>	<td>Bank Auth ID: </td> <td><input type="text" name="bank_auth_id" value="<%=credRes.getBankAuthId()%>"/></td> </tr>
</table>
</body>
<%
	}
	}
%>
</html>