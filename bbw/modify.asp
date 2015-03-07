<!--include file="formf.asp"-->
<html>
<head>


<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>回复信息-免费网址信息发布-帮帮网址信息网</title>
<meta name="Keywords" content="帮帮网址信息网,网址信息发布,帮帮网址信息网，首页发布网址信息，搜索浏览，学习工作，婚恋生活，软件"/>
<meta name="Description" content="帮帮网址信息网,网址信息发布,帮帮网址信息网，首页发布网址信息，搜索浏览，学习工作，婚恋生活，软件,提出问题,寻求帮助,广告,出租,交友,免费,网址导航,自定义网址导航，需求网：生活各种需求，提出难题的网站；教育，婚恋，工作，生活。免费链接导航，网址导航，自定义网址导航。"/>
<link href="bbw.css" rel="stylesheet" type="text/css">

</head>
<body>
<div class="h">
  &nbsp;帮帮<font size="5px"> 网址信息网 http://bbw.svfree.net <font size="1px"></font>  &nbsp; &nbsp; &nbsp;  免费发布网址信息</font>
</div>

<div class="t">
<div align="justify"><marquee scrollamount="2" direction="left">有难题，要帮助，找帮帮网址信息网！可以发布各类网址和信息！</marquee></div></div>
</div>
<div class="m">
<div class="ml">
<div class="mlt">
<div class="top">功能列表</div>

<font size="2px">
&nbsp; &nbsp; &nbsp;<a href="sendnet.asp" target="_parent">发布网址</a><br>
&nbsp; &nbsp; &nbsp;<a href="sendcontent.asp" target="_parent">发布内容</a><br>
&nbsp; &nbsp; &nbsp;<a href="information.asp" target="_parent">信息搜索</a><br>
&nbsp; &nbsp; &nbsp;<a href="main.asp?page=1" target="_parent">信息浏览</a><br>
&nbsp; &nbsp; &nbsp;<a href="student.asp?na=教育语文" target="_parent">进入学习</a><br>
&nbsp; &nbsp; &nbsp;<a href="job.asp" target="_parent">进入工作</a><br>
&nbsp; &nbsp; &nbsp;<a href="marriage.asp" target="_parent">进入婚恋</a><br>
&nbsp; &nbsp; &nbsp;<a href="living.asp" target="_parent">进入生活</a>
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
<form name="form1" method="post" action="modifysave.asp"> 

No:<%=rs("id")%><hr>
标题:<%=rs("name")%><hr>
类别:<%=rs("title")%><hr>
内容:<p><%=rs("content")%></p><hr>

请留下回复的称呼(昵称/名字)<input type="text" name="yourname"><hr>
回复信息写在下面<br>
<textarea name="da" rows="7" cols="70" ></textarea><br>
<input type="submit" name="Submit" value="回复"> 
<input type="button" value="返回" onClick="location.href='javascript:history.back()';">
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
帮帮网址信息网 2012.8 v2.0  <script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script>
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

<SCRIPT language=javascript> 
function click() {if (event.button==2) {alert('鼠标右键功能禁止！');}}document.onmousedown=click 
</SCRIPT> 