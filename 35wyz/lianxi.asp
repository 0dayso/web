<%

set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lianxi.mdb")
name=request.form("name")
tel=request.form("tel")
message=request.form("message") 
if message<>"" or tel<>"" and name<>"" then
response.write "������ݷ��ͳɹ�!"

exec="insert into guest(name,tel,message)values('"+name+"','"+tel+"','"+message+"')"
conn.execute exec
conn.close
set conn=nothing
else
response.write "�Բ����������Ϊ�գ���������д������!лл!"
end if
%>
