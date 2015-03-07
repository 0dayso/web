<%
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lianxi.mdb")name=request.form("name")
eqq=request.form("eqq")
message=request.form("message") 
exec="insert into biao1(姓名,联系方式EmailQQ,联系的内容)values('"+姓名+"',"+联系方式EmailQQ+",'"+联系的内容+"')"
conn.execute exec
conn.close
set conn=nothing
response.write "发送成功!"
%>