<%@language=vbscript%>
<%if not session("checkc")="right" then 
response.Redirect "index.asp"  
else
%>
<!--#include file="conn.asp"--> 
<% 
exec="select * from cp where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
%> 
<title>��������  ��������ȫ���̼���Ʒ�����г�</title>
<meta name="Keywords" content="��������,��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,����,����,������վ,�Ź�,��������,��Ӧ,������Ϣ,����,һ�ڼ�,���繺��,����"/>
<meta name="Description" content="������-��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,���Ϲ���,���߽���,�����г�,���Ͻ���,�����г�,������,������,������վ,�Ź�,ó��,����,��������,��Ӧ,һ�ڼ�,���繺��,���ۡ�"/>
<form name="form1" method="post" action="modifysave.asp"> 

No:<%=rs("id")%><br>
��Ʒ����:<%=rs("cpname")%><br>
��Ʒ����:<%=rs("cpprice")*1.1%><br>
���۷���:<%=rs("cpearn")*1.1%><br>
��Ʒ����:<%=rs("cpnum")%><br>
��Ʒ�ܼ�:<%=rs("cpearn")*1.1*rs("cpnum")%><br>
ͼƬ��Ϣ:<a href="viewuptxt.asp?id=<%=rs("id")%>">ͼƬ��Ϣ</a><br>
�ƺ�����<input type="text" name="name" size="70"><br>
��ϵ��ַ<input type="text" name="adress" size="70"><br>
��ϵ��ʽ<input type="text" name="phone" size="70"><br>


<br>
<input type="submit" name="Submit" value="�򹩻��̶���"> 
<input type="button" value="����" onClick="location.href='javascript:history.back()';">
<input type="hidden" name="id" value="<%=request.querystring("id")%>"> 
 
</form> 

<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
end if
%> 
<div style="display:none">