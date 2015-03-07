<%@language=vbscript%>
<%if not session("checka")="right" then 
response.Redirect "index.asp"  
else
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>卖家管理信息-最大最多最全的商家商品交易市场</title>
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
exec="select * from gy order by id desc " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
%> 

<%
dim m,n
rs.pagesize=6 '定义一页显示的记录数目
tatalrecord=rs.recordcount '获取记录总数目
if tatalrecord<1 then
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
<td>NO</td>
<td>供应名称</td>
<td>供应密码</td>
<td>供应电话</td>
<td>电子邮件</td>
<td>供应权限</td>
<td>操作</td>

</tr><% n=1
do while not rs.eof and n<rs.pagesize %>
<tr> 
<td ><%=rs("id")%></td>
<td ><%=rs("gyname")%></td>
<td ><%=rs("gypassword")%></td>
<td ><%=rs("gyphone")%></td>
<td ><%=rs("other1")%></td>
<td><a href="opengy.asp?id=<%=rs("id")%>" target="_self">开通使用权限</a></td>
<td><a href="gydel.asp?id=<%=rs("id")%>" target="_self">删除</a></td>
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

<a href="cpadmin.asp">切换产品版</a>

共:<%=tatalpages%>页 当前为:<%=nowpage%>页
<%if nowpage>1 then%>
<a href="gyadmin.asp?page=<%=nowpage-1%>">上一页</a>
<%else%>
上一页
<%end if%>
<%for k=1 to tatalpages%>

<%next%>
<%if nowpage < tatalpages then%>
<a href="gyadmin.asp?page=<%=nowpage+1%>">下一页</a>
<%else%>
下一页
<%end if%> 
<input type='text' size='2' value="页数+Enter" onfocus=" javascript:this.value='';"
onfocusout=" javascript:this.value='页数+Enter';" style='height: 18px; width:75;color:DarkGray ; border:1px solid #FFCC99' onkeydown="javascript: if(event.keyCode==13)location='gyadmin.asp?page='+this.value;">

<%if nowpage<>1 then%>
<a href="gyadmin.asp?page=<%=1%>"> 首页</a>
<%else%>
首页
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="gyadmin.asp?page=<%=tatalpages%>">末页</a>
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




<div class="footer">百联百 2012.8 v1.0</div>
</div>
<form name="form1" method="post" action="exit.asp" > 
<input type="submit" name="Submit" value="退出"> 
</form>
<% end if%>
<div style="display:none">
