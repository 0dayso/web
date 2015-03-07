


<%


if request("page")<>"" then
if isnumeric(request("page"))=false then
response.write "<script>alert('这个不是数字哦！');location.href='javascript:history.back()';</script>" 

else

%>
<!--include file="formf.asp"-->
<html>
<head>

<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>信息数据浏览-免费网址信息发布-帮帮网址信息网</title>
<meta name="Keywords" content="帮帮网址信息网,网址信息发布,帮帮网址信息网，首页发布网址信息，搜索浏览，学习工作，婚恋生活，软件"/>
<meta name="Description" content="帮帮网址信息网,网址信息发布,帮帮网址信息网，首页发布网址信息，搜索浏览，学习工作，婚恋生活，软件,提出问题,寻求帮助,广告,出租,交友,免费,网址导航,自定义网址导航，需求网：生活各种需求，提出难题的网站；教育，婚恋，工作，生活。免费链接导航，网址导航，自定义网址导航。"/>
<link href="bbw.css" rel="stylesheet" type="text/css">
<style type="text/css" >
body{background-color:DarkGoldenRod;}
p{text-indent:2em;font-size:12px;text-align:left;}

div.h{font-size:60px;font-family:黑体;color:white;font-color:white;line-height:90px;background-color:YellowGreen  ;}


div.t{font-size:12px;line-height:25px;background-color:whitesmoke;align:center;padding:1px;1px;1px;1px;}a{text-decoration=none;}
div.t
a:hover{background-color:Sienna;color:white;}



div.top{font-size:16px;line-height:25px;background-color:DarkGoldenRod;color:white;}


div.m{width:985px;margin-left:;margin-right:;padding:10px,10px,px,px;line-height:25px;clear:both;}

div.ml{width:180px;margin-left:auto;margin-right:auto;padding:1px,1px,px,px;float:left;clear:left;}

div.mlt{background-color:whitesmoke;width:180px;float:left;padding:10px,10px,10px,10px;clear:left;
border:1px solid gainsboro;align:center;margin-left:auto;
margin-right:auto;}

div.mld{background-color:whitesmoke;width:180px;float:left;padding:10px,10px,10px,10px;clear:left;
border:1px solid gainsboro;align:center;margin-left:auto;
margin-right:auto;}

div.mr{background-color:whitesmoke;width:775px;float:right;padding:10px,20px,10px,20px;clear:right;
border:1px solid gainsboro;align:right;margin-left:auto;
margin-right:auto;text-align:center;}

div.ma{background-color:whitesmoke;width:650px;padding:20px,20px,20px,20px;
border:1px solid gainsboro;align:right;margin-left:auto;
margin-right:auto;text-align:left;font-size:12px;}

div.footer{line-height:15px;background-color:white;
margin-left:auto;
margin-right:auto;
padding:5px,5px,5px,5px;background-color:white;font-size:12px;clear:both;text-align:center;}
</style>
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
&nbsp; &nbsp;<a href="find8.asp" target="_parent">测事系统(网络版)</a><br>
&nbsp; &nbsp;<input type="button" name="bt" onclick="window.showModalDialog('f.asp','scrollbars=yes;help=no;status=no;dialogTop=25; dialogLeft=0;dialogHeight=50px')" value="测事系统下载">
</font>
</div>
</div>

<div class="mr">
<div class=""> 
<div class="tm">
<!--#include file="conn.asp"--> 

<% 
exec="select * from aab order by id desc " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3
%> 

<%
dim m,n


rs.pagesize=1 '定义一页显示的记录数目
tatalrecord=rs.recordcount '获取记录总数目
if tatalrecord<1 then
tatalrecord=0
response.write "你还没发布信息！发布后会出现列表。"
else
tatalpages=rs.pagecount '获取分页的数目
pagelistnum=rs.pagesize           
pagenum=5    
zpage=rs.pagecount
page=nowpage
  link="main.asp?"


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

信息数据<br><hr>
No:<%=rs("id")%><br><hr>
文章标题:<%=rs("name")%><br><hr>
文章类型:<%=rs("title")%><br><hr>
文章内容:<p><%=rs("content")%></p>
</div>

<br>
<div class="tm">
<%=rs("da")%><br>
<hr>
时间<%=rs("xhtime")%><br>
</div>
<br>
<div class="tm">

<a href="modify.asp?id=<%=rs("id")%>" target="_self">回复</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="del2.asp?id=<%=rs("id")%>">删除</a><br>

<%n=n+1
rs.movenext '显示页面的数据
wend
%>
共:<%=tatalpages%>页 当前为:<%=nowpage%>页
<%if nowpage>1 then%>
<a href="main.asp?page=<%=nowpage-1%>">上一页</a>
<%else%>
上一页
<%end if%>

<%if nowpage < tatalpages then%>
<a href="main.asp?page=<%=nowpage+1%>">下一页</a>
<%else%>
下一页
<%end if%> 
<%if nowpage<>1 then%>
<a href="main.asp?page=<%=1%>"> 首页</a>
<%else%>
首页
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="main.asp?page=<%=tatalpages%>">末页</a>
<%else%>
末页
<%end if%>



<%

  dim rs,znum,zpage,i,a,b           
  page=int(page)           
            
         
  znum=rs.recordcount
  
  if znum>topnum and topnum>=1 then znum=topnum             

            
  zpage=znum\pagelistnum             
  if znum mod pagelistnum>0 then zpage=zpage+1 

  if nowpage>zpage    then  
  response.write("<script>alert('错误的页码参数！');location.href='javascript:history.back()';</script>") 
  response.end() 
  end if 

             
            
              
               
a=0             
b=pagenum '控制显示页数             
i=1 
if nowpage>(b/2) then             
      if nowpage=1 then          
             else
     response.Write "<a href=" & link & "na="&na&"&page=1><<</a>"             
   end if             
 i=nowpage-cint(b/2)             
      do while i<=zpage and i<=nowpage+(b/2)             
       if i=nowpage then              
       response.Write "&nbsp;<a href=" & link & "na="&na&"&page="&i&"><FONT color=#ff0000>"&i&"</FONT></a>"             
       else             
       response.Write "&nbsp;<a href=" & link & "na="&na&"&page="&i&">"&i&"</a>"             
       end if             
      i=i+1             
    loop             
        %>             
<input type='text' size='2' style='height: 18px; width:30; border:1px solid #FFCC99' onkeydown="javascript: if (event.keyCode==13)location='<%=link%>na=<%=na%>&page='+this.value;">             
<%             
      if nowpage<>zpage then response.write "<a href=" & link & "na="&na&"&page=" & zpage & ">>></a>"             
   response.write"&nbsp;页次:"&nowpage&"/"&zpage             
   else             
   if page=1 then             
    else             
    response.Write "<a href=" & link & "na="&na&"&page=1><<</a>"             
    end if             
   do while i<=zpage and i<=b             
      if i=page then              
      response.Write "&nbsp;<a href=" & link & "na="&na&"&page="&i&"><FONT color=#ff0000>"&i&"</FONT></a>"             
      else             
      response.Write "&nbsp;<a href=" & link & "na="&na&"&page="&i&">"&i&"</a>"             
      end if                
   i=i+1             
   loop              
   %>             
   <input type='text' size='2' style='height: 18px; width:30; border:1px solid #FFCC99' onkeydown="javascript: if(event.keyCode==13)location='<%=link%>na=<%=na%>&page='+this.value;"> 
         
   <%             
   if nowpage<>zpage then             
   response.Write "<a href=" & link & "na="&na&"&page=" & zpage & ">>></a>&nbsp;页次:"&nowpage&"/"&zpage             
      else             
    response.write"&nbsp;页次:"&nowpage&"/"&zpage             
      end if            
    end if            
    response.write("&nbsp;"&pagelistnum&"篇/页") 
%> 
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

<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
%> 
<br>
<hr>

<a href="index.asp">返回主页</a>

</div>
</div>
</div>

<div class="footer">
帮帮网址信息网 2012.8 v2.0  <script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script>
<a target=blank href=tencent://message/?uin=858272689&Site=帮帮网址信息网&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="有事点这里"></a>
</div>

<% end if
end if 
end if 
%>


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

