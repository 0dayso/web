<!--#include file="conn.asp"-->
<% dim userip
userip = Request.ServerVariables("HTTP_X_FORWARDED_FOR") 
If userip = "" Then userip = Request.ServerVariables("REMOTE_ADDR") 
%>


<%
Function urlChk(sUrl)
on error resume next
Set xmlHttp = Server.CreateObject("Microsoft.XMLHTTP")
xmlHttp.open "GET",sUrl,false
xmlHttp.send
    if xmlHttp.Status <> 200 then
        urlChk=false
    else
        urlChk=true
    end if
End Function


    
%>



<% dim a,b,c,d,e
a="http://www.sbwire.com/ "
b="-"
c=" "
e="<br>"

netname=request.form("netname") 

adress=request.form("adress")
code=request.form("code")
sUrl=adress

if instr(adress,b)>0  then
response.write "<script>alert('网址有不可含的符号，请填写正确并能正常访问!');location.href='javascript:history.back()';</script>" 

end if

if instr(adress,c)>0 or instr(netname,c)>0 or instr(adress,e)>0 or instr(netname,e)>0 then
response.write "<script>alert('网址不可空格，请填写正确并能正常访问!');location.href='javascript:history.back()';</script>" 

end if

if instr(adress,a)>0 then
response.write "<script>alert('网址不可正常访问，请填写正确并能正常访问!');location.href='javascript:history.back()';</script>" 

end if
if urlChk(sUrl) then

exec="select * from netad where neta Like '%"&adress&"%' or netname Like '%"&netname&"%' order by id desc " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

If not rs.EOF Then 



response.write "<script>alert('每项必须填写或填写的网址重复，请检查后填写再提交!');location.href='javascript:history.back()';</script>" 
else
if netname<>"" and adress<>"" and code="bbwcode2013" Then

exec="insert into netad(netname,neta,counter) values('"+netname+"','"+adress+"','"+userip+"')" 
conn.execute exec 


conn.close 
set conn=nothing 
'response.redirect "index.asp" 
response.write "<script>alert('网址发布成功!');location.href='index.asp';</script>" 
end if
end if



response.write(sUrl&"(可以正常访问！)")
else
   response.write "<script>alert('网址不可正常访问，请填写正确并能正常访问!');location.href='javascript:history.back()';</script>" 
end if

%> 

