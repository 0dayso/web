<%@language=vbscript%>
<%if not session("checked")="yes" then 
response.Redirect "adminlogin.asp"  
else
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>����� ������ ��������ȫ���̼���Ʒ�����г�</title>
<meta name="Keywords" content="������,��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,����,����,������վ,�Ź�,��������,��Ӧ,������Ϣ,����,һ�ڼ�,���繺��,����"/>
<meta name="Description" content="������-��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,���Ϲ���,���߽���,�����г�,���Ͻ���,�����г�,������,������,������վ,�Ź�,ó��,����,��������,��Ӧ,һ�ڼ�,���繺��,���ۡ�"/>
<style type="text/css">
body{background-color="whitesmoke"}
td{font-size:12px;}
th{font-size:13px;face="����";}
</style>
</head>
<body>
<!--#include file="conn.asp"--> 
<% 
exec="select * from cp where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
%> 
<form name="form1" method="post" action="checksale_save.asp"> 
<br><br><br><br>
<table width="350" border="1" cellspacing="0" cellpadding="0" align="center" > 
<tr><th>��ͨȨ��</th></tr>
<tr>
<td> ��Ʒ����:
<%=rs("cpname")%>
</td></tr>
<tr><td>
���ۿ���<select name="other3" >
<option value="���ۿ�ͨ">���ۿ�ͨ</option>
<option value="���۹ر�">���۹ر�</option>
</select>
</td></tr>

<td align="center"><input type="submit" name="Submit" value="�ύ����Ȩ��"> 

<input type="hidden" name="id" value="<%=request.querystring("id")%>"> 
</td> 

</table> 
</form> 
<td><a href="javascript:history.back()">����</td>


<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 

%> 

<%end if%>