<%@language=vbscript%>
<%if not session("checked")="yes" then 
response.Redirect "index.asp"  
else
%>





<!--#include file="conn.asp"--> 
<title>������Ϣ  ��������ȫ���̼���Ʒ�����г�</title>
<meta name="Keywords" content="������Ϣ,��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,����,����,������վ,�Ź�,��������,��Ӧ,������Ϣ,����,һ�ڼ�,���繺��,����"/>
<meta name="Description" content="������-��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,���Ϲ���,���߽���,�����г�,���Ͻ���,�����г�,������,������,������վ,�Ź�,ó��,����,��������,��Ӧ,һ�ڼ�,���繺��,���ۡ�"/>

<table width="100%" border="1" cellspacing="0" cellpadding="0" backgroundcolor="darkgray"> 
<tr> 
<td >ͼƬ��Ϣ</td>

</tr><tr><td></td></tr></table>
<form name="form" method="post" action="upfile_cp.asp" enctype="multipart/form-data">
<input type="hidden" name="filepath" value="uploadimg">
<input type="hidden" name="act" value="upload">
<input type="file" name="file1" size=40>
<input type="submit" class=button name="Submit" value="�ϴ�ͼƬ">���ͣ�gif,jpg�����ƣ�100K 
</form>
<input type="button" value="����" onClick="location.href='javascript:history.back()';">
<%
end if%>



