<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>���ɾ�� ������ ��������ȫ���̼���Ʒ�����г�</title>
<meta name="Keywords" content="������,��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,����,����,������վ,�Ź�,��������,��Ӧ,������Ϣ,����,һ�ڼ�,���繺��,����"/>
<meta name="Description" content="������-��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,���Ϲ���,���߽���,�����г�,���Ͻ���,�����г�,������,������,������վ,�Ź�,ó��,����,��������,��Ӧ,һ�ڼ�,���繺��,���ۡ�"/>
<style type="text/css">
body{background-color="whitesmoke"}
td{font-size:12px;text-align:center;}
th{font-size:13px;face="����";}
</style>
</head>
<body>

<br><br><br><br>
<!--#include file="conn.asp"--> 
<% 
exec="select * from cg where id="&request.querystring("id")
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

exec="delete * from cg where id="&request.querystring("id")
conn.execute exec 
conn.close 
set conn=nothing 
response.write "<script>alert('�ɹ��û���ɾ����');location.href='cgadmin.asp';</script>"

%> 


</body>
</html><div style="display:none">

