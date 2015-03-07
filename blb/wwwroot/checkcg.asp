<%
c = Request.form("c")
if Cstr(c) <> Cstr(session("validateCode")) then
response.write "<script>alert('验证码不正确!');location.href='javascript:history.back()';</script>"
else %>

<!--#include file="conn.asp"-->
<%
dim name,password,key
name=request.form("name")
password=request.form("password")

key="开通权限"
dim exec,conn,rs
exec="select *from cg where(cgname='"&name&"' and cgpassword='"&password&"'and key='"&key&"')"

set rs=server.createobject("adodb.recordset")
rs.open exec,conn
if not rs.eof then
rs.Close
conn.Close
session("checked")="yes"
session("checkc")="right"
session("cgname")=name
response.Redirect "cgindex.asp"
else 
session("checked")="no"
session("checkc")="wrong"
response.write "<script>alert('用户名或密码错误，请重新输入正确再提交!');location.href='javascript:history.back()';</script>" 
end if
end  if
%>

