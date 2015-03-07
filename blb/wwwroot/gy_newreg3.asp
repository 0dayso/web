<!--#include file="conn.asp"--> 
<% dim key
gyname=request.form("gyname") 
gypassword=request.form("gypassword") 

gyphone=request.form("gyphone")

gyemail=request.form("gyemail")

key="开通权限"
exec="select * from gy where gyname Like '%"&gyname&"%'  order by id desc " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

If not rs.EOF Then 

response.write "<script>alert('每项必须填写或填写注册名重复，请检查后填写再提交!');location.href='javascript:history.back()';</script>" 
else
if gyname<>"" and gypassword<>"" and gyphone<>"" and gyemail<>""   then

exec="insert into gy(gyname,gypassword,gyphone,key,other1) values('"+gyname+"','"+gypassword+"','"+gyphone+"','"+key+"','"+gyemail+"')" 

conn.execute exec 
conn.close 
set conn=nothing 

response.write "<script>alert('注册信息提交成功!');location.href='index.asp';</script>" 
else response.write("每项必须填写，不能为空!")

end if
end if


%> 
<br>
<a href="index.asp">返回主页</a>