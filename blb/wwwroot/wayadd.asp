<%@language=vbscript%>
<%if not session("checkc")="right" then 
response.Redirect "index.asp"  
else
%>
<!--#include file="conn.asp"--> 
<% 
exec="select * from cp where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
%> 
<title>订购界面  最大最多最全的商家商品交易市场</title>
<meta name="Keywords" content="订购界面,最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,购物,在线,购物网站,团购,电子商务,供应,买卖信息,网店,一口价,网络购物,打折"/>
<meta name="Description" content="百联百-最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,网上购物,在线交易,交易市场,网上交易,交易市场,网上买,网上卖,购物网站,团购,贸易,购物,电子商务,供应,一口价,网络购物,打折。"/>
<form name="form1" method="post" action="modifysave.asp"> 

No:<%=rs("id")%><br>
商品名称:<%=rs("cpname")%><br>
商品单价:<%=rs("cpprice")*1.1%><br>
单价返利:<%=rs("cpearn")*1.1%><br>
商品数量:<%=rs("cpnum")%><br>
商品总价:<%=rs("cpearn")*1.1*rs("cpnum")%><br>
图片信息:<a href="viewuptxt.asp?id=<%=rs("id")%>">图片信息</a><br>
称呼名字<input type="text" name="name" size="70"><br>
联系地址<input type="text" name="adress" size="70"><br>
联系方式<input type="text" name="phone" size="70"><br>


<br>
<input type="submit" name="Submit" value="向供货商订购"> 
<input type="button" value="返回" onClick="location.href='javascript:history.back()';">
<input type="hidden" name="id" value="<%=request.querystring("id")%>"> 
 
</form> 

<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
end if
%> 
<div style="display:none">