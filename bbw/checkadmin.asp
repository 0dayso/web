

<!--#include file="conn.asp"-->
<%
dim name,password
name=request.form("name")
password=request.form("password")

dim exec,conn,rs
exec="select *from  admin where(name='"&name&"' and password='"&password&"')"
set rs=server.createobject("adodb.recordset")

rs.open exec,conn
if not rs.eof then
rs.Close
conn.Close
session("checked")="yes"
session("checka")="right"
response.Redirect "adminindex.asp"
else 
session("checked")="no"
session("checka")="wrong"
response.write "<script>alert('用户名或密码错误，请重新输入正确再提交!');location.href='javascript:history.back()';</script>" 
end if
%>

