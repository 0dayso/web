<!--include file="formf.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>帮帮网-免费网址信息发布-帮帮网</title>
<meta name="Keywords" content="帮帮网,网址信息发布,帮帮网"/>
<meta name="Description" content="帮帮网,提出问题,寻求帮助,广告,出租,交友,免费,网址导航,自定义网址导航，需求网：生活各种需求，提出难题的网站；免费链接导航，网址导航，自定义网址导航。"/>
<link href="bbw.css" rel="stylesheet" type="text/css">


<SCRIPT language=javascript> 
function click() {if (event.button==2) {}}document.onmousedown=click 
</SCRIPT> 

</head>
<body>
<SCRIPT language=javascript> 
function click() { 
if (event.button==2) { 
alert(\'对不起,禁止使用此功能^_^.\') 
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
  &nbsp;帮帮网 </a><font size="5px"> http://bbw.svfree.net <font size="1px"></font>  &nbsp; &nbsp; &nbsp;  免费发布网址信息</font>
</div>

<div class="t">
<div align="justify"><marquee scrollamount="2" direction="left">有难题，要帮助，找帮帮网！可以发布各类网址和信息！</marquee></div></div>
</div>
<div class="m">
<div class="ml">
<div class="mlt">
<div class="top">功能列表</div>

<font size="2px">
&nbsp; &nbsp; &nbsp;<a href="sendnet.asp" target=_blank>发布网址</a><br>
&nbsp; &nbsp; &nbsp;<a href="sendcontent.asp" target=_blank>发布内容</a><br>
&nbsp; &nbsp; &nbsp;<a href="information.asp" target=_blank>信息搜索</a><br>
&nbsp; &nbsp; &nbsp;<a href="main.asp?page=1" target=_blank>信息浏览</a><br>
&nbsp; &nbsp; &nbsp;<a href="student.asp?na=教育语文" target=_blank>进入学习</a><br>
&nbsp; &nbsp; &nbsp;<a href="job.asp" target=_blank>进入工作</a><br>
&nbsp; &nbsp; &nbsp;<a href="marriage.asp" target=_blank>进入婚恋</a><br>
&nbsp; &nbsp; &nbsp;<a href="living.asp" target=_blank>进入生活</a>
</font>
</div>
<hr>
<div class="mld">
<div class="top">软件下载</div>
<font size="2px">
&nbsp; &nbsp;<a href="http://www.bailianbai.com/jscss.asp" >bbw_js/css工具</a><br>
&nbsp; &nbsp;<input type="button" name="bt" onclick="window.showModalDialog('f.asp','scrollbars=yes;help=no;status=no;dialogTop=25; dialogLeft=0;dialogHeight=50px')" value="软件下载页面">
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
<form name="form1" method="post" action="del2.asp?id=<%=rs("id")%>"> <tr><th align="center">删除记录</th></tr>
<tr><td align="center">标题 <input type="text" name="name" size="15"><br> </td></tr>
<tr><td align="center">密码 <input type="password" name="password" size="15"></td></tr> 
<tr><td align="center"><input type="submit" name="Submit" value="提交"> 
<input type="reset" name="Submit2" value="重置"> 
<input type="button" value="返回" onClick="location.href='javascript:history.back()';"></td></tr>
</form></table>

<%
name=request.form("name") 
password=request.form("password") 
 
if name=rs("name") and password=rs("password") then
exec="delete * from aab where id="&request.querystring("id")
conn.execute exec 
conn.close 
set conn=nothing 
response.redirect"main.asp?page=1" 
else if name<>"" or password<>"" then
response.write "<script>alert('密码错误');location.href='javascript:history.back()';</script>" 


end if

end if
%> 



</div>
</div>
</div>

<div class="footer">
帮帮网 2012.8 v2.0  <script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script>
<a target=blank href=tencent://message/?uin=858272689&Site=帮帮网址信息网&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="有事点这里"></a>
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