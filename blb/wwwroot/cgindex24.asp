<%@language=vbscript%>
<%if not session("checkc")="right" then 
response.Redirect "index.asp"  
else
%>
<html>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>�����ҳ ������ ��������ȫ���̼���Ʒ�����г�</title>
<meta name="Keywords" content="���������,��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,����,����,������վ,�Ź�,��������,��Ӧ,������Ϣ,����,һ�ڼ�,���繺��,����"/>
<meta name="Description" content="������-��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,���Ϲ���,���߽���,�����г�,���Ͻ���,�����г�,������,������,������վ,�Ź�,ó��,����,��������,��Ӧ,һ�ڼ�,���繺��,���ۡ�"/>
<script src="blb.js" type="text/javascript"></script>
<link href="blb.css" rel="stylesheet" type="text/css" />

<body>
<div class="top"><span style="color:blue;"><%=session("cgname")%></span>���𾴵�����û�����ã�</div>
<br>

<form name="form1" method="post" action="findcp.asp?page=1" > 
<tr><td><input type="text" name="na"  size="30" ></td></tr>
<tr><td><input type="submit" name="Submit" value="������Ʒ"> 
</td></tr> 
</form>


<!--#include file="conn.asp"-->

<% 
dim na
na=session("cgname")
exec="select * from cp where cgname='"+na+"'  order by id desc " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
%>

<%
dim m,n
rs.pagesize=20 '����һҳ��ʾ�ļ�¼��Ŀ
tatalrecord=rs.recordcount '��ȡ��¼����Ŀ

if tatalrecord<1 then
tatalrecord=0
response.write "���ǵ�һ�ε�¼ϵͳ���޶�������������Ʒ���������������ȫ����Ʒ����ֱ�ӵ��������Ʒ���������룡Ԥ���򶩹���˴�����ֶ����б�"
else

tatalpages=rs.pagecount '��ȡ��ҳ����Ŀ
rs.movefirst
nowpage=request("page") '��request��ȡ��ǰҳ����ע��page���Լ�����ı������Ǻ���


if nowpage&"x"="x"  then '����ҳ��Ϊ��ʱ�����
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



<div class="top">�ҵĶ����б�</div>
<table width="100%" class="tablecss"> 
<tr class="trcsstop"> 
<td >������</td>
<td >��Ʒ����</td>
<td >��Ʒ����</td>
<td >��������</td>
<td >��Ʒ����</td>
<td >��Ʒ�ܼ�</td>
<td >ͼƬ��Ϣ</td>
<td >���۷�ʽ</td>
<td >��Ʒ����</td>
<td >��Ϣ����</td>
<td >����״̬</td>
<td >����ʱ��</td>

</tr><% n=1
do while not rs.eof and n<=rs.pagesize%>
<tr class="trcss" id="<%=rs("id")%>" onmouseover="trover1('<%=rs("id")%>') " onmouseout="trout1('<%=rs("id")%>')"> 
<td ><%=rs("id")%></td>
<td ><%=rs("cpname")%></td>
<td ><%=rs("cpprice")*1.1%></td>
<td ><%=rs("cpearn")*1.1%></td>
<td ><%=rs("cpnum")%></td>
<td ><%=rs("cpearn")*1.1*rs("cpnum")%></td>
<td ><a href="viewuptxt.asp?id=<%=rs("id")%>">ͼƬ��Ϣ</a></td>
<td ><%=rs("how")%></td>
<td ><a href="viewcg.asp?id=<%=rs("id")%>">��Ʒ����</a></td>

<td ><a href="viewcgtxt.asp?id=<%=rs("id")%>">��Ҫ��Ϣ</a></td>
<td ><%=rs("now")%></td>
<td ><%=rs("xtime")%></td>
</tr>
<% n=n+1
rs.movenext 
loop 

if nowpage>tatalpages then

response.write "<script>alert('ҳ������!');location.href='javascript:history.back()';</script>"
end if
%> 
</table>

��:<%=tatalpages%>ҳ ��ǰΪ:<%=nowpage%>ҳ
<%if nowpage>1 then%>
<a href="cgindex.asp?page=<%=nowpage-1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%>
<%for k=1 to tatalpages%>

<%next%>
<%if nowpage < tatalpages then%>
<a href="cgindex.asp?page=<%=nowpage+1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%> 
<input type='text' size='2' value="ҳ��+Enter" onfocus=" javascript:this.value='';"
onfocusout=" javascript:this.value='ҳ��+Enter';" style='height: 18px; width:75;color:DarkGray ; border:1px solid #FFCC99' onkeydown="javascript: if(event.keyCode==13)location='cgindex.asp?page='+this.value;">

<%if nowpage<>1 then%>
<a href="cgindex.asp?page=<%=1%>"> ��ҳ</a>
<%else%>
��ҳ
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="cgindex.asp?page=<%=tatalpages%>">ĩҳ</a>
<%else%>
ĩҳ
<%end if%>
20��/ҳ





<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
end if
%> 

<form name="form1" method="post" action="exit.asp" > 
<input type="submit" name="Submit" value="�˳�"> 
</form>

<% 
end if
%>

