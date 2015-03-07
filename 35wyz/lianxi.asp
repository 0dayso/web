<%

set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lianxi.mdb")
name=request.form("name")
tel=request.form("tel")
message=request.form("message") 
if message<>"" or tel<>"" and name<>"" then
response.write "你的内容发送成功!"

exec="insert into guest(name,tel,message)values('"+name+"','"+tel+"','"+message+"')"
conn.execute exec
conn.close
set conn=nothing
else
response.write "对不起，你的内容为空，请重新填写并发送!谢谢!"
end if
%>
