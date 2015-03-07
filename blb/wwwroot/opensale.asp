<%@language=vbscript%>
<%if not session("checked")="yes" then 
response.Redirect "adminlogin.asp"  
else
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>打开买家 百联百 最大最多最全的商家商品交易市场</title>
<meta name="Keywords" content="百联百,最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,购物,在线,购物网站,团购,电子商务,供应,买卖信息,网店,一口价,网络购物,打折"/>
<meta name="Description" content="百联百-最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,网上购物,在线交易,交易市场,网上交易,交易市场,网上买,网上卖,购物网站,团购,贸易,购物,电子商务,供应,一口价,网络购物,打折。"/>
<style type="text/css">
body{background-color="whitesmoke"}
td{font-size:12px;}
th{font-size:13px;face="黑体";}
</style>
</head>
<body>
<!--#include file="conn.asp"--> 
<% 
exec="select * from cp where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
%> 
<form name="form1" method="post" action="checksale_save.asp"> 
<br><br><br><br>
<table width="350" border="1" cellspacing="0" cellpadding="0" align="center" > 
<tr><th>开通权限</th></tr>
<tr>
<td> 商品名称:
<%=rs("cpname")%>
</td></tr>
<tr><td>
销售开关<select name="other3" >
<option value="销售开通">销售开通</option>
<option value="销售关闭">销售关闭</option>
</select>
</td></tr>

<td align="center"><input type="submit" name="Submit" value="提交销售权限"> 

<input type="hidden" name="id" value="<%=request.querystring("id")%>"> 
</td> 

</table> 
</form> 
<td><a href="javascript:history.back()">返回</td>


<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 

%> 

<%end if%>