<%@language=vbscript%>
<% dim da,id,i,adress,now
da=request.form("name")
adress=request.form("adress")
i=request.form("phone")
id=request.form("id")
now="��������"
if da<>"" and adress<>"" and i<>""  then

%>
<!--#include file="conn.asp"--> 
 
<% 
exec="select * from cp where id="&request.form("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3 
%> 
<% 
rs("way")=rs("way")+"<br>"+"[����]"+da+"[��ַ]"+adress+"[�绰]"+i+"<br>"
rs("now")=now
rs.update 


rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
response.write "<script>alert('�򹩻��̳ɹ�����!');location.href='cgindex.asp';</script>"
else

response.write "<script>alert('��д��Ϣ��������ÿ�������д����Ϣ��ȷ���ύ!');location.href='javascript:history.back()';</script>" 

%>
<%end if%> 