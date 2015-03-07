<% dim id
id=request.querystring("id")
if id=""  then
response.write"id error"
else 
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>帮帮网-免费网址信息发布-帮帮网</title>
<meta name="Keywords" content="帮帮网,网址信息发布,帮帮网"/>
<meta name="Description" content="帮帮网,提出问题,寻求帮助,广告,出租,交友,免费,网址导航,自定义网址导航，需求网：生活各种需求，提出难题的网站；免费链接导航，网址导航，自定义网址导航。"/>
<style type="text/css" text_decoration=none>
body{text-align=center}
td{font-size:12px;text-align:left;}
table{align:center;}
th{font-size:13px;face="黑体";}
div{font-size:12px;text-align:left;}
fieldset{width:300px;}


body{font-size:12px;}
p{text-indent:2em;font-size:12px;text-align:left;}


div.all
{width:900px;
margin-left:auto;
margin-right:auto;
text-align:center;
background-color:whitesmoke;
border:1px solid gainsboro;

padding:1px,1px,1px,1px;
}
div.h
{width:900px;
text-align:center;
background-color:whitesmoke;
}
div.c2
{width:850px;
text-align:center;
background-color:DarkGoldenRod ;

border:1px solid gainsboro;
padding:10px,10px,10px,10px;
}

div.c21
{width:700px;
margin-left:auto;
margin-right:auto;
text-align:left;
background-color:whitesmoke;

border:1px solid gainsboro;
padding:35px,35px,35px,35px;
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
div.center{align:center;}
div.footer{align:center;}
</style>
</head>

<body>

<div class="all">
<div class="center">
<p>帮帮网：http://bbw.svfree.net
<script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script></p>
</div>
<img src="bb.jpg" width="900px">
<table border="0" width="665" align="center"><td><div align="justify"><marquee scrollamount="2" direction="left">
             有难题，要帮助，找帮帮网！可以发布各类网址和信息！
              </marquee></div></td></table>


<div class="c2">

<!--#include file="conn.asp"--> 

<% 
exec="select * from aab where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

If rs.EOF Then 
response.redirect "../error.asp?msg=没有满足条件的记录，或输入有误！" 
end if 

%>

<div class="c21">
<%

 response.write "标题：<b>"&rs("name")&"</b><hr>" 
 response.write "类别：<b>"&rs("title")&"</b><hr>" 
 response.write "内容：<b>"&rs("content")&"</b><hr>" 
%>


<a href="modify.asp?id=<%=rs("id")%>" target="_self">回复</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="del2.asp?id=<%=rs("id")%>">删除</a>

</div>
<br><br><br><br><br>
<div class="c21">

<%


 dim page,pagecount,thispage,linenum,allline  
            const pageline=10 '每页显示5条 
            linenum=split(rs("da"),"<hr>") '本例为计算字符串<br>标记的个数  
            allline=ubound(linenum)+1 '全文<br>(换行标记)总数  
            pagecount=int(allline/pageline)+1 '计算总页数  
            page=request("page")  

 if isempty(page) then  
             thispage=1  
            else  
             thispage=cint(page)  
            end if  

          '  response.write "<b>"&rs("da")&"</b><hr>"  
            for i=0 to allline-1  
            if i+1>thispage*pageline-pageline and i<thispage*pageline then  
             response.write ""&linenum(i)&"<br>" '输出分页后的内容  
            end if  
            next  
            response.write "<br><hr>"  
            response.write "<p align='center'>总共"&allline&"条 "&pagecount&"页 每页"&pageline&"条"  
            for i=1 to pagecount  
            if thispage=i then  
             response.write ""&i&" "  
            else  
            response.write "<a href='view1.asp?id="&id&"&page="&i&"'>"&i&"</a> "  
            '输出所有分页链接  
            end if  
            next  
     
            %> 






 ' <table border="0" width="665px" bgcolor="whitesmoke">
'  </table>

</div>




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
<%end if%>