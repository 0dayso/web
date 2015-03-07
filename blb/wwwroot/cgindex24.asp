<%@language=vbscript%>
<%if not session("checkc")="right" then 
response.Redirect "index.asp"  
else
%>
<html>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>买家主页 百联百 最大最多最全的商家商品交易市场</title>
<meta name="Keywords" content="百联百买家,最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,购物,在线,购物网站,团购,电子商务,供应,买卖信息,网店,一口价,网络购物,打折"/>
<meta name="Description" content="百联百-最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,网上购物,在线交易,交易市场,网上交易,交易市场,网上买,网上卖,购物网站,团购,贸易,购物,电子商务,供应,一口价,网络购物,打折。"/>
<script src="blb.js" type="text/javascript"></script>
<link href="blb.css" rel="stylesheet" type="text/css" />

<body>
<div class="top"><span style="color:blue;"><%=session("cgname")%></span>，尊敬的买家用户，你好！</div>
<br>

<form name="form1" method="post" action="findcp.asp?page=1" > 
<tr><td><input type="text" name="na"  size="30" ></td></tr>
<tr><td><input type="submit" name="Submit" value="搜索商品"> 
</td></tr> 
</form>


<!--#include file="conn.asp"-->

<% 
dim na
na=session("cgname")
exec="select * from cp where cgname='"+na+"'  order by id desc " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
%>

<%
dim m,n
rs.pagesize=20 '定义一页显示的记录数目
tatalrecord=rs.recordcount '获取记录总数目

if tatalrecord<1 then
tatalrecord=0
response.write "你是第一次登录系统或无订单，请搜索商品订购！如果想搜索全部商品，请直接点击搜索商品，不用输入！预订或订购后此处会出现订单列表。"
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



<div class="top">我的订单列表</div>
<table width="100%" class="tablecss"> 
<tr class="trcsstop"> 
<td >订单号</td>
<td >产品名称</td>
<td >产品单价</td>
<td >让利单价</td>
<td >产品数量</td>
<td >产品总价</td>
<td >图片信息</td>
<td >销售方式</td>
<td >产品操作</td>
<td >信息操作</td>
<td >订单状态</td>
<td >订单时间</td>

</tr><% n=1
do while not rs.eof and n<=rs.pagesize%>
<tr class="trcss" id="<%=rs("id")%>" onmouseover="trover1('<%=rs("id")%>') " onmouseout="trout1('<%=rs("id")%>')"> 
<td ><%=rs("id")%></td>
<td ><%=rs("cpname")%></td>
<td ><%=rs("cpprice")*1.1%></td>
<td ><%=rs("cpearn")*1.1%></td>
<td ><%=rs("cpnum")%></td>
<td ><%=rs("cpearn")*1.1*rs("cpnum")%></td>
<td ><a href="viewuptxt.asp?id=<%=rs("id")%>">图片信息</a></td>
<td ><%=rs("how")%></td>
<td ><a href="viewcg.asp?id=<%=rs("id")%>">产品订购</a></td>

<td ><a href="viewcgtxt.asp?id=<%=rs("id")%>">重要信息</a></td>
<td ><%=rs("now")%></td>
<td ><%=rs("xtime")%></td>
</tr>
<% n=n+1
rs.movenext 
loop 

if nowpage>tatalpages then

response.write "<script>alert('页数不对!');location.href='javascript:history.back()';</script>"
end if
%> 
</table>

共:<%=tatalpages%>页 当前为:<%=nowpage%>页
<%if nowpage>1 then%>
<a href="cgindex.asp?page=<%=nowpage-1%>">上一页</a>
<%else%>
上一页
<%end if%>
<%for k=1 to tatalpages%>

<%next%>
<%if nowpage < tatalpages then%>
<a href="cgindex.asp?page=<%=nowpage+1%>">下一页</a>
<%else%>
下一页
<%end if%> 
<input type='text' size='2' value="页数+Enter" onfocus=" javascript:this.value='';"
onfocusout=" javascript:this.value='页数+Enter';" style='height: 18px; width:75;color:DarkGray ; border:1px solid #FFCC99' onkeydown="javascript: if(event.keyCode==13)location='cgindex.asp?page='+this.value;">

<%if nowpage<>1 then%>
<a href="cgindex.asp?page=<%=1%>"> 首页</a>
<%else%>
首页
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="cgindex.asp?page=<%=tatalpages%>">末页</a>
<%else%>
末页
<%end if%>
20张/页





<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
end if
%> 

<form name="form1" method="post" action="exit.asp" > 
<input type="submit" name="Submit" value="退出"> 
</form>

<% 
end if
%>

