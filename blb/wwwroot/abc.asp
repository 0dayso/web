<%
c = Request.form("c")

'�����������Сд�����֣������������ע�͵�
for ii = 0 to 9
c = Replace(c,Cstr(ii),"")
next

c = Replace(c,"��","0")
c = Replace(c,"һ","1")
c = Replace(c,"��","2")
c = Replace(c,"��","3")
c = Replace(c,"��","4")
c = Replace(c,"��","5")
c = Replace(c,"��","6")
c = Replace(c,"��","7")
c = Replace(c,"��","8")
c = Replace(c,"��","9")

if Cstr(c) <> Cstr(session("validateCode")) then
Response.write ("��֤�벻��ȷ")
Response.end
end if
%>