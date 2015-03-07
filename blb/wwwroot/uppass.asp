<%@language=vbscript%>
<%if not session("checked")="yes" then 
response.Redirect "index.asp"  
else
%>
<% dim id
id=request.querystring("id")

if id="" then
response.write"id error"

else if isnumeric(request("id"))=false then
Response.Write "ID这不是数字类型哦!"
else
%>


<!--#include file="conn.asp"--> 
<% 
exec="select * from cp where id="&request("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3 
%> 

<% 
rs("other2")="审核通过"
 
rs.update 



rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
response.redirect"cpadmin.asp" 
end if
end if
end if
%> 

