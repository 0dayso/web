<%@language=vbscript%>
<%if not session("checkc")="right" then 
response.Redirect "index.asp"  
else
%>
<html>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>������Ʒ ������ ��������ȫ���̼���Ʒ�����г�</title>
<meta name="Keywords" content="������,��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,����,����,������վ,�Ź�,��������,��Ӧ,������Ϣ,����,һ�ڼ�,���繺��,����"/>
<meta name="Description" content="������-��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,���Ϲ���,���߽���,�����г�,���Ͻ���,�����г�,������,������,������վ,�Ź�,ó��,����,��������,��Ӧ,һ�ڼ�,���繺��,���ۡ�"/>
<style type="text/css">
body{font-size:13px;}
td{font-size:13px;}
</style>
<body>
<%=session("cgname")%>���𾴵��û�����ã�


<!--#include file="conn.asp"--> 

<% dim na,b
na=request.form("na")
others="�ر�"
otherss=""
b="����"
%>

<%


Set regEx = New RegExp

regEx.Pattern = "[��|��|��|��|��'|��|��|��|��]"

regEx.IgnoreCase = True

regEx.Global=true

if regEx.test(na)=true then

 response.write "��Ϣ��ʾ������Ƿ�Ϊ���ţ����û�ҵ������Ʒ��" %>
<input type="button" value="����" onClick="location.href='javascript:history.back()';">
<%
else
exec="select * from cp where cpname Like '%"&na&"%' and way not Like '%"&b&"%' and other3 not Like '%"&others&"%'  order by id desc " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

if  rs.eof then
response.write "��Ϣ��ʾ��û�ҵ������Ʒ��" %>
<input type="button" value="����" onClick="location.href='javascript:history.back()';">
<%
else


response.write "��Ϣ��ʾ�������Ǹ������������������Ʒ������Զ����κ�һ�"




%> 
<%
dim m,n
rs.pagesize=20 '����һҳ��ʾ�ļ�¼��Ŀ
tatalrecord=rs.recordcount '��ȡ��¼����Ŀ

if tatalrecord<1 then
tatalrecord=0
response.write "���ǵ�һ�ε�¼ϵͳ����������Ʒ���������������ȫ����Ʒ����ֱ�ӵ��������Ʒ���������룡������˴�����ֶ����б�"
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


<table width="100%" border="1" cellspacing="0" cellpadding="0" backgroundcolor="darkgray"> 
<tr> 
<td >������</td>
<td >��Ʒ����</td>
<td >��Ʒ����</td>
<td >��������</td>
<td >ͼƬ��Ϣ</td>
<td >���۷�ʽ</td>
<td >����״̬</td>
<td >��Ʒ����</td>

</tr>
<%
n=1
do while not rs.eof and n<=rs.pagesize %>
<tr> 
<td ><%=rs("id")%></td>
<td ><%=rs("cpname")%></td>
<td ><%=rs("cpprice")*1.1%></td>
<td ><%=rs("cpearn")*1.1%></td>
<td ><a href="viewuptxt.asp?id=<%=rs("id")%>">ͼƬ��Ϣ</a></td>
<td ><%=rs("how")%></td>
<td ><%=rs("now")%></td>
<td ><a href="findcpsave.asp?id=<%=rs("id")%>" >Ԥ���˲�Ʒ</a></td>

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
<a href="findcp.asp?na=<%=(na)%>&page=<%=nowpage-1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%>
<%for k=1 to tatalpages%>

<%next%>
<%if nowpage < tatalpages then%>
<a href="findcp.asp?na=<%=(na)%>&page=<%=nowpage+1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%> 
<input type='text' size='2' value="ҳ��+Enter" onfocus=" javascript:this.value='';"
onfocusout=" javascript:this.value='ҳ��+Enter';" style='height: 18px; width:75;color:DarkGray ; border:1px solid #FFCC99' onkeydown="javascript: if(event.keyCode==13)location='findcp.asp?na=<%=(na)%>&page='+this.value;">

<%if nowpage<>1 then%>
<a href="findcp.asp?na=<%=(na)%>&page=<%=1%>"> ��ҳ</a>
<%else%>
��ҳ
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="findcp.asp?na=<%=(na)%>&page=<%=tatalpages%>">ĩҳ</a>
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

<a href="cgindex.asp">����</a>
<div style="display:none">
<% end if

end if  
end if

set regEx=nothing

%>















