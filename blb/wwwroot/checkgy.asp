<%
c = Request.form("c")
if Cstr(c) <> Cstr(session("validateCode")) then
response.write "<script>alert('��֤�벻��ȷ!');location.href='javascript:history.back()';</script>"
else %>

<!--#include file="conn.asp"-->
<%
dim name,password,key
name=request.form("name")
password=request.form("password")

key="��ͨȨ��"
dim exec,conn,rs
exec="select *from gy where(gyname='"&name&"' and gypassword='"&password&"'and key='"&key&"')"

set rs=server.createobject("adodb.recordset")
rs.open exec,conn
if not rs.eof then
rs.Close
conn.Close
session("checked")="yes"
session("checkg")="right"
session("gyname")=name
response.Redirect "gyindex.asp"
else 
session("checked")="no"
session("checkg")="wrong"
response.write "<script>alert('�û������������������������ȷ���ύ!');location.href='javascript:history.back()';</script>" 
end if
end if
%>

