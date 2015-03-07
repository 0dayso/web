<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>帮帮网-提出问题-寻求帮助-广告-出租-交友-免费-供应-采购-需求网</title>
<meta name="Keywords" content="帮帮网,提出问题,寻求帮助,广告,出租,交友,免费,供应,采购,需求网"/>
<meta name="Description" content="帮帮网-提出问题-寻求帮助-广告-出租-交友-免费-供应-采购-需求网：生活各种需求，提出难题的网站"/>
<style type="text/css" text_decoration=none>
body{text-align=center}
td{font-size:12px;text-align:left;}
th{font-size:13px;face="黑体";background-color="green";color="white";width:90px;}
div{font-size:12px;text-align:center;}
fieldset{width:300px;}


body{font-size:12px;}
p{font-size:12px;text-align:center;}


div.all
{width:800px;
margin-left:auto;
margin-right:auto;
background-color:WhiteSmoke;
border:1px solid gainsboro;
text-align:center;
padding:1px,1px,1px,1px;
}
div.footer
{align:center;}
</style>
</head>

<body>
<div class="all">
<!--#include file="conn.asp"--> 

<% na=request.form("na")
exec="select * from aa where instr(content,'"+na+"') " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
if na<>"" then
%> 
<% 
do while not rs.eof 

%> 
<th>查找结果<th>
<table width="500" height="24" border="1" align="center" cellpadding="1" cellspacing="0"> 
<tr><th>No</th><td><%=rs("id")%></td></tr>
<tr><th>名字</th><td><%=rs("name")%></td></tr>
<tr><th>题目</th><td><%=rs("title")%></td></tr>
<tr><th>提问内容</th><td><%=rs("content")%></td></tr>
<tr><th>回答答案</th><td><%=rs("da")%></td></tr>
<tr><th>记录时间</th><td><%=rs("xhtime")%></td></tr>
</table>
<a href="modify.asp?id=<%=rs("id")%>" target="_self">回答问题</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="del2.asp?id=<%=rs("id")%>">删除</a><br><br>


<% 
rs.movenext 
loop
if rs.recordcount=0 then response.write("非常抱歉!没找到相关记录，请重新输入再查找!")
else
response.write("你的输入为空，请重新输入再查找!")
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