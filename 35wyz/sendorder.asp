<%@LANGUAGE="VBSCRIPT"%> 
<!--#include file="Connections/conn.asp" -->

<%
if not IsObject(session("cart")) then
response.redirect("/")
end if
%> '��һ���жϣ����session("cart")Ϊ�գ����ض�λURL
<%
Set rs1=server.createobject("ADODB.recordset")
Set cart=session("cart")
keys=cart.keys 'ȡ����������Ĳ�ƷID
items=cart.items 'ȡ����������Ĳ�Ʒ����
%>
<%

set list = Server.CreateObject("ADODB.Command")
list.ActiveConnection = MM_conn_STRING
For i = 0 To cart.Count -1
list.CommandText = "INSERT INTO o_rder (m_um, p_roid) VALUES (" + Replace(items(i)(0), "'", "''") + "," + Replace(keys(i), "'", "''") + " ) "

list.CommandType = 1
list.CommandTimeout = 0
list.Prepared = true
list.Execute()
next
%>
<%

set add = Server.CreateObject("ADODB.Command")
add.ActiveConnection = MM_conn_STRING
add.CommandText = "INSERT INTO co_table (nn_ame, tt_el, ee_m_ail) VALUES (" + Replace(Request.form("n_ame"), "'", "''") + ", " + Replace(Request.form("t_el"), "'", "''") + ", " + Replace(Request.form("e_mail"), "'", "''") + ") "
add.CommandType = 1
add.CommandTimeout = 0
add.Prepared = true
add.Execute()

%>
<html>
<head>
<title>�㽭��Դӡˢ��װ��˾</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" >
<p><%= Request.form("n_ame") %>��ã�����������굥</p>
<p><%= Request.form("n_ame") %></p>
<p><%= Request.form("t_el") %></p>
<p><%= Request.form("e_mail") %></p>
<p>
<%For i = 0 To cart.Count -1%>
</p>
<p> id��<%=keys(i)%><br>
������<%=items(i)(0)%><br><%next%>
</p>
<p> </p>
<p> </p>
<p> </p>
</body>
</html>
<% session("cart")=""%>

