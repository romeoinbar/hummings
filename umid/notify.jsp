 
<%@ page import="com.wiz.enets2.transaction.util.*,
   com.wiz.enets2.transaction.umapi.data.*,
   com.wiz.enets2.transaction.umapi.*"%>

<%
 String sMsg = request.getParameter("message");
 CreditMerchant m = (CreditMerchant) Merchant.getInstance(Merchant.MERCHANT_TYPE_CREDIT);
 TxnNotify notify = m.unpackNotification(sMsg);
 CreditNotify credNotify = notify.getCreditNotify();
 if (credNotify == null)
  credNotify = new CreditNotify();
  
 TxnAck ack = new TxnAck();
 CreditAck credAck = new CreditAck();
 
    //sample code
    String paymode= notify.getPaymentMode();
    String submitMode= notify.getSubmissionMode(); 
String amount = notify.getTxnAmount();
String merchTxnDate_Time =notify.getMerchantTxnDtm(); 
 String nets_Date_time=notify.getNetsTxnDtm();
String ip = request.getParameter("ip");
String order_id = request.getParameter("order_id");

 ack.setNetsMid(notify.getMid());
 ack.setMerchantCertId(notify.getMerchantCertId());
 ack.setNetsTxnRef(notify.getNetsTxnRef());
 ack.setMerchantTxnRef (notify.getMerchantTxnRef());
 ack.setMerchantTxnStatus ("0000");
 
 ack.setCreditAck(credAck);
 sMsg = m.formAck (ack);
 
    out.println(sMsg);
 
%> 

<html>
<head></head>
<body onload=document.getElementById('f').submit(); >
<form action='http://localhost/hummings/index.php?o=eshop&m=checkout&task=notify' id=f method=post>
<table width="100%">
<tr colspan="2"> eNETS II Merchant Notify. </tr>
<tr>  <td>order id: </td> <td><input type="text" name="order_id" value="<%=order_id%>"/></td> </tr>
<tr>  <td>ip: </td> <td><input type="text" name="ip" value="<%=ip%>"/></td> </tr>
<tr>  <td>payment mode: </td> <td><input type="text" name="paymode" value="<%=paymode%>"/></td> </tr>
<tr>  <td>submission mode: </td> <td><input type="text" name="submitMode" value="<%=submitMode%>"/></td> </tr>
    
</table>
</form>
</body>
</html>