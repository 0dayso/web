<%
c = Request.form("c")
if Cstr(c) <> Cstr(session("validateCode")) then
Response.write ("��֤�벻��ȷ")

else 
response.Redirect "http://bbw.svfree.net"
end if
%>