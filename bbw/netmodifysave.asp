<%@language=vbscript%>
<% dim name,id,i,adress
name=request.form("name")
adress=request.form("adress")
id=request.form("id")
i=request("i")
if name="" or adress="" then
Response.Write "修改信息为空!请重新填写!"
else
%>
<!--#include file="conn.asp"--> 
<!--#include file="cover.asp"--> 
<% 
exec="select * from netad where id="&request.form("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3 
%> 
<% 

rs("netname")=name
rs("neta")=adress
rs.update 
%>
修改成功!<a href="adminindex.asp"> 返回</a>
<%
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
end if

%>

