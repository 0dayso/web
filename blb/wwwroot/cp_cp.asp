
<%if not session("checked")="yes" then 
response.Redirect "index.asp"  
else
%>
<html>

<!--#include file="upload.inc"-->
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>��Ʒ ������ ��������ȫ���̼���Ʒ�����г�</title>
<meta name="Keywords" content="������,��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,����,����,������վ,�Ź�,��������,��Ӧ,������Ϣ,����,һ�ڼ�,���繺��,����"/>
<meta name="Description" content="������-��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,���Ϲ���,���߽���,�����г�,���Ͻ���,�����г�,������,������,������վ,�Ź�,ó��,����,��������,��Ӧ,һ�ڼ�,���繺��,���ۡ�"/>
<script src="blb.js" type="text/javascript"></script>
<link href="blb.css" rel="stylesheet" type="text/css" />

<style type="text/css">

span{font-size:12px;color:red;background-color:yellow;padding:2px;}

</style>
</head>
<body>
<script>
parent.document.forms[0].Submit.disabled=false;
</script>
<form name="form" method="post" action="cp_cp.asp" enctype="multipart/form-data">
<input type="hidden" name="filepath" value="uploadimg">
<input type="hidden" name="act" value="upload">
<input type="file" name="file1" size=40>
<input type="submit" class=button name="Submit" value="�ϴ�ͼƬ">���ͣ�gif,jpg�����ƣ�100K ��ʾ���ϴ���ƷͼƬ�󲻿��޸ģ����û���Ǻã����Է��������ϴ���ͼƬ���������
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



<fieldset>
<legend>�Ǽ���Ʒ��Ϣ</legend>
<div class="allc">
<table width="280" border="0" cellspacing="0" cellpadding="0" align="center" style="font-size:12px;" >
������Ĳ�Ʒ/��Ʒ��











<form name="form1" method="post" action="gy_newcp.asp">
<tr><td>
<label >��Ʒ���ƺ��ͺ�<input type="text" id="t1" class="editbox"  name="cpname" onblur="c()"  /><a href="upindex_cp.asp" >�ϴ�ͼƬ</a><br></label></td></tr>
<tr><td>
<label>��Ʒ�ο�����&nbsp;&nbsp;&nbsp;<input type="text" class="editbox"  name="cpprice" id="cpp"/></label></td></tr>
<tr><td>
<label style="color:red;">��Ʒ���㵥��&nbsp;&nbsp;&nbsp;<input type="text" onfocus="on()" onblur="out()"class="editbox" id="cpe"  name="cpearn" /></label><span id="sp1" style="position:fixed;display:none;">��ֵԽ�͹��������Խ��</span></td></tr><tr><td>

���۷�ʽ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="how" >
<option value="��������">��������</option>
<option value="���л��">���л��</option>
</select><br>

<input type="submit" class="but" value="�ύ"/>
<input type="reset" class="but" name="Submit2" value="���"/>
<input type="button" class="but" value="����" onClick="location.href='javascript:history.back()';">
</td></tr>
</form>
</table>
</div>
</fieldset>


</body>
</html>


<% end if %>