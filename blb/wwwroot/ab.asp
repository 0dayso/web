<%
c = Request.form("c")
if Cstr(c) <> Cstr(session("validateCode")) then
Response.write ("验证码不正确")

else 
response.Redirect "http://bbw.svfree.net"
end if
%>