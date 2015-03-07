<%@language=vbscript%>
<% dim da,id,i,adress,now
da=request.form("name")
adress=request.form("adress")
i=request.form("phone")
id=request("id")
now="订购出货"


%>
<!--#include file="conn.asp"--> 
 
<% 
exec="select * from cp where id="&request("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3 
%> 
<% 

rs("now")=now
rs.update 


rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
response.write "<script>alert('已通知买家订购出货!');location.href='gyindex.asp';</script>"



%>
