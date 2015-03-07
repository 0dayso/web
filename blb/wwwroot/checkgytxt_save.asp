
<!--#include file="conn.asp"--> 
<% 
exec="select * from cp where id="&request.form("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3 
%> 

<% 
rs("gytxt")=rs("gytxt")+"<br>"+request.form("gytxt")

rs.update 



rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
 response.write "<script>alert('供应信息已发出！');location.href='cpadmin.asp';</script>"
%> 

