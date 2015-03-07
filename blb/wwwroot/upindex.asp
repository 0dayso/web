<%@language=vbscript%>
<%if not session("checked")="yes" then 
response.Redirect "index.asp"  
else
%>
<% dim id
id=request.querystring("id")

if id="" then
response.write"id error"

else if isnumeric(request("id"))=false then
Response.Write "ID这不是数字类型哦!"
else
%>




<!--#include file="conn.asp"--> 
<title>订购信息  最大最多最全的商家商品交易市场</title>
<meta name="Keywords" content="卖家信息,最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,购物,在线,购物网站,团购,电子商务,供应,买卖信息,网店,一口价,网络购物,打折"/>
<meta name="Description" content="百联百-最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,网上购物,在线交易,交易市场,网上交易,交易市场,网上买,网上卖,购物网站,团购,贸易,购物,电子商务,供应,一口价,网络购物,打折。"/>
<% 
exec="select * from cp where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
if rs("other1")<>"" then
%>



<table width="100%" border="1" cellspacing="0" cellpadding="0" backgroundcolor="darkgray"> 
<tr> 
<td >图片信息</td>

</tr>
<%
if not rs.eof  then
%>
<tr> 
<td ><img src="<%=rs("other1")%>"/></td>
</tr></table>
<%
end if
else %>
<table width="100%" border="1" cellspacing="0" cellpadding="0" backgroundcolor="darkgray"> 
<tr> 
<td >图片信息</td>

</tr><tr><td></td></tr></table>
<form name="form" method="post" action="upfile.asp?id=<%=id%>" enctype="multipart/form-data">
<input type="hidden" name="filepath" value="uploadimg">
<input type="hidden" name="act" value="upload">
<input type="file" name="file1" size=40>
<input type="submit" class=button name="Submit" value="上传图片">类型：gif,jpg，限制：100K 提示：上传产品图片后不可修改！并审核
</form>

<%
end if%>






<input type="button" value="返回" onClick="location.href='javascript:history.back()';">


<% 
end if
end  if
end if %>

