<%
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lianxi.mdb")name=request.form("name")
eqq=request.form("eqq")
message=request.form("message") 
exec="insert into biao1(����,��ϵ��ʽEmailQQ,��ϵ������)values('"+����+"',"+��ϵ��ʽEmailQQ+",'"+��ϵ������+"')"
conn.execute exec
conn.close
set conn=nothing
response.write "���ͳɹ�!"
%>