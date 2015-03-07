<%@language=vbscript%>
<% dim da,id,i,name,title,content
name=request.form("name")
title=request.form("title")
content=request.form("content")
da=request.form("da")
id=request.form("id")
i=request("i")
if name="" or title="" then
Response.Write "标题和类别不能为空!请重新填写!"
else
%>
<!--#include file="conn.asp"--> 
<!--#include file="cover.asp"--> 
<% 
exec="select * from aab where id="&request.form("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3 
%> 
<% 

rs("name")=name
rs("title")=title
rs("content")=content
rs("da")=da
rs.update 
%>
修改成功!<a href="view.asp?id=<%=rs("id")%>"> 返回</a>
<%
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 


%>

<%end if%> 