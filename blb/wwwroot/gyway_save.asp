
<!--#include file="conn.asp"--> 
<% 
exec="select * from cp where id="&request.form("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3 
%> 

<%  
rs("gyway")=rs("gyway")+"<br>"+request.form("gyway")
 
rs.update 



rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
response.redirect"gyindex.asp" 
%> 

