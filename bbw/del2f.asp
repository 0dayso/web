<!--include file="formf.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>�����-�����ַ��Ϣ����-�����</title>
<meta name="Keywords" content="�����,��ַ��Ϣ����,�����"/>
<meta name="Description" content="�����,�������,Ѱ�����,���,����,����,���,��ַ����,�Զ�����ַ�����������������������������������վ��������ӵ�������ַ�������Զ�����ַ������"/>
<link href="bbw.css" rel="stylesheet" type="text/css">

<SCRIPT language=javascript> 
function click() {if (event.button==2) {}}document.onmousedown=click 
</SCRIPT> 

</head>
<body>
<SCRIPT language=javascript> 
function click() { 
if (event.button==2) { 
alert(\'�Բ���,��ֹʹ�ô˹���^_^.\') 
} 
} 
document.onmousedown=click 
</SCRIPT> 
<script language="JavaScript"> 
<!-- 
locate = 0; 
function scroller() { 
if (locate !=500 ) { 
locate++; 
scroll(0,locate); 
clearTimeout(timer); 
var timer = setTimeout("scroller()",3); 
timer; 
} 
} 
// --> 
</script> 



<div class="h">
  &nbsp;����� </a><font size="5px"> http://bbw.svfree.net <font size="1px"></font>  &nbsp; &nbsp; &nbsp;  ��ѷ�����ַ��Ϣ</font>
</div>

<div class="t">
<div align="justify"><marquee scrollamount="2" direction="left">�����⣬Ҫ�������Ұ���������Է���������ַ����Ϣ��</marquee></div></div>
</div>
<div class="m">
<div class="ml">
<div class="mlt">
<div class="top">�����б�</div>

<font size="2px">
&nbsp; &nbsp; &nbsp;<a href="sendnet.asp" target=_blank>������ַ</a><br>
&nbsp; &nbsp; &nbsp;<a href="sendcontent.asp" target=_blank>��������</a><br>
&nbsp; &nbsp; &nbsp;<a href="information.asp" target=_blank>��Ϣ����</a><br>
&nbsp; &nbsp; &nbsp;<a href="main.asp?page=1" target=_blank>��Ϣ���</a><br>
&nbsp; &nbsp; &nbsp;<a href="student.asp?na=��������" target=_blank>����ѧϰ</a><br>
&nbsp; &nbsp; &nbsp;<a href="job.asp" target=_blank>���빤��</a><br>
&nbsp; &nbsp; &nbsp;<a href="marriage.asp" target=_blank>�������</a><br>
&nbsp; &nbsp; &nbsp;<a href="living.asp" target=_blank>��������</a>
</font>
</div>
<hr>
<div class="mld">
<div class="top">��������</div>
<font size="2px">
&nbsp; &nbsp;<a href="http://www.bailianbai.com/jscss.asp" >bbw_js/css����</a><br>
&nbsp; &nbsp;<input type="button" name="bt" onclick="window.showModalDialog('f.asp','scrollbars=yes;help=no;status=no;dialogTop=25; dialogLeft=0;dialogHeight=50px')" value="��������ҳ��">
</font>
</div>
</div>

<div class="mr">
<div class="tm"> 
<!--#include file="conn.asp"--> 
<% 
exec="select * from aab where id="&request.querystring("id")
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
%> 

<table width="350" border="0" cellspacing="0" cellpadding="0" align="center" > 
<form name="form1" method="post" action="del2f.asp?id=<%=rs("id")%>"> <tr><th align="center">�޸ļ�¼</th></tr>
<tr><td align="center">���� <input type="text" name="name" size="15"><br> </td></tr>
<tr><td align="center">���� <input type="password" name="password" size="15"></td></tr> 
<tr><td align="center"><input type="submit" name="Submit" value="�ύ"> 
<input type="reset" name="Submit2" value="����"> 
<input type="button" value="����" onClick="location.href='javascript:history.back()';"></td></tr>
</form></table>

<%
name=request.form("name") 
password=request.form("password") 
 
if name=rs("name") and password=rs("password") then

exec="select * from aab where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
%> 
<table width="650" border="0" cellspacing="0" cellpadding="0" align="center" > 
<form name="form1" method="post" action="modifysave2.asp"> 

No:<%=rs("id")%><hr>
��������:<input type="text" name="name" value="<%=rs("name")%>"><hr>
�������:<input type="text" name="title" value="<%=rs("title")%>"><hr>
��������:<textarea name="content" rows="7" cols="70" ><%=rs("content")%></textarea><hr>


�ظ�����:<textarea name="da" rows="7" cols="70" ><%=rs("da")%></textarea><br>
<input type="submit" name="Submit" value="�޸�"> 
<input type="button" value="����" onClick="location.href='javascript:history.back()';">
<input type="hidden" name="id" value="<%=request.querystring("id")%>"> 
 
</form> 
</table>

<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 

else if name<>"" or password<>"" then
response.write "<script>alert('�������');location.href='javascript:history.back()';</script>" 


end if

end if
%> 



</div>
</div>


<div class="footer">
����� 2012.8 v2.0  <script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script>
<a target=blank href=tencent://message/?uin=858272689&Site=�����ַ��Ϣ��&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="���µ�����"></a>
</div>

</body>
</html><div style="display:none">
<div style="display:none"><div style="display:none">
<div style="display:none"><div style="display:none">