
<html>
<head>

<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>�����ַ��Ϣ�� �����ַ��Ϣ���� �����ַ��Ϣ��</title>
<meta name="Keywords" content="�����ַ��Ϣ��,��ַ��Ϣ����,�����ַ��Ϣ������ҳ������ַ��Ϣ�����������ѧϰ����������������"/>
<meta name="Description" content="�����ַ��Ϣ��,��ַ��Ϣ����,�����ַ��Ϣ������ҳ������ַ��Ϣ�����������ѧϰ����������������,�������,Ѱ�����,���,����,����,���,��ַ����,�Զ�����ַ�����������������������������������վ�����������������������������ӵ�������ַ�������Զ�����ַ������"/>

<link href="bbw.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
$(".span").show();
$(".pp").hide();


$(".span").click(function(){
$(".pp").toggle(500)

});
});
</script>


</head>
<body>




<!-- Baidu Button BEGIN -->
<script type="text/javascript" id="bdshare_js" data="type=slide&amp;img=0&amp;uid=584305" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript"> 
	document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?t=" + new Date().getHours();
</script>
<!-- Baidu Button END -->

<div class="h">
  &nbsp;���<font size="5px"> ��ַ��Ϣ�� http://bbw.svfree.net <font size="1px"></font>  &nbsp; &nbsp; &nbsp; ��ѷ�����ַ��Ϣ</font>
</div>



<div class="t">
<div align="justify"><marquee scrollamount="2" direction="left">�����⣬Ҫ�������Ұ����ַ��Ϣ�������Է���������ַ����Ϣ��</marquee></div></div>

<div class="m">
<div class="ml">
<div class="mlt">
<div class="top">�����б�</div>

<font size="2px">
&nbsp; &nbsp; &nbsp;<a href="sendnet.asp"  target="_parent">������ַ</a><br>
&nbsp; &nbsp; &nbsp;<a href="sendcontent.asp" target="_parent" >��������</a><br>
&nbsp; &nbsp; &nbsp;<a href="information.asp" target="_parent">��Ϣ����</a><br>
&nbsp; &nbsp; &nbsp;<a href="main.asp?page=1" target="_parent">��Ϣ���</a><br>
&nbsp; &nbsp; &nbsp;<a href="student.asp?na=��������&c=3" target="_parent">����ѧϰ</a><br>
&nbsp; &nbsp; &nbsp;<a href="job.asp" target="_parent">���빤��</a><br>
&nbsp; &nbsp; &nbsp;<a href="marriage.asp" target="_parent">�������</a><br>
&nbsp; &nbsp; &nbsp;<a href="living.asp" target="_parent">��������</a>
</font>
</div>

<div class="mld">
<div class="top">��ɫ���</div>
<font size="2px">
&nbsp; &nbsp;<a href="http://www.bailianbai.com/jscss.asp" >bbw_js/css����</a><br>
&nbsp; &nbsp;<input type="button" name="bt" onclick="window.showModalDialog('f.asp','scrollbars=yes;help=no;status=no;dialogTop=25; dialogLeft=0;dialogHeight=50px')" value="�������ҳ��">
</font>
</div>
</div>


<div class="mr">
<div class="top">��ַ����</div>

<font size="2px">
<!--#include file="conn.asp"-->
<font size="2px">
<% 
exec="select * from netad order by id  " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
%>
</font>
<%
dim m,n
rs.pagesize=100 '����һҳ��ʾ�ļ�¼��Ŀ
tatalrecord=rs.recordcount '��ȡ��¼����Ŀ
if tatalrecord<1 then
tatalrecord=0
response.write "�㻹û������Ϣ�������������б�"
else
tatalpages=rs.pagecount '��ȡ��ҳ����Ŀ
rs.movefirst
nowpage=request("page") '��request��ȡ��ǰҳ����ע��page���Լ�����ı������Ǻ���


if nowpage&"x"="x"  then '����ҳ��Ϊ��ʱ�����
nowpage=1
else

if isnumeric(request("page"))=false then
nowpage=1
response.write "<script>alert('�����������Ŷ��');location.href='javascript:history.back()';</script>"


else
nowpage=cint(nowpage) '��ҳ��ת����������
end if
end if


rs.absolutepage=nowpage '��ָ���ƶ�����ǰ��ʾҳ�ĵ�һ����¼
%>

<%
n=1
while not rs.eof and n<=rs.pagesize%>

<td ><a href="<%=rs("neta")%>" target="_blank"><%=rs("netname")%></a></td>



<%n=n+1
rs.movenext '��ʾҳ�������
wend
%>
<hr>
��:<%=tatalpages%>ҳ ��ǰΪ:<%=nowpage%>ҳ
<%if nowpage>1 then%>
<a href="index.asp?page=<%=nowpage-1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%>
<%for k=1 to tatalpages%>

<%next%>
<%if nowpage < tatalpages then%>
<a href="index.asp?page=<%=nowpage+1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%> 
<input type='text' size='2' value="ҳ��+Enter" onfocus=" javascript:this.value='';"
onfocusout=" javascript:this.value='ҳ��+Enter';" style='height: 18px; width:75;color:DarkGray ; border:1px solid #FFCC99' onkeydown="javascript: if(event.keyCode==13)location='index.asp?page='+this.value;">

<%if nowpage<>1 then%>
<a href="index.asp?page=<%=1%>"> ��ҳ</a>
<%else%>
��ҳ
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="index.asp?page=<%=tatalpages%>">ĩҳ</a>
<%else%>
ĩҳ
<%end if%>
100����ַ/ҳ  Ŀǰ����<%=tatalrecord%>����ַ
<input type="button" value="������ַ" onClick="location.href='netadmin.asp';">



<% 
if rs.eof and rs.bof then 
response.write("��ʱû�м�¼") 
else 
do while not rs.eof 
%> 

<% 
rs.movenext 
loop 
end if 
if nowpage>tatalpages then

response.write "<script>alert('ҳ������!');location.href='javascript:history.back()';</script>"
end if
%> 


</font>

<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
end if
%> 

<div class="span"><div class="top">�����ַ��Ϣ��ʹ�ý̳�flash�汾(���չ���͹رղ鿴���飩</div></div>
<div class="pp">
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="550" height="250" title="fashbbw">
    <param name="movie" value="bbwtest.swf">
    <param name="quality" value="high">
    <embed src="bbwtest.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="550" height="250"></embed>
  </object>
  </div>
</div>
</div>

<div class="footer">
�����ַ��Ϣ�� 2012.8 v2.0  <script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script>



<a target=blank href=tencent://message/?uin=858272689&Site=�����ַ��Ϣ��&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="���µ�����"></a>


</div>



</body>
</html><div style="display:none">
<div style="display:none">
<div style="display:none">
<div style="display:none">
<div style="display:none">
<div style="display:none">

'<SCRIPT language=javascript> 
'function click() {if (event.button==2) {alert('����Ҽ����ܽ�ֹ��');}}document.onmousedown=click 
'</SCRIPT> 
