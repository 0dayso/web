<%@language=vbscript%>
<% dim da,id,i,adress,now
da=request.form("name")
adress=request.form("adress")
i=request.form("phone")
id=request.form("id")
now="订单订购"
if da<>"" and adress<>"" and i<>""  then

%>
<!--#include file="conn.asp"--> 
 
<% 
exec="select * from cp where id="&request.form("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3 
%> 
<% 
rs("way")=rs("way")+"<br>"+"[姓名]"+da+"[地址]"+adress+"[电话]"+i+"<br>"
rs("now")=now
rs.update 


rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
response.write "<script>alert('向供货商成功订购!');location.href='cgindex.asp';</script>"
else

response.write "<script>alert('填写信息不完整，每项必须填写并信息正确再提交!');location.href='javascript:history.back()';</script>" 

%>
<%end if%> 