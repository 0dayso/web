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
%>

<table width="100%" border="1" cellspacing="0" cellpadding="0" backgroundcolor="darkgray"> 
<tr> 
<td >ͼƬ��Ϣ</td>

</tr>
<%if not rs.eof and rs("other1")<>"" then %>
<tr> 


<td ><img src="<%=rs("other1")%>"/></td>
</tr>

<%
else 
response.write "<script>alert('��ͼƬŶ');location.href='javascript:history.back()';</script>"
end if%>
</table>
<%=rs("other2")%>

<a href="uppass.asp?id=<%=rs("id")%>">���ͨ��</a>

<input type="button" value="����" onClick="location.href='cpadmin.asp';">


<% 
end if
end  if
end if %>

