<%@language=vbscript%>
<%if not session("checkc")="right" then 
response.Redirect "index.asp"  
else
%>
<script src="blb.js" type="text/javascript"></script>
<link href="blb.css" rel="stylesheet" type="text/css" />
<!--#include file="conn.asp"-->
<% dim id
cgname=session("cgname")
id=request("id")
if id<>"" then
exec="select * from cp where id="&request("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3

%> 

<table width="100%" class="tablecss"> 

<tr class="trcsstop"> 

<td >产品名称</td>
<td >参考单价</td>
<td >结算单价</td>
<td >订购数量</td>
<td >图片信息</td>
<td >销售方式</td>
<td >订单状态</td>
</tr>
<form name="form1" method="post" action="findcpsaveadd.asp"> 
<tr class="trcss" > 

<td ><%=rs("cpname")%><input type="hidden" name="cpname" size="10" value="<%=rs("cpname")%>"></td>
<td ><%=formatnumber(rs("cpprice")*1.1,2,-1)%><input type="hidden" name="cpprice" size="10" value="<%=formatnumber(rs("cpprice"),2,-1)%>"></td>
<td style="color:red;font-size:16px;"><%=formatnumber(rs("cpearn")*1.1,2,-1)%><input type="hidden" name="cpearn" size="10" value="<%=formatnumber(rs("cpearn"),2,-1)%>"></td>
<td ><input type="text" name="cpnum" size="10" value=""></td>
<td><a href="viewuptxt.asp?id=<%=rs("id")%>" style="color:yellow;">查看图片</a></td>
<td ><%=rs("how")%><input type="hidden" name="how" size="10" value="<%=rs("how")%>"></td>
<td ><%=rs("now")%><input type="hidden" name="now" size="10" value="<%=rs("now")%>"></td></tr><tr>
<td ><input type="hidden" name="gyname" size="10" value="<%=rs("gyname")%>"></td>
<td ><input type="hidden" name="way" size="10" value="<%=rs("way")%>"></td>
<td ><input type="hidden" name="other1" size="10" value="<%=rs("other1")%>"></td>
<td ><input type="hidden" name="other2" size="10" value="<%=rs("other2")%>"></td>
<td ><input type="hidden" name="other3" size="10" value="<%=rs("other3")%>"></td>
</tr>

</table>
<tr>
<td><input type="submit" name="Submit" value="创建订单"> </td>
<td><input type="button" value="返回" onClick="location.href='javascript:history.back()';"></td>
</tr>
</form> 


<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
end if
end if
%> 





<div style="display:none">