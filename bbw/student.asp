<!--include file="formf.asp"-->
<html>
<head>

<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>进入教育-免费网址信息发布-帮帮网址信息网</title>
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

<table border="0" width="100%"  bgcolor="blue.jpg">
<td><form name="form1" method="post" action="student.asp?na=教育语文&c=1" > 
<input type="submit" name="Submit" value="点击进入基础课"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=教育理工&c=2" > 
<input type="submit" name="Submit" value="点击进入专业课"> 
 </form> 
</td>


</table>










<table border="0" width="100%" bgcolor="whitesmoke">
<!--#include file="conn.asp"--> 
<%  na=request("na")
c=request("c")
if c="1" or c="2" then
%>

<% 

exec="select * from aab where title='"+na+"' order by id desc "
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 


%> 







<%
dim m,n
rs.pagesize=10 '定义一页显示的记录数目
tatalrecord=rs.recordcount '获取记录总数目
if tatalrecord<1 then
tatalrecord=0
response.write "你还没发布信息！发布后会出现列表。"
else
tatalpages=rs.pagecount '获取分页的数目
rs.movefirst
nowpage=request("page") '用request获取当前页数，注意page是自己定义的变量并非函数
if nowpage&"x"="x" then '处理页码为空时的情况
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
<tr>
<th  width="25%">发布时间</th>
<th  width="45%">信息标题</th>
<th  width="10%">信息类别</th>
<th  width="10%">操作</th>
<th  width="10%">操作</th>
</tr>
<%
n=1
while not rs.eof and n<=rs.pagesize%>
<tr>
<td width="25%"><%=rs("xhtime")%></td>
<td width="45%"><%=rs("name")%></td>
<td width="10%"><%=rs("title")%></td>
<td width="10%"><a href="view.asp?id=<%=rs("id")%>">查看</a></td>
<td width="10%"><a href="del2.asp?id=<%=rs("id")%>">删除</a></td>
</tr>


<%n=n+1
rs.movenext '显示页面的数据
wend
end if
%>

&nbsp; &nbsp; &nbsp;共:<%=tatalpages%>页 当前为:<%=nowpage%>页
<%if nowpage>1 then%>
<a href="student.asp?na=<%=na%>&c=1&page=<%=nowpage-1%>">上一页</a>
<%else%>
上一页
<%end if%>
<%for k=1 to tatalpages%>

<%next%>
<%if nowpage < tatalpages then%>
<a href="student.asp?na=<%=na%>&c=1&page=<%=nowpage+1%>">下一页</a>
<%else%>
下一页
<%end if%> 
<input type='text' size='2' value="页数+Enter" onfocus=" javascript:this.value='';"
onfocusout=" javascript:this.value='页数+Enter';" style='height: 18px; width:75;color:DarkGray ; border:1px solid #FFCC99' onkeydown="javascript: if(event.keyCode==13)location='student.asp?na=<%=na%>&c=1&page='+this.value;">

<%if nowpage<>1 then%>
<a href="student.asp?na=<%=na%>&c=1&page=<%=1%>"> 首页</a>
<%else%>
首页
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="student.asp?na=<%=na%>&c=1&page=<%=tatalpages%>">末页</a>
<%else%>
末页
<%end if%>

<%if c="1" then%>
<table border="0" width="100%"  bgcolor="blue.jpg">
<td><form name="form1" method="post" action="student.asp?na=教育语文&c=1" > 
<input type="submit" name="Submit" value="语文类"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=教育数学&c=1" > 
<input type="submit" name="Submit" value="数学类"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=教育英语&c=1" > 
<input type="submit" name="Submit" value="英语类"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=教育物理&c=1" > 
<input type="submit" name="Submit" value="物理类"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=教育化学&c=1" > 
<input type="submit" name="Submit" value="化学类"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=教育政治&c=1" > 
<input type="submit" name="Submit" value="政治类"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=教育历史&c=1" > 
<input type="submit" name="Submit" value="历史类"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=教育地理&c=1" > 
<input type="submit" name="Submit" value="地理类"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=教育生物&c=1" > 
<input type="submit" name="Submit" value="生物类"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=教育音乐&c=1" > 
<input type="submit" name="Submit" value="音乐类"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=教育体育&c=1" > 
<input type="submit" name="Submit" value="体育类"> 
 </form> 
</td>

</table>


<% 
else if c="2" then %>
<table border="0" width="100%"  bgcolor="blue.jpg">
<td><form name="form1" method="post" action="student.asp?na=教育经政&c=2" > 
<input type="submit" name="Submit" value="教育经济政治类"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=教育公法&c=2" > 
<input type="submit" name="Submit" value="教育公安法律类"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=教育理工&c=2" > 
<input type="submit" name="Submit" value="教育理科工科类"> 
 </form> 
</td>
</table>

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


end if 
end if 
if nowpage>tatalpages then

response.write "<script>alert('页数不对!');location.href='javascript:history.back()';</script>"
end if
%> 
</table> 


<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
%> 
</table>



<%

end if%>

<br>
<input type="button" value="返回主页" onClick="location.href='index.asp';">

</div>
</div>

<div class="footer">
帮帮网址信息网 2012.8 v2.0  <script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script>
<a target=blank href=tencent://message/?uin=858272689&Site=帮帮网址信息网&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="有事点这里"></a>
</div>

</body>
</html><div style="display:none">
<div style="display:none"><div style="display:none"><div style="display:none"><div style="display:none">