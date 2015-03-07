
<% 
if request("cpprice")="" or request("cpname")="" or request("cpearn")="" or request("how")="" then
response.write "<script>alert('每项必须填写，请填写完整再提交!');location.href='javascript:history.back()';</script>"
else
 if isnumeric(request("cpprice"))=false or isnumeric(request("cpearn"))=false   then
response.write "<script>alert('商品单价和利润不是数字哦！');location.href='javascript:history.back()';</script>"
else

Set regEx = New RegExp

regEx.Pattern = "[“|”|‘|，|。'|？|／|+,：:.。`｜|、 ]"

regEx.IgnoreCase = True

regEx.Global=true

if regEx.test(request("cpname"))=true then

 response.write "<script>alert('产品名称中不可包含符号或空格');location.href='javascript:history.back()';</script>" 
else
%>

<!--#include file="conn.asp"--> 
<% 
exec="select * from cp where id="&request.form("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3 
%> 
<% 

rs("cpname")=request("cpname")
rs("cpprice")=request("cpprice")
rs("cpearn")=request("cpearn")
rs("how")=request("how")
rs.update 
%>
修改成功!<a href="gyindex.asp"> 返回</a>
<%
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
end if
end if
end if
%>

