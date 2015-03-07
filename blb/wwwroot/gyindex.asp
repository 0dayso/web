<%@language=vbscript%>
<%if not session("checkg")="right" then 
response.Redirect "index.asp"  
else
%>

<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>卖家主页</title>
<meta name="Keywords" content="百联百卖家主主页,最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,购物,在线,购物网站,团购,电子商务,供应,买卖信息,网店,一口价,网络购物,打折"/>
<meta name="Description" content="百联百-最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,网上购物,在线交易,交易市场,网上交易,交易市场,网上买,网上卖,购物网站,团购,贸易,购物,电子商务,供应,一口价,网络购物,打折。"/>
<script src="blb.js" type="text/javascript"></script>
<link href="blb.css" rel="stylesheet" type="text/css" />


<body>
<div class="bodycss">
<div class="top"><span style="color:blue;"><%=session("gyname")%></span>，尊敬的卖家用户，你好！</div>
<br>
<form name="form1" method="post" action="cp.asp" > 
<input type="submit"  name="Submit" value="发布产品"> <input type="button" class="but" onmouseover="showi()" onmouseout="closei()" value="图片演示">
</form>
<div id="showi" style="display:none;">
<img src="BLB1.png">
</div>

<!--#include file="conn.asp"-->

<% dim na,d
na=session("gyname")
d="界面"
de="等待订购"

exec="select * from cp where gyname='"+na+"'   order by id desc " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

%> 
<%
dim m,n,n1
rs.pagesize=20 '定义一页显示的记录数目
tatalrecord=rs.recordcount '获取记录总数目

if tatalrecord<1 then
tatalrecord=0
response.write "你是第一次登录系统或无发布商品，请发布商品销售！发布后此处会出现产品列表。"
else

'tatalpages=rs.pagecount '获取分页的数目
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


<div class="top">我的订单列表</div>
<% 
exec2="select * from cp where gyname='"+na+"'  and  way  Like '%"&d&"%' order by id desc " 
set rs2=server.createobject("adodb.recordset") 
rs2.open exec2,conn,1,1 
rs2.pagesize=10 '定义一页显示的记录数目
tatalrecord2=rs2.recordcount '获取记录总数目

if tatalrecord2<1 then
tatalrecord2=0
response.write "你是第一次登录系统或无订单，有订单时此处会显示订单列表。"
else

tatalpages2=rs2.pagecount '获取分页的数目
rs2.movefirst
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


rs2.absolutepage=nowpage '将指针移动到当前显示页的第一条记录
%> 
<table class="tablecss" width="100%" border="1" cellspacing="1" cellpadding="0" > 
<tr class="trcsstop"> 
<td  >订单号</td>
<td  >产品名称</td>
<td >参考单价</td>
<td >结算单价</td>
<td >产品数量</td>
<td >产品总价</td>
<td >图片操作</td>
<td >销售方式</td>
<td >信息操作</td>
<td >收款方式</td>
<td >状态操作</td>
<td >订单状态</td>
<td >订单时间</td>

</tr><% n=1
 while not rs2.eof and n<=rs2.pagesize%>
<tr  class="trcss" id="<%=rs2("id")%>" onmouseover="trover1('<%=rs2("id")%>') " onmouseout="trout1('<%=rs2("id")%>')"> 
<td ><%=rs2("id")%></td>
<td ><%=rs2("cpname")%></td>
<td ><%=rs2("cpprice")%></td>
<td style="color:red;font-size:16px;"><%=rs2("cpearn")%></td>
<td ><%=rs2("cpnum")%></td>
<td style="color:red;font-size:16px;"><%=formatnumber(rs("cpearn")*rs("cpnum"),2,-1)%></td>
<td ><a href="upindex.asp?id=<%=rs2("id")%>"  style="color:yellow;">上传图片</a></td>
<td ><%=rs2("how")%></td>
<td ><a href="viewgytxt.asp?id=<%=rs2("id")%>"  style="color:yellow;">订购信息</a></td>
<td ><a href="gywayadd.asp?id=<%=rs2("id")%>" style="color:yellow;">通知付款</a></td>
<td ><a href="modifysavegy.asp?id=<%=rs2("id")%>" style="color:yellow;" >通知出货</a></td>
<td ><%=rs2("now")%></td>
<td ><%=rs2("xtime")%></td>
</tr>
<% n=n+1
rs2.movenext 
wend
end if
%> 
</table>
共<%=tatalrecord2%>张订单 当前为:<%=nowpage%>页  10张/页
<br><br>
<div class="top">我的产品列表</div>

<% 
exec3="select * from cp where gyname='"+na+"'  and  way not Like '%"&d&"%'  order by id desc " 

set rs3=server.createobject("adodb.recordset") 
rs3.open exec3,conn,1,1 

rs3.pagesize=10 '定义一页显示的记录数目
tatalrecord3=rs3.recordcount '获取记录总数目

if tatalrecord3<1 then
tatalrecord3=0
response.write "你是第一次登录系统或无产品，有商品或发布产品后时此处会生成产品列表。"
else

tatalpages3=rs3.pagecount '获取分页的数目
rs3.movefirst
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


rs3.absolutepage=nowpage '将指针移动到当前显示页的第一条记录
%> 

<table class="tablecss" width="100%"  > 
<tr class="trcsstop"> 
<td >订单号</td>
<td >产品名称</td>
<td >参考单价</td>
<td >结算单价</td>
<td >图片操作</td>
<td >销售方式</td>
<td >信息操作</td>
<td >订单状态</td>
<td >销售开关</td>
<td>订单修改</td>
<td >订单时间</td>

</tr>
<% n1=1
while not rs3.eof and n1<=rs3.pagesize%>
<tr  class="trcss" id="<%=rs3("id")%>" onmouseover="trover1('<%=rs3("id")%>') " onmouseout="trout1('<%=rs3("id")%>')">
<td ><%=rs3("id")%></td>
<td ><%=rs3("cpname")%></td>
<td ><%=formatnumber(rs3("cpprice"),2,-1)%></td>
<td style="color:red;font-size:16px;"><%=formatnumber(rs3("cpearn"),2,-1)%></td>
<td ><a href="upindex.asp?id=<%=rs3("id")%>" style="color:yellow;">上传图片</a></td>
<td ><%=rs3("how")%></td>
<td ><a href="viewgytxt.asp?id=<%=rs3("id")%>" style="color:yellow;">查看信息</a></td>
<td ><%=rs3("now")%></td>
<td >目前：<%=rs3("other3")%>&nbsp;<a href="opensale.asp?id=<%=rs3("id")%>" target="_self" style="color:yellow;">开关销售</a></td>
<td><a href="netmodify.asp?id=<%=rs3("id")%>&cpname=<%=rs3("cpname")%>&gyname=<%=rs3("gyname")%>" target="_self" style="color:yellow;">修改</a></td>
<td ><%=rs3("xtime")%></td>
</tr>




<% n1=n1+1
rs3.movenext 
wend
end if

if tatalpages2<tatalpages3 then
tatalpages=tatalpages3
else 
tatalpages=tatalpages2
end if

if nowpage>tatalpages then

response.write "<script>alert('页数不对!');location.href='javascript:history.back()';</script>"
end if
%> 
</table>
共<%=tatalrecord3%>个商品 当前为:<%=nowpage%>页  10张/页

<br>


共:<%=tatalpages%>页 当前为:<%=nowpage%>页
<%if nowpage>1 then%>
<a href="gyindex.asp?page=<%=nowpage-1%>">上一页</a>
<%else%>
上一页
<%end if%>
<%for k=1 to tatalpages%>

<%next%>
<%if nowpage < tatalpages then%>
<a href="gyindex.asp?page=<%=nowpage+1%>">下一页</a>
<%else%>
下一页
<%end if%> 
<input type='text' size='2' value="页数+Enter" onfocus=" javascript:this.value='';"
onfocusout=" javascript:this.value='页数+Enter';" style='height: 18px; width:75;color:DarkGray ; border:1px solid #FFCC99' onkeydown="javascript: if(event.keyCode==13)location='gyindex.asp?page='+this.value;">

<%if nowpage<>1 then%>
<a href="gyindex.asp?page=<%=1%>"> 首页</a>
<%else%>
首页
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="gyindex.asp?page=<%=tatalpages%>">末页</a>
<%else%>
末页
<%end if%>





<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
end if 
end if
%> 






<br><br>
<form name="form1" method="post" action="exit.asp" > 
<input type="submit"  name="Submit" value="退出"> 
</form>
</div>


