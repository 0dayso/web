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
<TITLE>浙江广源印刷包装有限公司</TITLE>
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
<td width="25%" align="center" height="19"><font color="#FFFFFF">商品名称</font></td>
<td width="25%" align="center" height="19"><font color="#FFFFFF">购买数量</font></td>
<td width="12%" align="center" height="19"><font color="#FFFFFF">更新</font></td>
<td width="13%" align="center" height="19"><font color="#FFFFFF">删除</font></td>
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
<form method="post" action="cart.asp" onSubmit="return checkform(this);"> '更新产品数量用
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
<p align="right"><font color="#FFFFFF">总价合计：</font> 
</td>
<td width="25%" bgcolor="#000000" align="center" height="1" colspan="2"><font color="#FFFFFF">￥<%=price%></font></td>
</tr>
</table>
<p align="center"><b><a href="index.asp">继续选购</a> <a href="order.asp">付款</a></b> 
</td>
</tr>
</table>
</BODY>
</HTML>
其中最前面代码,下面的理解是我自已想的有可能有错，不过程序绝对没有错：<%
if not IsObject(session("cart")) then
Set session("cart")=CreateObject("Scripting.Dictionary")'建立二维数组
end if
Set cart=session("cart") 
productID=Cstr(request("productID"))'定义变量productid为产品页传递过来的值
dim detail(1)
detail(0)=Int(request("quantity"))
if request("productID")<>"" then
if cart.Exists(productID) then
cart.Remove(productID)
end if
cart.add productID,detail '上面这一段我看不太懂，谁知道告诉我一下，不过和下面的有关
end if
keys=cart.keys '定义变量KEYS的值为数组里面的产品ID
items=cart.items '定义变量items的值为数组里面的产品数量
set session("cart")=cart 
%>
代码二：
<% For i = 0 To cart.Count -1 %> '设置多个产品的循环，cart.count是指购买几个产品,后面要以next结束
<% Dim list__MMColParam
list__MMColParam = keys(i) %> '定义ID为cart数组里面的产品ID号
<% set list = Server.CreateObject("ADODB.Recordset")
list.ActiveConnection = MM_conn_STRING
list.Source = "SELECT * FROM pro_table WHERE id = " + Replace(list__MMColParam, "'", "''") + ""
list.CursorType = 0
list.CursorLocation = 2
list.LockType = 3
list.Open()
%> '上面的代码就不用我说了，其中要注意的：list__MMColParam = keys(i) 

………………………………………… <%
list.Close()
%>
<% next %>
