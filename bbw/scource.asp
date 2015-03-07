<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>帮帮网-免费网址信息发布-帮帮网</title>
<meta name="Keywords" content="帮帮网,网址信息发布,帮帮网"/>
<meta name="Description" content="帮帮网,提出问题,寻求帮助,广告,出租,交友,免费,网址导航,自定义网址导航，需求网：生活各种需求，提出难题的网站；免费链接导航，网址导航，自定义网址导航。"/>
<style type="text/css" text_decoration=none>
body{text-align=center}
td{font-size:12px;text-align:center;}
table{align:center;}
th{font-size:13px;face="黑体";}
div{font-size:12px;text-align:left;}
fieldset{width:300px;}


body{font-size:12px;}
p{font-size:12px;text-align:center;}


div.all
{width:900px;
margin-left:auto;
margin-right:auto;
text-align:center;
background-color:WhiteSmoke;
border:1px solid gainsboro;

padding:1px,1px,1px,1px;
}
div.h
{width:800px;
text-align:center;
background-color:whitesmoke;
}
div.c2
{width:900px;
text-align:left;
height:300px;
border:1px solid gainsboro;
}
div.c3
{float:center;
margin-left:auto;
margin-right:auto;



text-align:center;
background-color:gainsboro;
padding:1px,1px,1px,1px;
clear:both;
}
div.left{align:left;}
div.footer{align:center;}
</style>
</head>

<body>
<div class="all">
<div class="h">
<p>帮帮网：http://bbw.svfree.net
<script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script></p>
</div>
<img src="bb.jpg" width="900px">
<table border="0" width="500" align="center"><td><div align="justify"><marquee scrollamount="2" direction="left">
             有难题，要帮助，找帮帮网！可以发布各类网址和信息！
              </marquee></div></td></table>


<table border="0" width="900px" bgcolor="blue.jpg">
<tr>
<td ><a href="sendcontent.asp"><img border="0" src="sendcontent.jpg" alt="点击进入发布内容"  align="center"></a></td>
<td ><a href="information.asp"><img border="0" src="findcontent.jpg" alt="点击进入信息搜索"  align="center"></a></td>
</tr>
</table>
<table border="0" width="900px" bgcolor="blue.jpg">
<td><form name="form1" method="post" action="scource.asp?na=教育语文" > 
<input type="submit" name="Submit" value="点击进入语文课"> 
 </form> 
</td>
<td><form name="form1" method="post" action="scource.asp?na=教育数学" > 
<input type="submit" name="Submit" value="点击进入数学课"> 
 </form> 
</td>
<td><form name="form1" method="post" action="scource.asp?na=教育英语" > 
<input type="submit" name="Submit" value="点击进入英语课"> 
 </form> 
</td>
<td><form name="form1" method="post" action="scource.asp?na=教育物理" > 
<input type="submit" name="Submit" value="点击进入物理课"> 
 </form> 
</td>


</table>

</div>
<div class="c2">
<table border="0" width="900px" bgcolor="whitesmoke">
<!--#include file="conn.asp"--> 

<% na=request("na")
exec="select * from aab where title='"+na+"'" 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
%> 

<%
dim m,n
rs.pagesize=10 '定义一页显示的记录数目
tatalrecord=rs.recordcount '获取记录总数目
tatalpages=rs.pagecount '获取分页的数目
rs.movefirst
nowpage=request("page") '用request获取当前页数，注意page是自己定义的变量并非函数
if nowpage&"x"="x" then '处理页码为空时的情况
nowpage=1
else
nowpage=cint(nowpage) '将页码转换成数字型
end if
rs.absolutepage=nowpage '将指针移动到当前显示页的第一条记录
%>
<%
n=1
while not rs.eof and n<=rs.pagesize%>


<table width="900" height="20" border="0" align="left" > 
<tr>
<td><%=rs("xhtime")%></td>
<td width=500px"><%=rs("name")%></td>
<td><%=rs("title")%></td>
<td><a href="view.asp?id=<%=rs("id")%>">查看</a></td>
<td><a href="del2.asp?id=<%=rs("id")%>">删除</a></td>
</tr>
</table>
<br><br>
<hr>

<%n=n+1
rs.movenext '显示页面的数据
wend
%>
共:<%=tatalpages%>页 当前为:<%=nowpage%>页
<%if nowpage>1 then%>
<a href="scource.asp?na=教育语文&page=<%=nowpage-1%>">上一页</a>
<%else%>
上一页
<%end if%>
<%for k=1 to tatalpages%>
<%if k<>nowpage then %>
<a href="scource.asp?na=教育语文&page=<%=k%>"><%=k%></a>
<%else%>
<%=k%>
<%end if%>
<%next%>
<%if nowpage < tatalpages then%>
<a href="scource.asp?na=教育语文&page=<%=nowpage+1%>">下一页</a>
<%else%>
下一页
<%end if%> 
<%if nowpage<>1 then%>
<a href="scource.asp?na=教育语文&page=<%=1%>"> 首页</a>
<%else%>
首页
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="scource.asp?na=教育语文&page=<%=tatalpages%>">末页</a>
<%else%>
末页
<%end if%>


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
%> 
</table> 


<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
%> 
</table>
<br>
</div>
<p>帮帮网 2012.8 v1.0</p>

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
