
<html>
<head>

<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>帮帮网址信息网 免费网址信息发布 帮帮网址信息网</title>
<meta name="Keywords" content="帮帮网址信息网,网址信息发布,帮帮网址信息网，首页发布网址信息，搜索浏览，学习工作，婚恋生活，软件"/>
<meta name="Description" content="帮帮网址信息网,网址信息发布,帮帮网址信息网，首页发布网址信息，搜索浏览，学习工作，婚恋生活，软件,提出问题,寻求帮助,广告,出租,交友,免费,网址导航,自定义网址导航，需求网：生活各种需求，提出难题的网站；教育，婚恋，工作，生活。免费链接导航，网址导航，自定义网址导航。"/>

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
  &nbsp;帮帮<font size="5px"> 网址信息网 http://bbw.svfree.net <font size="1px"></font>  &nbsp; &nbsp; &nbsp; 免费发布网址信息</font>
</div>



<div class="t">
<div align="justify"><marquee scrollamount="2" direction="left">有难题，要帮助，找帮帮网址信息网！可以发布各类网址和信息！</marquee></div></div>

<div class="m">
<div class="ml">
<div class="mlt">
<div class="top">功能列表</div>

<font size="2px">
&nbsp; &nbsp; &nbsp;<a href="sendnet.asp"  target="_parent">发布网址</a><br>
&nbsp; &nbsp; &nbsp;<a href="sendcontent.asp" target="_parent" >发布内容</a><br>
&nbsp; &nbsp; &nbsp;<a href="information.asp" target="_parent">信息搜索</a><br>
&nbsp; &nbsp; &nbsp;<a href="main.asp?page=1" target="_parent">信息浏览</a><br>
&nbsp; &nbsp; &nbsp;<a href="student.asp?na=教育语文&c=3" target="_parent">进入学习</a><br>
&nbsp; &nbsp; &nbsp;<a href="job.asp" target="_parent">进入工作</a><br>
&nbsp; &nbsp; &nbsp;<a href="marriage.asp" target="_parent">进入婚恋</a><br>
&nbsp; &nbsp; &nbsp;<a href="living.asp" target="_parent">进入生活</a>
</font>
</div>

<div class="mld">
<div class="top">特色软件</div>
<font size="2px">
&nbsp; &nbsp;<a href="http://www.bailianbai.com/jscss.asp" >bbw_js/css工具</a><br>
&nbsp; &nbsp;<input type="button" name="bt" onclick="window.showModalDialog('f.asp','scrollbars=yes;help=no;status=no;dialogTop=25; dialogLeft=0;dialogHeight=50px')" value="软件下载页面">
</font>
</div>
</div>


<div class="mr">
<div class="top">网址导航</div>

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
rs.pagesize=100 '定义一页显示的记录数目
tatalrecord=rs.recordcount '获取记录总数目
if tatalrecord<1 then
tatalrecord=0
response.write "你还没发布信息！发布后会出现列表。"
else
tatalpages=rs.pagecount '获取分页的数目
rs.movefirst
nowpage=request("page") '用request获取当前页数，注意page是自己定义的变量并非函数


if nowpage&"x"="x"  then '处理页码为空时的情况
nowpage=1
else

if isnumeric(request("page"))=false then
nowpage=1
response.write "<script>alert('这个不是数字哦！');location.href='javascript:history.back()';</script>"


else
nowpage=cint(nowpage) '将页码转换成数字型
end if
end if


rs.absolutepage=nowpage '将指针移动到当前显示页的第一条记录
%>

<%
n=1
while not rs.eof and n<=rs.pagesize%>

<td ><a href="<%=rs("neta")%>" target="_blank"><%=rs("netname")%></a></td>



<%n=n+1
rs.movenext '显示页面的数据
wend
%>
<hr>
共:<%=tatalpages%>页 当前为:<%=nowpage%>页
<%if nowpage>1 then%>
<a href="index.asp?page=<%=nowpage-1%>">上一页</a>
<%else%>
上一页
<%end if%>
<%for k=1 to tatalpages%>

<%next%>
<%if nowpage < tatalpages then%>
<a href="index.asp?page=<%=nowpage+1%>">下一页</a>
<%else%>
下一页
<%end if%> 
<input type='text' size='2' value="页数+Enter" onfocus=" javascript:this.value='';"
onfocusout=" javascript:this.value='页数+Enter';" style='height: 18px; width:75;color:DarkGray ; border:1px solid #FFCC99' onkeydown="javascript: if(event.keyCode==13)location='index.asp?page='+this.value;">

<%if nowpage<>1 then%>
<a href="index.asp?page=<%=1%>"> 首页</a>
<%else%>
首页
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="index.asp?page=<%=tatalpages%>">末页</a>
<%else%>
末页
<%end if%>
100个网址/页  目前已有<%=tatalrecord%>个网址
<input type="button" value="管理网址" onClick="location.href='netadmin.asp';">



<% 
if rs.eof and rs.bof then 
response.write("暂时没有记录") 
else 
do while not rs.eof 
%> 

<% 
rs.movenext 
loop 
end if 
if nowpage>tatalpages then

response.write "<script>alert('页数不对!');location.href='javascript:history.back()';</script>"
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

<div class="span"><div class="top">帮帮网址信息网使用教程flash版本(点击展开和关闭查看详情）</div></div>
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
帮帮网址信息网 2012.8 v2.0  <script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script>



<a target=blank href=tencent://message/?uin=858272689&Site=帮帮网址信息网&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="有事点这里"></a>


</div>



</body>
</html><div style="display:none">
<div style="display:none">
<div style="display:none">
<div style="display:none">
<div style="display:none">
<div style="display:none">

'<SCRIPT language=javascript> 
'function click() {if (event.button==2) {alert('鼠标右键功能禁止！');}}document.onmousedown=click 
'</SCRIPT> 
