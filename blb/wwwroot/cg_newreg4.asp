<!--#include file="conn.asp"--> 
<% dim key
cgname=request.form("cgname") 
cgpassword=request.form("cgpassword") 

cgphone=request.form("cgphone")
cgemail=request.form("cgemail")
key="��ͨȨ��"

exec="select * from cg where cgname='"&cgname&"' or cgpassword='"&cgpassword&"'  order by id desc " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

If not rs.EOF Then 

response.write "<script>alert('ÿ�������д����дע�����ظ����������д���ύ!');location.href='javascript:history.back()';</script>" 
else
if cgname<>"" and cgpassword<>"" and cgphone<>"" and cgemail<>""   then

exec="insert into cg(cgname,cgpassword,cgphone,key,other1) values('"+cgname+"','"+cgpassword+"','"+cgphone+"','"+key+"','"+cgemail+"')" 

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