<%@language=vbscript%>
<%if not session("checked")="yes" then 
response.Redirect "index.asp"  
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

<form name="form" method="post" action="upfile_cp.asp" enctype="multipart/form-data">
<input type="hidden" name="filepath" value="uploadimg">
<input type="hidden" name="act" value="upload">
<input type="file" name="file1" size=40>
<input type="submit" class=button name="Submit" value="�ϴ�ͼƬ">���ͣ�gif,jpg�����ƣ�100K 
</form>

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
<img src="<%=FileName%>"/>
ͼƬ���ͳɹ�����ʾ���ϴ���ƷͼƬ�󲻿��޸ģ�ͼƬ��������ˡ����һ��Ҫ�޸�ͼƬ�������۹رպ����·�����Ʒ��<a href="cp.asp?path=<%=FileName%>">����</a>
<% 



'response.write "<script>alert('ͼƬ���ͳɹ�!');location.href='cp.asp';</script>"


response.end
end sub
end if

%>
</body>
</html>