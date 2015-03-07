
<% dim id
id=request.querystring("id")

if id="" then
response.write"id error"

else if isnumeric(request("id"))=false then
Response.Write "ID这不是数字类型哦!"
else
%>
<!--include file="formf.asp"-->
<html>
<head>


<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>查看信息文章内容-免费网址信息发布-帮帮网址信息网</title>
<meta name="Keywords" content="帮帮网址信息网,网址信息发布,帮帮网址信息网，首页发布网址信息，搜索浏览，学习工作，婚恋生活，软件"/>
<meta name="Description" content="帮帮网址信息网,网址信息发布,帮帮网址信息网，首页发布网址信息，搜索浏览，学习工作，婚恋生活，软件,提出问题,寻求帮助,广告,出租,交友,免费,网址导航,自定义网址导航，需求网：生活各种需求，提出难题的网站；教育，婚恋，工作，生活。免费链接导航，网址导航，自定义网址导航。"/>
<link href="bbw.css" rel="stylesheet" type="text/css">

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

If rs.EOF Then 
response.redirect "../error.asp?msg=没有满足条件的记录，或输入有误！" 
end if 

%>

<%

 response.write "标题："&rs("name")&"<hr>" 
 response.write "类别："&rs("title")&"<hr>" 
 response.write "内容："&rs("content")&"<hr>" 
%>

<a href="modify.asp?id=<%=rs("id")%>" target="_self">回复</a>&nbsp;&nbsp;&nbsp;
<a href="del2f.asp?id=<%=rs("id")%>" target="_self">修改</a>&nbsp;&nbsp;&nbsp;

<a href="del2.asp?id=<%=rs("id")%>">删除</a>


</div>
<br>
<div class="tm">

<%


 dim page,pagecount,thispage,linenum,allline  
            if rs("da")<>"" then

            const pageline=10 '每页显示5条 

            linenum=split(rs("da"),"<hr>") '本例为计算字符串<br>标记的个数  
            allline=ubound(linenum)+1 '全文<br>(换行标记)总数  
            pagecount=int(allline/pageline)+1 '计算总页数  
            page=request("page")  

 if isempty(page)  then  
             thispage=1  
            else  
             thispage=cint(page)  
            end if  

           ' response.write "<b>"&rs("da")&"</b><hr>"  
            for i=0 to allline-1  
            if i+1>thispage*pageline-pageline and i<thispage*pageline then  
             response.write ""&linenum(i)&"<br><hr>" '输出分页后的内容  
            end if  

            next  
            response.write "<br><hr>"  
            response.write "<p align='center'>总共"&allline&"条 "&pagecount&"页 每页"&pageline&"条"  
            for i=1 to pagecount  
            if thispage=i then  
             response.write ""&i&" "  
            else  
            response.write "<a href='view.asp?id="&id&"&page="&i&"'>"&i&"</a> "  
            '输出所有分页链接  
            end if  
            next  
     end if
            %> 
<br>
<input type="button" value="返回" onClick="location.href='javascript:history.back()';">
<input type="button" value="主页" onClick="location.href='index.asp';">
<input type="button" value="发布信息" onClick="location.href='sendcontent.asp';">



</div>

<%
response.write"<br><br><div class='center'><a href='http://bbw.svfree.net'>帮帮网址信息网http://bbw.svfree.net</a></div>"

%>
</div>
</div>
</div>
<div class="footer">
帮帮网址信息网 2012.8 v2.0  <script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script>
<a target=blank href=tencent://message/?uin=858272689&Site=帮帮网址信息网&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="有事点这里"></a>
</div>
<% 
end if
end  if %>
</body>
</html><div style="display:none">
<div style="display:none"><div style="display:none"><div style="display:none"><div style="display:none">