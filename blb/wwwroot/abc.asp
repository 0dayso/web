<%
c = Request.form("c")

'如果可以输入小写的数字，请把下面三行注释掉
for ii = 0 to 9
c = Replace(c,Cstr(ii),"")
next

c = Replace(c,"零","0")
c = Replace(c,"一","1")
c = Replace(c,"二","2")
c = Replace(c,"三","3")
c = Replace(c,"四","4")
c = Replace(c,"五","5")
c = Replace(c,"六","6")
c = Replace(c,"七","7")
c = Replace(c,"八","8")
c = Replace(c,"九","9")

if Cstr(c) <> Cstr(session("validateCode")) then
Response.write ("验证码不正确")
Response.end
end if
%>