
<!--#include file="conn.asp"--> 
<% 
exec="select * from gy where id="&request.form("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3 
%> 

<% 
rs("key")=request.form("keyword")
 
rs.update 



rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
response.redirect"gyadmin.asp" 
%> 

