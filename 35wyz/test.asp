<%@LANGUAGE="VBSCRIPT"%>
<!--#include file="Connections/conn.asp" -->
<%
set Recordset1 = Server.CreateObject("ADODB.Recordset")
Recordset1.ActiveConnection = MM_conn_STRING
Recordset1.Source = "SELECT * FROM pro_table"
Recordset1.CursorType = 0
Recordset1.CursorLocation = 2
Recordset1.LockType = 3
Recordset1.Open()
Recordset1_numRows = 0
%>
<%
Dim Repeat1__numRows
Repeat1__numRows = -1
Dim Repeat1__index
Repeat1__index = 0
Recordset1_numRows = Recordset1_numRows + Repeat1__numRows
%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body bgcolor="#FFFFFF" text="#000000">
<table width="583" border="0" cellspacing="0" cellpadding="0">
<% 
While ((Repeat1__numRows <> 0) AND (NOT Recordset1.EOF)) 
%>
<tr> 
<td width="140"><%=(Recordset1.Fields.Item("id").Value)%></td>
<td width="171"><%=(Recordset1.Fields.Item("proname").Value)%></td>
<td width="272"><%=(Recordset1.Fields.Item("simages").Value)%></td>
<td width="272"><a href="cart.asp?ProductID=<%=(Recordset1.Fields.Item("id").Value)%>&quantity=1">购买</a></td>
</tr>
<% 
Repeat1__index=Repeat1__index+1
Repeat1__numRows=Repeat1__numRows-1
Recordset1.MoveNext()
Wend
%>
</table>
</body>
</html>
<%
Recordset1.Close()
%>
