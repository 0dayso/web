<!--include file="formf.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>信息搜索首页-免费网址信息发布-帮帮网址信息网</title>
<meta name="Keywords" content="帮帮网址信息网,网址信息发布,帮帮网址信息网，首页发布网址信息，搜索浏览，学习工作，婚恋生活，软件"/>
<meta name="Description" content="帮帮网址信息网,网址信息发布,帮帮网址信息网，首页发布网址信息，搜索浏览，学习工作，婚恋生活，软件,提出问题,寻求帮助,广告,出租,交友,免费,网址导航,自定义网址导航，需求网：生活各种需求，提出难题的网站；教育，婚恋，工作，生活。免费链接导航，网址导航，自定义网址导航。"/>
<link href="bbw.css" rel="stylesheet" stype="text/css">

</head>
<body>
<div class="h">
  &nbsp;帮帮<font size="5px"> 网址信息网http://bbw.svfree.net <font size="1px"></font>  &nbsp; &nbsp; &nbsp;  免费发布网址信息</font>
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
<table width="750" border="0" cellspacing="0" cellpadding="0" align="center" > 
<tr><td align="center">查找相关信息<br></td></tr>


<form name="form1" method="post" action="information.asp" > 
<tr><td align="center"><input type="text" name="na" size="45">
<select name="findtype">
<option>文章全部相似</option>
<option>文章标题相似</option>
<option>文章类别相似</option>
<option>文章内容相似</option>
</select>
<input type="submit" name="Submit" value="查找"> 
<input type="reset" name="Submit2" value="重置"> 
<input type="button" value="返回主页" onClick="location.href='index.asp';">
</td></tr>
</form>
</table>

<% dim na,findtype 
na=request("na")
findtype=request("findtype")
if na<>"" and request("findtype")<>"" then
if request("findtype")="文章标题相似" then 
  Response.Redirect"find.asp?na="&na&"&page=1"
   else if request("findtype")="文章类别相似" then 
  Response.Redirect"findtitle.asp?na="&na&"&page=1"
   else if request("findtype")="文章内容相似" then 
  Response.Redirect"findcontent.asp?na="&na&"&page=1"
   else if request("findtype")="文章全部相似" then 
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
帮帮网址信息网 2012.8 v2.0  <script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script>
<a target=blank href=tencent://message/?uin=858272689&Site=帮帮网址信息网&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="有事点这里"></a>
</div>


</body>
</html><div style="display:none">
<div style="display:none"><div style="display:none"><div style="display:none"><div style="display:none">