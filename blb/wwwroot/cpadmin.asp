<%@language=vbscript%>
<%if not session("checka")="right" then 
response.Redirect "index.asp"  
else
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>产品管理 百联百 最大最多最全的商家商品交易市场</title>
<meta name="Keywords" content="百联百,最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,购物,在线,购物网站,团购,电子商务,供应,买卖信息,网店,一口价,网络购物,打折"/>
<meta name="Description" content="百联百-最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,网上购物,在线交易,交易市场,网上交易,交易市场,网上买,网上卖,购物网站,团购,贸易,购物,电子商务,供应,一口价,网络购物,打折。"/>
<style type="text/css" text_decoration=none>
body{text-align=center}
td{font-size:12px;text-align:center;}
table{align:center;}
th{font-size:13px;face="黑体";background-color="whitesmoke";color="white";}
div{font-size:12px;text-align:center;}
fieldset{width:300px;}


body{font-size:12px;}
p{font-size:12px;text-align:center;}


div.all
{width:100%;
margin-left:auto;
margin-right:auto;

border:1px solid gainsboro;
text-align:center;
padding:1px,1px,1px,1px;
}
div.h
{width:100%;
text-align:center;
background-color:whitesmoke;
}
div.c2
{
text-align:left;

padding:1px,1px,1px,1px;}
div.c3
{float:center;
margin-left:auto;
margin-right:auto;



text-align:center;

padding:1px,1px,1px,1px;

}
div.footer{align:center;}
</style>
</head>

<body>

<div class="all">
百联百   http://www.bailianbai.com
<table border="0" width="100%" align="center" bgcolor="whitesmoke" color="white"><td><div align="justify"><marquee scrollamount="2" direction="left">
             供应商家最新资讯</div></td></table>
              
<!--#include file="conn.asp"--> 

<% 
exec="select * from cp order by id desc " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

%> 

<%
dim m,n
rs.pagesize=6 '定义一页显示的记录数目
tatalrecord=rs.recordcount '获取记录总数目
if tatalrecord<1  then
tatalrecord=0

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
<table width="100%" height="24" border="1" align="center" cellpadding="1" cellspacing="0"> 




<tr>
<td>订单号码</td>
<td>商品名称</td>
<td>供应名称</td>
<td>采购名称</td>
<td>运货方式</td>
<td>销售方式</td>
<td>付款方式</td>
<td>采购金额</d>
<td>供应金额</d>
<td>图片审核</d>
<td>供应信息</td>
<td>采购信息</td>
<td>查看供应</td>
<td>查看采购</td>
<td>订单状态</td>
<td>订单操作</td>
<td>时间</td>
</tr><% n=1
do while not rs.eof and n<=rs.pagesize %>
<tr> 
<td width=30px><%=rs("id")%></td>
<td width=50px><%=rs("cpname")%></td>
<td width=50px><%=rs("gyname")%></td>
<td width=50px><%=rs("cgname")%></td>
<td ><%=rs("way")%></td>
<td ><%=rs("how")%></td>
<td ><%=rs("gyway")%></td>
<td><%=formatnumber((rs("cpearn")*rs("cpnum")*1.1),2,-1)%>   </td>
<td><%=formatnumber((rs("cpearn")*rs("cpnum")),2,-1)%></td>
<td width=80px><a href="upgytxt.asp?id=<%=rs("id")%>" target="_blank">图片信息</a></td>
<td width=80px><a href="opengytxt.asp?id=<%=rs("id")%>" target="_blank">与供应信息</a></td>
<td width=80px><a href="opencgtxt.asp?id=<%=rs("id")%>" target="_blank">与采购信息</a></td>
<td width=50px><a href="viewgytxt.asp?id=<%=rs("id")%>" target="_self">查看</a></td>
<td width=50px><a href="viewcgtxt.asp?id=<%=rs("id")%>" target="_self">查看</a></td>
<td ><%=rs("now")%></td>
<td width=50px><a href="cpdel.asp?id=<%=rs("id")%>" target="_self">删除</a></td>

<td width=80px><%=rs("xtime")%></td>
</tr>



<% n=n+1
rs.movenext 
loop

if nowpage>tatalpages then

response.write "<script>alert('页数不对!');location.href='javascript:history.back()';</script>"
end if
%>
</table>

<a href="cgadmin.asp">切换采购版</a>
<a href="gyadmin.asp">切换供应版</a>


共:<%=tatalpages%>页 当前为:<%=nowpage%>页
<%if nowpage>1 then%>
<a href="cpadmin.asp?page=<%=nowpage-1%>">上一页</a>
<%else%>
上一页
<%end if%>
<%for k=1 to tatalpages%>

<%next%>
<%if nowpage < tatalpages then%>
<a href="cpadmin.asp?page=<%=nowpage+1%>">下一页</a>
<%else%>
下一页
<%end if%> 
<input type='text' size='2' value="页数+Enter" onfocus=" javascript:this.value='';"
onfocusout=" javascript:this.value='页数+Enter';" style='height: 18px; width:75;color:DarkGray ; border:1px solid #FFCC99' onkeydown="javascript: if(event.keyCode==13)location='cpadmin.asp?page='+this.value;">

<%if nowpage<>1 then%>
<a href="cpadmin.asp?page=<%=1%>"> 首页</a>
<%else%>
首页
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="cpadmin.asp?page=<%=tatalpages%>">末页</a>
<%else%>
末页
<%end if%>


<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
end if

%> 




<div class="footer">百联百 2012.8 v1.0
</div>
</div>
<form name="form1" method="post" action="exit.asp" > 
<input type="submit" name="Submit" value="退出"> 
</form>
<% 
end if %>
<div style="display:none">
