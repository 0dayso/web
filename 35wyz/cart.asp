<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="Connections/conn.asp" -->
<%
if not IsObject(session("cart")) then
Set session("cart")=CreateObject("Scripting.Dictionary")
end if
Set cart=session("cart")
productID=Cstr(request("productID"))
dim detail(1)
detail(0)=Int(request("quantity"))
if request("productID")<>"" then
if cart.Exists(productID) then
cart.Remove(productID)
end if
cart.add productID,detail
end if
keys=cart.keys
items=cart.items
set session("cart")=cart
%>

<HTML>
<HEAD>
<TITLE>�㽭��Դӡˢ��װ���޹�˾</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK 
href="index/index.css" type=text/css rel=stylesheet>
<META content="MSHTML 5.50.4807.2300" name=GENERATOR>
</HEAD>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
<tr> 
<td width="100%" valign="top"> <br>
<table border="2" width="100%" cellspacing="0" cellpadding="0" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF" bgcolor="#D00000" height="1" align="center">
<tr bgcolor="#3399FF"> 
<td width="25%" align="center" height="19"><font color="#FFFFFF">��Ʒ����</font></td>
<td width="25%" align="center" height="19"><font color="#FFFFFF">��������</font></td>
<td width="12%" align="center" height="19"><font color="#FFFFFF">����</font></td>
<td width="13%" align="center" height="19"><font color="#FFFFFF">ɾ��</font></td>
</tr>
<% For i = 0 To cart.Count -1 %>
<% Dim list__MMColParam
list__MMColParam = keys(i) %>
<% set list = Server.CreateObject("ADODB.Recordset")
list.ActiveConnection = MM_conn_STRING
list.Source = "SELECT * FROM pro_table WHERE id = " + Replace(list__MMColParam, "'", "''") + ""
list.CursorType = 0
list.CursorLocation = 2
list.LockType = 3
list.Open()
%>
<form method="post" action="cart.asp" onSubmit="return checkform(this);"> '���²�Ʒ������
<tr bgcolor="#ECECFF"> 
<td width="25%" align="center" height="1"><a href="detail.asp?productID=<%=keys(i)%>"><font color="#000077" ></font></a><%=(list.Fields.Item("proname").Value)%></td>
<td width="25%" align="center" height="1"> 
<input name="quantity" size=4 class="edit" value="<%=items(i)(0)%>">
<input type="hidden" name="productID" value="<%=keys(i)%>">
</td>
<td width="12%" align="center" height="1"> 
<input type="image" border="0" name="imageField" src="images/ref.gif" width="17" height="19">
</td>
<td width="13%" align="center" height="1"><a href="delcart.asp?productID=<%=keys(i)%>"><img src="images/del.gif" width="17" height="19" border="0"></a></td>
</tr>
</form>
<%
list.Close()
%>
<% next %>
<tr > 
<td width="75%" bgcolor="#000000" align="center" height="1" colspan="2"> 
<p align="right"><font color="#FFFFFF">�ܼۺϼƣ�</font> 
</td>
<td width="25%" bgcolor="#000000" align="center" height="1" colspan="2"><font color="#FFFFFF">��<%=price%></font></td>
</tr>
</table>
<p align="center"><b><a href="index.asp">����ѡ��</a> <a href="order.asp">����</a></b> 
</td>
</tr>
</table>
</BODY>
</HTML>
������ǰ�����,��������������������п����д������������û�д�<%
if not IsObject(session("cart")) then
Set session("cart")=CreateObject("Scripting.Dictionary")'������ά����
end if
Set cart=session("cart") 
productID=Cstr(request("productID"))'�������productidΪ��Ʒҳ���ݹ�����ֵ
dim detail(1)
detail(0)=Int(request("quantity"))
if request("productID")<>"" then
if cart.Exists(productID) then
cart.Remove(productID)
end if
cart.add productID,detail '������һ���ҿ���̫����˭֪��������һ�£�������������й�
end if
keys=cart.keys '�������KEYS��ֵΪ��������Ĳ�ƷID
items=cart.items '�������items��ֵΪ��������Ĳ�Ʒ����
set session("cart")=cart 
%>
�������
<% For i = 0 To cart.Count -1 %> '���ö����Ʒ��ѭ����cart.count��ָ���򼸸���Ʒ,����Ҫ��next����
<% Dim list__MMColParam
list__MMColParam = keys(i) %> '����IDΪcart��������Ĳ�ƷID��
<% set list = Server.CreateObject("ADODB.Recordset")
list.ActiveConnection = MM_conn_STRING
list.Source = "SELECT * FROM pro_table WHERE id = " + Replace(list__MMColParam, "'", "''") + ""
list.CursorType = 0
list.CursorLocation = 2
list.LockType = 3
list.Open()
%> '����Ĵ���Ͳ�����˵�ˣ�����Ҫע��ģ�list__MMColParam = keys(i) 

�������������������������������� <%
list.Close()
%>
<% next %>
