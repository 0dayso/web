<%@language=vbscript%>
<% dim da,id,i,name,title,content
name=request.form("name")
title=request.form("title")
content=request.form("content")
da=request.form("da")
id=request.form("id")
i=request("i")
if name="" or title="" then
Response.Write "����������Ϊ��!��������д!"
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
�޸ĳɹ�!<a href="view.asp?id=<%=rs("id")%>"> ����</a>
<%
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 


%>

<%end if%> 