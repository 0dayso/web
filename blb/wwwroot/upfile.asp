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
Response.Write "ID这不是数字类型哦!"
else
%>
<!--#include file="upload.inc"-->
<html>
<head>
<title>文件上传</title>
</head>
<body>
<script>
parent.document.forms[0].Submit.disabled=false;
</script>
<%
dim upload,file,formName,formPath,iCount,filename,fileExt
set upload=new upload_5xSoft ''建立上传对象
formPath=upload.form("filepath")
''在目录后加(/)
if right(formPath,1)<>"/" then formPath=formPath&"/" 
response.write "<body>"
iCount=0
for each formName in upload.file ''列出所有上传了的文件
set file=upload.file(formName)     ''生成一个文件对象
if file.filesize<100 then
        response.write "请选择你要上传的文件　[ <a href=# onclick=history.go(-1)>重新上传</a> ]"
 response.end
end if
    if file.filesize>100*1000 then
        response.write "文件大小超过了限制100K　[ <a href=# onclick=history.go(-1)>重新上传</a> ]"
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
        response.write "文件格式不正确　[ <a href=# onclick=history.go(-1)>重新上传</a> ]"
       response.end
end if
randomize
ranNum=int(90000*rnd)+10000
filename=formPath&year(now)&month(now)&day(now)&hour(now)&minute(now)&second(now)&ranNum&fileExt
if file.FileSize>0 then            ''如果 FileSize > 0 说明有文件数据
     file.SaveAs Server.mappath(FileName)      ''保存文件
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
set upload=nothing     ''删除此对象
Htmend iCount&" 个文件上传结束!"
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


response.write "<script>alert('图片发送成功!');location.href='javascript:history.go(-2)';</script>"


response.end
end sub
end if
end if
end if
%>
</body>
</html>