<%
if request("page")<>"" then
if isnumeric(request("page"))=false then
Response.Write "page不是数字哦!"
else

%>
<!--include file="formf.asp"-->
<html>
<head>

<SCRIPT language=javascript> 
function click() {if (event.button==2) {alert('鼠标右键功能禁止！');}}document.onmousedown=click 
</SCRIPT> 
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>文章分类搜索-免费网址信息发布-帮帮网址信息网</title>
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
<div class=""> 
<div class="tm">
<!--#include file="conn.asp"--> 

<% 
dim m,n,na
na=request("na")
if na<>"" then
exec="select * from aab where name Like '%"&na&"%'  order by id desc " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

If rs.EOF Then 
response.redirect "../error.asp?msg=没有满足条件的记录，或输入有误！" 
end if 

rs.pagesize=1 '定义一页显示的记录数目
tatalrecord=rs.recordcount '获取记录总数目
tatalpages=rs.pagecount '获取分页的数目
pagelistnum=rs.pagesize           
pagenum=5    
zpage=rs.pagecount
page=nowpage
  link="findtitle.asp?"


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

信息数据<hr>

No:<%=rs("id")%><hr>
标题:<%=rs("name")%><hr>
类别:<%=rs("title")%><hr>
内容:<p><%=rs("content")%></p><hr>
回复:<%=rs("da")%><hr>
时间:<%=rs("xhtime")%><hr>
<br>
<div class="footer">
<a href="modify.asp?id=<%=rs("id")%>" target="_self">回复</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="del2.asp?id=<%=rs("id")%>">删除</a>
</div>

<%n=n+1
rs.movenext '显示页面的数据
wend
%>
共:<%=tatalpages%>页 当前为:<%=nowpage%>页
<%if nowpage>1 then%>
<a href="findtitle.asp?na=<%=(na)%>&page=<%=nowpage-1%>">上一页</a>
<%else%>
上一页
<%end if%>

<%if nowpage < tatalpages then%>
<a href="findtitle.asp?na=<%=(na)%>&page=<%=nowpage+1%>">下一页</a>
<%else%>
下一页
<%end if%> 
<%if nowpage<>1 then%>
<a href="findtitle.asp?na=<%=(na)%>&page=<%=1%>"> 首页</a>
<%else%>
首页
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="findtitle.asp?na=<%=(na)%>&page=<%=tatalpages%>">末页</a>
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

             
//* response.Write "共" & zpage & "页，第" & nowpage & "页 "             
              
               
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



 
</table> 


<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 

%> 

</div>
<div class="footer"><a href="index.asp">返回主页</a></footer>

<% 
end if 
%>
</div>
</div>
</div>

<div class="footer">
帮帮网址信息网 2012.8 v2.0  <script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script>
<a target=blank href=tencent://message/?uin=858272689&Site=帮帮网址信息网&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="有事点这里"></a>
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
<div style="display:none"><div style="display:none">
<div style="display:none"><div style="display:none">
<% end if
end if %>