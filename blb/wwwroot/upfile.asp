<%@language=vbscript%>
<%if not session("checked")="yes" then 
response.Redirect "index.asp"  
else
%>
<% dim id
id=request.querystring("id")

if id="" then
response.write"id error"

else if isnumeric(request("id"))=false then
Response.Write "ID�ⲻ����������Ŷ!"
else
%>
<!--#include file="upload.inc"-->
<html>
<head>
<title>�ļ��ϴ�</title>
</head>
<body>
<script>
parent.document.forms[0].Submit.disabled=false;
</script>
<%
dim upload,file,formName,formPath,iCount,filename,fileExt
set upload=new upload_5xSoft ''�����ϴ�����
formPath=upload.form("filepath")
''��Ŀ¼���(/)
if right(formPath,1)<>"/" then formPath=formPath&"/" 
response.write "<body>"
iCount=0
for each formName in upload.file ''�г������ϴ��˵��ļ�
set file=upload.file(formName)     ''����һ���ļ�����
if file.filesize<100 then
        response.write "��ѡ����Ҫ�ϴ����ļ���[ <a href=# onclick=history.go(-1)>�����ϴ�</a> ]"
 response.end
end if
    if file.filesize>100*1000 then
        response.write "�ļ���С����������100K��[ <a href=# onclick=history.go(-1)>�����ϴ�</a> ]"
       response.end
end if
fileExt=lcase(right(file.filename,4))
uploadsuc=false
Forum_upload="gif,jpg,png"
Forumupload=split(Forum_upload,",")
for i=0 to ubound(Forumupload)
       if fileEXT="."&trim(Forumupload(i)) then
       uploadsuc=true
       exit for
       else
       uploadsuc=false
       end if
next
if uploadsuc=false then
        response.write "�ļ���ʽ����ȷ��[ <a href=# onclick=history.go(-1)>�����ϴ�</a> ]"
       response.end
end if
randomize
ranNum=int(90000*rnd)+10000
filename=formPath&year(now)&month(now)&day(now)&hour(now)&minute(now)&second(now)&ranNum&fileExt
if file.FileSize>0 then            ''��� FileSize > 0 ˵�����ļ�����
     file.SaveAs Server.mappath(FileName)      ''�����ļ�
       for i=0 to ubound(Forumupload)
           if fileEXT="."&trim(Forumupload(i)) then
            response.write "<script>parent.form_name.cn_content.value+='[img]"&FileName&"[/img]'</script>"
           exit for
           end if
       next
iCount=iCount+1
end if
set file=nothing
next
set upload=nothing     ''ɾ���˶���
Htmend iCount&" ���ļ��ϴ�����!"
sub HtmEnd(Msg)
set upload=nothing
%> 
<!--#include file="conn.asp"--> 
<% 

exec="select * from cp where id="&request.querystring("id")
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3 
rs("other1")=FileName
rs.update 
'exec="insert into cp(other1) values('"&FileName&"')" 
conn.execute exec 
conn.close 
set conn=nothing 


response.write "<script>alert('ͼƬ���ͳɹ�!');location.href='javascript:history.go(-2)';</script>"


response.end
end sub
end if
end if
end if
%>
</body>
</html>