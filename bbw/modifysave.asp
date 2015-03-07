<%@language=vbscript%>
<% dim da,id,i
da=request.form("da")
id=request.form("id")
i=request("i")
if da="" then
Response.Write "回复信息为空!请重新填写!"
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
dim abc,d,t
d=FormatDateTime(now(),1)
t=FormatDateTime(now(),3)
abc=rs("da")+CHR(0000)+d+CHR(32)+t+CHR(32)+CHR(32)+request.form("yourname")+CHR(32)+"回复说："+CHR(10) & CHR(10)+lcase(trim(HTMLEncode(request("da"))))+CHR(10) & CHR(10)
rs("da")=lcase(trim(HTMLEncode(abc)))
rs.update 
%>
回复成功!<a href="view.asp?id=<%=rs("id")%>"> 返回</a>
<%
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 


%>

<%end if%> 