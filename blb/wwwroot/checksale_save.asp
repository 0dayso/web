<!--#include file="conn.asp"--> 
<% 
exec="select * from cp where id="&request.form("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3 
%> 

<% 
rs("other3")=request.form("other3") 
rs.update 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 

'response.redirect"gyindex.asp" 
response.write "<script>alert('���ĳɹ�,�밴F5ˢ��ҳ��!');location.href='javascript:history.go(-2)';</script>" 
%> 

