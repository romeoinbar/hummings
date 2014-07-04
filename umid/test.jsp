<%@ page import="com.wiz.enets2.transaction.umapi.NETSConfig" %>
<html>
<head></head>
<body>
<form name="txnForm" action="process.jsp" method="post">
<table >
<tr colspan="2"> eNETS II Merchant Simulator Page. </tr>
<tr>	<td>GW URL: </td> <td><input type="text" size="40" name="gw_url" value="<%=NETSConfig.get("payURL")%>"/></td> </tr>
<tr>	<td>MID: </td> <td><input type="text" name="mid" value="947773019"/></td> </tr>
<tr>	<td>TID: </td> <td><input type="text" name="tid" value="127.0.0.1"/></td> </tr>
<tr>	<td>Payment Mode: </td> <td><select name="payment_mode"> <option value="C">All</option><option value="CC">Credit</option><option value="DD">Debit</option><option value="VA">Virtual Account</option></select></td> </tr>
<tr>	<td>Amount: </td> <td><input type="text" name="txn_amount" value="1000"/></td> </tr>
<tr>	<td>Currency Code: </td> <td><input type="text" name="currency_code" value="SGD"/></td> </tr>
<tr>	<td>Merchant Txn Ref: </td> <td><input type="text" name="merchant_txn_ref" value="txn001"/></td> </tr>
<tr>	<td>Submission Mode: </td> <td><select name="submission_mode"><option value="S">Server</option><option value="B">Browser</option></select></td> </tr>
<tr>	<td>Merchant Cert ID: </td> <td><input type="text" name="merchant_cert_id" value="1"/></td> </tr>
<tr>	<td>Credit Card: </td> <td><input type="text" name="pan" value="5655450000000000"/></td> </tr>
<tr>	<td>Expiry: </td> <td><input type="text" name="expiry_date" value="0712"/></td> </tr>
<tr>	<td>Payment Type: </td> <td><select name="payment_type">
		<option value="SALE">SALE</option><option value="AUTH">AUTH</option>
		<option value="CAPT">CAPT</option><option value="CRED">CRED</option>
		<option value="RSALE">REV SALE</option><option value="RAUTH">REV AUTH</option>
		<option value="RCAPT">REV CAPT</option><option value="RCRED">REV CRED</option>
		</select>
</td> </tr>
<tr>	<td>Name on card: </td> <td><input type="text" name="name" value="Ah Hao"/></td> </tr>
<tr>	<td>CVV: </td> <td><input type="text" name="cvv" value="232"/></td> </tr>
<tr>	<td>Stan: </td> <td><input type="text" name="stan" value=""/></td> </tr>
<tr>	<td>Invoice: </td> <td><input type="text" name="invoice" value=""/></td> </tr>
<tr>	<td>Notify URL: </td> <td><input type="text" size="40" name="notify_url" value="http://<%=NETSConfig.get("homeIP")%>:9080/umapi/notify.jsp"/></td> </tr>
<tr>	<td>Notify URL Params: </td> <td><input type="text" size="40" name="notify_url_params" value=""/></td> </tr>
<tr>	<td>Post URL: </td> <td><input type="text" size="40" name="post_url" value="http://<%=NETSConfig.get("homeIP")%>:9080/umapi/post.jsp"/></td> </tr>
<tr>	<td>Post URL Params: </td> <td><input type="text" size="40" name="post_url_params" value=""/></td> </tr>
<tr>	<td>Merchant Success URL: </td> <td><input type="text" size="40" name="success_url" value="http://<%=NETSConfig.get("homeIP")%>:9080/umapi/success.jsp"/></td> </tr>
<tr>	<td>Merchant Success URL Params: </td> <td><input type="text" size="40" name="success_url_params" value=""/></td> </tr>
<tr>	<td>Merchant Failure URL: </td> <td><input type="text" size="40" name="failure_url" value="http://<%=NETSConfig.get("homeIP")%>:9080/umapi/fail.jsp"/></td> </tr>
<tr>	<td>Merchant Failure URL Params: </td> <td><input type="text" size="40" name="failure_url_params" value=""/></td> </tr>
<tr>	<td>Merchant Cancel URL: </td> <td><input type="text" size="40" name="cancel_url" value="http://<%=NETSConfig.get("homeIP")%>:9080/umapi/cancel.jsp"/></td> </tr>
<tr>	<td>Merchant Cancel URL Params: </td> <td><input type="text" size="40" name="cancel_url_params" value=""/></td> </tr>
<tr><td colspan="2"></td></tr>
<tr><td colspan="2"><B>Enter EzProtect Information </B></td></tr>
<tr>	<td>Bill first name: </td> <td><input type="text" name="bill_first_name" value="Jing"/></td> </tr>
<tr>	<td>Bill last name: </td> <td><input type="text" name="bill_last_name" value="Lin"/></td> </tr>
<tr>	<td>Bill initial: </td> <td><input type="text" name="bill_initial" value="LJ"/></td> </tr>
<tr>	<td>Bill addr1: </td> <td><input type="text" name="bill_addr1" value="China"/></td> </tr>
<tr>	<td>Bill addr2: </td> <td><input type="text" name="bill_addr2" value="Singapore"/></td> </tr>
<tr>	<td>Bill coy name: </td> <td><input type="text" name="bill_coy_name" value="WizVision"/></td> </tr>
<tr>	<td>Bill city: </td> <td><input type="text" name="bill_city" value="Singapore"/></td> </tr>
<tr>	<td>Bill state: </td> <td><input type="text" name="bill_state" value="Singapore"/></td> </tr>
<tr>	<td>Bill zip code: </td> <td><input type="text" name="bill_zip_code" value="600124"/></td> </tr>
<tr>	<td>Bill country: </td> <td><input type="text" name="bill_country" value="Singapore"/></td> </tr>
<tr>	<td>Bill mobile number: </td> <td><input type="text" name="bill_mobile_num" value="99998888"/></td> </tr>
<tr>	<td>Bill phone number: </td> <td><input type="text" name="bill_phone_num" value="66667777"/></td> </tr>
<tr>	<td>Bill fax number: </td> <td><input type="text" name="bill_fax_num" value="66665555"/></td> </tr>
<tr>	<td>Bill email: </td> <td><input type="text" name="bill_email" value="linjing@wizvision.com"/></td> </tr>
<tr>	<td>Ship first name: </td> <td><input type="text" name="ship_first_name" value="Jing"/></td> </tr>
<tr>	<td>Ship last name: </td> <td><input type="text" name="ship_last_name" value="Lin"/></td> </tr>
<tr>	<td>Ship initial: </td> <td><input type="text" name="ship_initial" value="LJ"/></td> </tr>
<tr>	<td>Ship addr1: </td> <td><input type="text" name="ship_addr1" value="China"/></td> </tr>
<tr>	<td>Ship addr2: </td> <td><input type="text" name="ship_addr2" value="Singapore"/></td> </tr>
<tr>	<td>Ship coy name: </td> <td><input type="text" name="ship_coy_name" value="WizVision"/></td> </tr>
<tr>	<td>Ship city: </td> <td><input type="text" name="ship_city" value="Singapore"/></td> </tr>
<tr>	<td>Ship state: </td> <td><input type="text" name="ship_state" value="Singapore"/></td> </tr>
<tr>	<td>Ship zip code: </td> <td><input type="text" name="ship_zip_code" value="Singapore"/></td> </tr>
<tr>	<td>Ship country: </td> <td><input type="text" name="ship_country" value="Singapore"/></td> </tr>
<tr>	<td>Ship mobile number: </td> <td><input type="text" name="ship_mobile_num" value="99998888"/></td> </tr>
<tr>	<td>Ship phone number: </td> <td><input type="text" name="ship_phone_num" value="66667777"/></td> </tr>
<tr>	<td>Ship fax number: </td> <td><input type="text" name="ship_fax_num" value="66665555"/></td> </tr>
<tr>	<td>Ship email: </td> <td><input type="text" name="ship_email" value="linjing@wizvision.com"/></td> </tr>
<tr>	<td>Ship amt: </td> <td><input type="text" name="ship_amt" value="100"/></td> </tr>
<tr>	<td>Shopper IP addr: </td> <td><input type="text" name="shopper_ip_addr" value="127.0.0.1"/></td> </tr>
<tr>	<td>Product format: </td> <td><input type="text" name="product_format" value="text/plain"/></td> </tr>
<tr>	<td>Product details: </td> <td><input type="text" name="product_details" value="1||abc||sku||1||1"/></td> </tr>
<tr><td colspan="2">
	<INPUT type=submit value=Submit name=submit>
	<INPUT type=reset value=Reset name=reset> 
</td></tr>
</table>
</form>
</body>
</html>
