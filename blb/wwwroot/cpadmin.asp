<%@language=vbscript%>
<%if not session("checka")="right" then 
response.Redirect "index.asp"  
else
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>��Ʒ���� ������ ��������ȫ���̼���Ʒ�����г�</title>
<meta name="Keywords" content="������,��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,����,����,������վ,�Ź�,��������,��Ӧ,������Ϣ,����,һ�ڼ�,���繺��,����"/>
<meta name="Description" content="������-��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,���Ϲ���,���߽���,�����г�,���Ͻ���,�����г�,������,������,������վ,�Ź�,ó��,����,��������,��Ӧ,һ�ڼ�,���繺��,���ۡ�"/>
<style type="text/css" text_decoration=none>
body{text-align=center}
td{font-size:12px;text-align:center;}
table{align:center;}
th{font-size:13px;face="����";background-color="whitesmoke";color="white";}
div{font-size:12px;text-align:center;}
fieldset{width:300px;}


body{font-size:12px;}
p{font-size:12px;text-align:center;}


div.all
{width:100%;
margin-left:auto;
margin-right:auto;

border:1px solid gainsboro;
text-align:center;
padding:1px,1px,1px,1px;
}
div.h
{width:100%;
text-align:center;
background-color:whitesmoke;
}
div.c2
{
text-align:left;

padding:1px,1px,1px,1px;}
div.c3
{float:center;
margin-left:auto;
margin-right:auto;



text-align:center;

padding:1px,1px,1px,1px;

}
div.footer{align:center;}
</style>
</head>

<body>

<div class="all">
������   http://www.bailianbai.com
<table border="0" width="100%" align="center" bgcolor="whitesmoke" color="white"><td><div align="justify"><marquee scrollamount="2" direction="left">
             ��Ӧ�̼�������Ѷ</div></td></table>
              
<!--#include file="conn.asp"--> 

<% 
exec="select * from cp order by id desc " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

%> 

<%
dim m,n
rs.pagesize=6 '����һҳ��ʾ�ļ�¼��Ŀ
tatalrecord=rs.recordcount '��ȡ��¼����Ŀ
if tatalrecord<1  then
tatalrecord=0

else
tatalpages=rs.pagecount '��ȡ��ҳ����Ŀ
rs.movefirst
nowpage=request("page") '��request��ȡ��ǰҳ����ע��page���Լ�����ı������Ǻ���
if nowpage&"x"="x" then '����ҳ��Ϊ��ʱ�����
nowpage=1
else


if isnumeric(request("page"))=false then
nowpage=1
response.write "<script>alert('�����������Ŷ��');location.href='javascript:history.back()';</script>"
else
nowpage=cint(nowpage) '��ҳ��ת����������
end if
end if
rs.absolutepage=nowpage '��ָ���ƶ�����ǰ��ʾҳ�ĵ�һ����¼
%>
<table width="100%" height="24" border="1" align="center" cellpadding="1" cellspacing="0"> 




<tr>
<td>��������</td>
<td>��Ʒ����</td>
<td>��Ӧ����</td>
<td>�ɹ�����</td>
<td>�˻���ʽ</td>
<td>���۷�ʽ</td>
<td>���ʽ</td>
<td>�ɹ����</d>
<td>��Ӧ���</d>
<td>ͼƬ���</d>
<td>��Ӧ��Ϣ</td>
<td>�ɹ���Ϣ</td>
<td>�鿴��Ӧ</td>
<td>�鿴�ɹ�</td>
<td>����״̬</td>
<td>��������</td>
<td>ʱ��</td>
</tr><% n=1
do while not rs.eof and n<=rs.pagesize %>
<tr> 
<td width=30px><%=rs("id")%></td>
<td width=50px><%=rs("cpname")%></td>
<td width=50px><%=rs("gyname")%></td>
<td width=50px><%=rs("cgname")%></td>
<td ><%=rs("way")%></td>
<td ><%=rs("how")%></td>
<td ><%=rs("gyway")%></td>
<td><%=formatnumber((rs("cpearn")*rs("cpnum")*1.1),2,-1)%>   </td>
<td><%=formatnumber((rs("cpearn")*rs("cpnum")),2,-1)%></td>
<td width=80px><a href="upgytxt.asp?id=<%=rs("id")%>" target="_blank">ͼƬ��Ϣ</a></td>
<td width=80px><a href="opengytxt.asp?id=<%=rs("id")%>" target="_blank">�빩Ӧ��Ϣ</a></td>
<td width=80px><a href="opencgtxt.asp?id=<%=rs("id")%>" target="_blank">��ɹ���Ϣ</a></td>
<td width=50px><a href="viewgytxt.asp?id=<%=rs("id")%>" target="_self">�鿴</a></td>
<td width=50px><a href="viewcgtxt.asp?id=<%=rs("id")%>" target="_self">�鿴</a></td>
<td ><%=rs("now")%></td>
<td width=50px><a href="cpdel.asp?id=<%=rs("id")%>" target="_self">ɾ��</a></td>

<td width=80px><%=rs("xtime")%></td>
</tr>



<% n=n+1
rs.movenext 
loop

if nowpage>tatalpages then

response.write "<script>alert('ҳ������!');location.href='javascript:history.back()';</script>"
end if
%>
</table>

<a href="cgadmin.asp">�л��ɹ���</a>
<a href="gyadmin.asp">�л���Ӧ��</a>


��:<%=tatalpages%>ҳ ��ǰΪ:<%=nowpage%>ҳ
<%if nowpage>1 then%>
<a href="cpadmin.asp?page=<%=nowpage-1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%>
<%for k=1 to tatalpages%>

<%next%>
<%if nowpage < tatalpages then%>
<a href="cpadmin.asp?page=<%=nowpage+1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%> 
<input type='text' size='2' value="ҳ��+Enter" onfocus=" javascript:this.value='';"
onfocusout=" javascript:this.value='ҳ��+Enter';" style='height: 18px; width:75;color:DarkGray ; border:1px solid #FFCC99' onkeydown="javascript: if(event.keyCode==13)location='cpadmin.asp?page='+this.value;">

<%if nowpage<>1 then%>
<a href="cpadmin.asp?page=<%=1%>"> ��ҳ</a>
<%else%>
��ҳ
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="cpadmin.asp?page=<%=tatalpages%>">ĩҳ</a>
<%else%>
ĩҳ
<%end if%>


<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
end if

%> 




<div class="footer">������ 2012.8 v1.0
</div>
</div>
<form name="form1" method="post" action="exit.asp" > 
<input type="submit" name="Submit" value="�˳�"> 
</form>
<% 
end if %>
<div style="display:none">
