<!--#include file="conn.asp"--> 
<% dim key
cgname=request.form("cgname") 
cgpassword=request.form("cgpassword") 

cgphone=request.form("cgphone")
cgemail=request.form("cgemail")
key="开通权限"

exec="select * from cg where cgname='"&cgname&"' or cgpassword='"&cgpassword&"'  order by id desc " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

If not rs.EOF Then 

response.write "<script>alert('每项必须填写或填写注册名重复，请检查后填写再提交!');location.href='javascript:history.back()';</script>" 
else
if cgname<>"" and cgpassword<>"" and cgphone<>"" and cgemail<>""   then

exec="insert into cg(cgname,cgpassword,cgphone,key,other1) values('"+cgname+"','"+cgpassword+"','"+cgphone+"','"+key+"','"+cgemail+"')" 

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