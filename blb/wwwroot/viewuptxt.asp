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




<!--#include file="conn.asp"--> 
<title>������Ϣ  ��������ȫ���̼���Ʒ�����г�</title>
<meta name="Keywords" content="������Ϣ,��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,����,����,������վ,�Ź�,��������,��Ӧ,������Ϣ,����,һ�ڼ�,���繺��,����"/>
<meta name="Description" content="������-��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,���Ϲ���,���߽���,�����г�,���Ͻ���,�����г�,������,������,������վ,�Ź�,ó��,����,��������,��Ӧ,һ�ڼ�,���繺��,���ۡ�"/>
<% 
exec="select * from cp where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
if rs("other2")="���ͨ��" and rs("other1")<>"" then
%>

<table width="100%" border="1" cellspacing="0" cellpadding="0" backgroundcolor="darkgray"> 
<tr> 
<td >ͼƬ��Ϣ</td>

</tr>
<%if not rs.eof then %>
<tr> 


<td ><img src="<%=rs("other1")%>"/></td>
</tr>
<%end if%>
</table>




<input type="button" value="����" onClick="location.href='javascript:history.back()';">


<% 
else 
response.write "Ŀǰ��û����ƷͼƬŶ��"
%>
<input type="button" value="����" onClick="location.href='javascript:history.back()';">
<%
end if
end if
end  if
end if %>

