
<% 
if request("cpprice")="" or request("cpname")="" or request("cpearn")="" or request("how")="" then
response.write "<script>alert('ÿ�������д������д�������ύ!');location.href='javascript:history.back()';</script>"
else
 if isnumeric(request("cpprice"))=false or isnumeric(request("cpearn"))=false   then
response.write "<script>alert('��Ʒ���ۺ�����������Ŷ��');location.href='javascript:history.back()';</script>"
else

Set regEx = New RegExp

regEx.Pattern = "[��|��|��|��|��'|��|��|+,��:.��`��|�� ]"

regEx.IgnoreCase = True

regEx.Global=true

if regEx.test(request("cpname"))=true then

 response.write "<script>alert('��Ʒ�����в��ɰ������Ż�ո�');location.href='javascript:history.back()';</script>" 
else
%>

<!--#include file="conn.asp"--> 
<% 
exec="select * from cp where id="&request.form("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3 
%> 
<% 

rs("cpname")=request("cpname")
rs("cpprice")=request("cpprice")
rs("cpearn")=request("cpearn")
rs("how")=request("how")
rs.update 
%>
�޸ĳɹ�!<a href="gyindex.asp"> ����</a>
<%
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
end if
end if
end if
%>

