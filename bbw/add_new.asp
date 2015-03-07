<!--#include file="conn.asp"--> 
<!--#include file="cover.asp"--> 
<% 
name=request.form("name") 
content=lcase(trim(HTMLEncode(request("content"))))   
list=request.form("list") 
password=request.form("password")
da=lcase(trim(HTMLEncode(request("da"))))  
if name<>"" and content<>""and list<>"" and password<>"" then

exec="insert into aab(name,content,title,password,da) values('"+name+"','"+content+"','"+list+"','"+password+"','"+da+"')" 
conn.execute exec 
conn.close 
set conn=nothing 
Response.redirect "main.asp?page=1"
else Response.Write "信息为空，每项必须填写!"
end if
%> 

