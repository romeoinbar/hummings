<%@ page import="com.wiz.enets2.transaction.util.*,
     com.wiz.enets2.transaction.umapi.data.*,
     com.wiz.enets2.transaction.umapi.*"%>
<%
    System.out.println("===================Start: success.jsp =========");
%>
<%
  String sMsg = request.getParameter("message");
  CreditMerchant m = (CreditMerchant) Merchant.getInstance(Merchant.MERCHANT_TYPE_CREDIT);
  TxnRes res = m.unpackResponse(sMsg);
  CreditTxnRes credRes = res.getCreditTxnRes();
  if (credRes == null)
    credRes = new CreditTxnRes();
  String urlWithParams = (String) request.getAttribute("target_url");
%>
<html>
<head></head>
<body onLoad="document.txnForm.submit()">
<form name="txnForm" action="http://www.hummings.com/cart/eshop/checkout/enets_success" method="POST">    
<div style='display:none;'>
<table width="100%">
<tr colspan="2"> eNETS II Merchant Simulator Success URL. </tr>
<tr>  <td>MID: </td> <td><input type="text" name="mid" value="<%=res.getNetsMid()%>"/></td> </tr>
<tr>  <td>Merchant Txn Ref: </td> <td><input type="text" name="merchant_txn_ref" value="<%=res.getMerchantTxnRef()%>"/></td> </tr>
<tr>  <td>NETS Txn Ref: </td> <td><input type="text" name="nets_txn_ref" value="<%=res.getNetsTxnRef()%>"/></td> </tr>
<tr>  <td>NETS Txn Time: </td> <td><input type="text" name="nets_txn_dtm" value="<%=res.getNetsTxnDtm()%>"/></td> </tr>
<tr>  <td>NETS Txn Status: </td> <td><input type="text" name="nets_txn_status" value="<%=res.getNetsTxnStatus()%>"/></td> </tr>
<tr>  <td>NETS Txn Response Code: </td> <td><input type="text" name="nets_txn_resp_code" value="<%=res.getNetsTxnRespCode()%>"/></td> </tr>
<tr>  <td>NETS Txn Msg: </td> <td><input type="text" name="nets_txn_msg" value="<%=res.getNetsTxnMsg()%>"/></td> </tr>
<tr>  <td>NETS Amt Deducted: </td> <td><input type="text" name="nets_amt_deducted" value="<%=credRes.getNetsAmountDeducted()%>"/></td> </tr>
<tr>  <td>Bank Auth ID: </td> <td><input type="text" name="bank_auth_id" value="<%=credRes.getBankAuthId()%>"/></td> </tr>
<tr>  <td>target_url: </td> <td><input type="text" name="target_url" value="<%=urlWithParams%>"/></td> </tr>

</table>
</div>
</form>
</body>
</html>
<%
    System.out.println("===================End: success.jsp =========");
%>