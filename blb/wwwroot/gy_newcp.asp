<%@language=vbscript%>
<%if not session("checkg")="right" then 
response.Redirect "index.asp"  
else
%>
<!--#include file="conn.asp"--> 

<% 
if request("cpprice")="" or request("cpname")="" or request("cpearn")="" then
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
cpname=request.form("cpname") 
gyname=session("gyname")
exec2="select * from cp where cpname='"+cpname+"' and gyname='"+gyname+"'  order by id desc " 
set rs2=server.createobject("adodb.recordset") 
rs2.open exec2,conn,1,1 

If not rs2.EOF Then 

response.write "<script>alert('产品名称有重复，请重新填写再提交!');location.href='javascript:history.back()';</script>" 
else
%>
<%dim cpcountprice,cpnumprice,cpname,cpprice,cpearn,cpnum,gyname,how,way,now1,other3,path

cpname=request.form("cpname") 
cpprice=request.form("cpprice")
cpearn=request.form("cpearn")
how=request.form("how")
path=request.form("path")
now1="等待订购"
other3="销售开通"
way=""

gyname=session("gyname") 
exec="select * from cp" 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3 
rs.addnew
rs("cpname")=cpname
rs("cpprice")= cpprice
rs("cpearn")= cpearn
rs("gyname")=gyname
rs("how")=how
rs("way")=way
rs("now")=now1
rs("other3")=other3
rs("other1")=path
rs.update 
response.write "<script>alert('发布成功!');location.href='gyindex.asp';</script>"
end if
end if
end if
end if
end if
%> 

