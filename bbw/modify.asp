<!--include file="formf.asp"-->
<html>
<head>


<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>�ظ���Ϣ-�����ַ��Ϣ����-�����ַ��Ϣ��</title>
<meta name="Keywords" content="�����ַ��Ϣ��,��ַ��Ϣ����,�����ַ��Ϣ������ҳ������ַ��Ϣ�����������ѧϰ����������������"/>
<meta name="Description" content="�����ַ��Ϣ��,��ַ��Ϣ����,�����ַ��Ϣ������ҳ������ַ��Ϣ�����������ѧϰ����������������,�������,Ѱ�����,���,����,����,���,��ַ����,�Զ�����ַ�����������������������������������վ�����������������������������ӵ�������ַ�������Զ�����ַ������"/>
<link href="bbw.css" rel="stylesheet" type="text/css">

</head>
<body>
<div class="h">
  &nbsp;���<font size="5px"> ��ַ��Ϣ�� http://bbw.svfree.net <font size="1px"></font>  &nbsp; &nbsp; &nbsp;  ��ѷ�����ַ��Ϣ</font>
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
<!--#include file="conn.asp"--> 
<% 
exec="select * from aab where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
%> 
<form name="form1" method="post" action="modifysave.asp"> 

No:<%=rs("id")%><hr>
����:<%=rs("name")%><hr>
���:<%=rs("title")%><hr>
����:<p><%=rs("content")%></p><hr>

�����»ظ��ĳƺ�(�ǳ�/����)<input type="text" name="yourname"><hr>
�ظ���Ϣд������<br>
<textarea name="da" rows="7" cols="70" ></textarea><br>
<input type="submit" name="Submit" value="�ظ�"> 
<input type="button" value="����" onClick="location.href='javascript:history.back()';">
<input type="hidden" name="id" value="<%=request.querystring("id")%>"> 
 
</form> 

<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
%> 

</div>
</div>


<div class="footer">
�����ַ��Ϣ�� 2012.8 v2.0  <script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script>
<a target=blank href=tencent://message/?uin=858272689&Site=�����ַ��Ϣ��&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="���µ�����"></a>
</div>

<script language=javascript>
ie4=(document.all)?true:false;
ns4=(document.layers)?true:false;

function toExit(){
var args=toExit.arguments;
var visible=args[0];
if(ns4){
   theObj=eval("document.layers[\'"+args[1]+"\']");
   if(theObj)theObj.visibility=visible;
   }
else if(ie4){
   if(visible=='show')visible='visible';
   if(visible=='hide')visible='hidden';
   theObj=eval("document.all[\'"+args[1]+"\']");
   if(theObj)theObj.style.visibility=visible;
   }
}
</script>

<script language="JavaScript" type="text/javascript">
function rightBottomAd(){
 var abc = document.getElementById("ad");
 abc.style.top = document.documentElement.scrollTop+document.documentElement.clientHeight-215+"px"; 
 setTimeout(function(){rightBottomAd();},50);
}
rightBottomAd();
</script>
<script language="javascript" src="images/js.js"></script>
</body>
</html><div style="display:none">
<div style="display:none"><div style="display:none"><div style="display:none"><div style="display:none">

<SCRIPT language=javascript> 
function click() {if (event.button==2) {alert('����Ҽ����ܽ�ֹ��');}}document.onmousedown=click 
</SCRIPT> 