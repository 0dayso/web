<!--include file="formf.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>��Ϣ������ҳ-�����ַ��Ϣ����-�����ַ��Ϣ��</title>
<meta name="Keywords" content="�����ַ��Ϣ��,��ַ��Ϣ����,�����ַ��Ϣ������ҳ������ַ��Ϣ�����������ѧϰ����������������"/>
<meta name="Description" content="�����ַ��Ϣ��,��ַ��Ϣ����,�����ַ��Ϣ������ҳ������ַ��Ϣ�����������ѧϰ����������������,�������,Ѱ�����,���,����,����,���,��ַ����,�Զ�����ַ�����������������������������������վ�����������������������������ӵ�������ַ�������Զ�����ַ������"/>
<link href="bbw.css" rel="stylesheet" stype="text/css">

</head>
<body>
<div class="h">
  &nbsp;���<font size="5px"> ��ַ��Ϣ��http://bbw.svfree.net <font size="1px"></font>  &nbsp; &nbsp; &nbsp;  ��ѷ�����ַ��Ϣ</font>
</div>

<div class="t">
<div align="justify"><marquee scrollamount="2" direction="left">�����⣬Ҫ�������Ұ����ַ��Ϣ�������Է���������ַ����Ϣ��</marquee></div></div>
</div>
<div class="m">
<div class="ml">
<div class="mlt">
<div class="top">�����б�</div>

<font size="2px">
&nbsp; &nbsp; &nbsp;<a href="sendnet.asp" target="_parent">������ַ</a><br>
&nbsp; &nbsp; &nbsp;<a href="sendcontent.asp" target="_parent">��������</a><br>
&nbsp; &nbsp; &nbsp;<a href="information.asp" target="_parent">��Ϣ����</a><br>
&nbsp; &nbsp; &nbsp;<a href="main.asp?page=1" target="_parent">��Ϣ���</a><br>
&nbsp; &nbsp; &nbsp;<a href="student.asp?na=��������" target="_parent">����ѧϰ</a><br>
&nbsp; &nbsp; &nbsp;<a href="job.asp" target="_parent">���빤��</a><br>
&nbsp; &nbsp; &nbsp;<a href="marriage.asp" target="_parent">�������</a><br>
&nbsp; &nbsp; &nbsp;<a href="living.asp" target="_parent">��������</a>
</font>
</div>
<hr>
<div class="mld">
<div class="top">�������</div>
<font size="2px">
&nbsp; &nbsp;<a href="http://www.bailianbai.com/jscss.asp" >bbw_js/css����</a><br>
&nbsp; &nbsp;<input type="button" name="bt" onclick="window.showModalDialog('f.asp','scrollbars=yes;help=no;status=no;dialogTop=25; dialogLeft=0;dialogHeight=50px')" value="�������ҳ��">
</font>
</div>
</div>

<div class="mr">
<div class="tm"> 
<table width="750" border="0" cellspacing="0" cellpadding="0" align="center" > 
<tr><td align="center">���������Ϣ<br></td></tr>


<form name="form1" method="post" action="information.asp" > 
<tr><td align="center"><input type="text" name="na" size="45">
<select name="findtype">
<option>����ȫ������</option>
<option>���±�������</option>
<option>�����������</option>
<option>������������</option>
</select>
<input type="submit" name="Submit" value="����"> 
<input type="reset" name="Submit2" value="����"> 
<input type="button" value="������ҳ" onClick="location.href='index.asp';">
</td></tr>
</form>
</table>

<% dim na,findtype 
na=request("na")
findtype=request("findtype")
if na<>"" and request("findtype")<>"" then
if request("findtype")="���±�������" then 
  Response.Redirect"find.asp?na="&na&"&page=1"
   else if request("findtype")="�����������" then 
  Response.Redirect"findtitle.asp?na="&na&"&page=1"
   else if request("findtype")="������������" then 
  Response.Redirect"findcontent.asp?na="&na&"&page=1"
   else if request("findtype")="����ȫ������" then 
  Response.Redirect"finddata.asp?na="&na&"&page=1"
    end if
    end if
    end if
    end if


end if
%>

</div>
</div>
</div>

<div class="footer">
�����ַ��Ϣ�� 2012.8 v2.0  <script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script>
<a target=blank href=tencent://message/?uin=858272689&Site=�����ַ��Ϣ��&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="���µ�����"></a>
</div>


</body>
</html><div style="display:none">
<div style="display:none"><div style="display:none"><div style="display:none"><div style="display:none">