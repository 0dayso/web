<!--#include file="conn.asp"--> 
<% dim key
gyname=request.form("gyname") 
gypassword=request.form("gypassword") 

gyphone=request.form("gyphone")

gyemail=request.form("gyemail")

key="��ͨȨ��"
exec="select * from gy where gyname Like '%"&gyname&"%'  order by id desc " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

If not rs.EOF Then 

response.write "<script>alert('ÿ�������д����дע�����ظ����������д���ύ!');location.href='javascript:history.back()';</script>" 
else
if gyname<>"" and gypassword<>"" and gyphone<>"" and gyemail<>""   then

exec="insert into gy(gyname,gypassword,gyphone,key,other1) values('"+gyname+"','"+gypassword+"','"+gyphone+"','"+key+"','"+gyemail+"')" 

conn.execute exec 
conn.close 
set conn=nothing 

response.write "<script>alert('ע����Ϣ�ύ�ɹ�!');location.href='index.asp';</script>" 
else response.write("ÿ�������д������Ϊ��!")

end if
end if


%> 
<br>
<a href="index.asp">������ҳ</a>