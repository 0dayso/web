<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>�����-�����ַ��Ϣ����-�����</title>
<meta name="Keywords" content="�����,��ַ��Ϣ����,�����"/>
<meta name="Description" content="�����,�������,Ѱ�����,���,����,����,���,��ַ����,�Զ�����ַ�����������������������������������վ��������ӵ�������ַ�������Զ�����ַ������"/>
<style type="text/css" text_decoration=none>
body{text-align=center}
td{font-size:12px;text-align:left;}
table{align:center;}
th{font-size:13px;face="����";}
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
text-align:center;
background-color:whitesmoke;

border:1px solid gainsboro;
padding:5px,5px,5px,5px;
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
<div class="h">
<p>�������http://bbw.svfree.net
<script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script></p>
</div>
<img src="bb.jpg" width="900px">
<table border="0" width="665" align="center"><td><div align="justify"><marquee scrollamount="2" direction="left">
             �����⣬Ҫ�������Ұ���������Է���������ַ����Ϣ��
              </marquee></div></td></table>


<div class="c2">
<div class="c21">
<table border="0" width="665px" bgcolor="whitesmoke">
<!--#include file="conn.asp"--> 
<!--#include file="conleft.asp"-->

<% 
exec="select * from aab where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

If rs.EOF Then 
response.redirect "../error.asp?msg=û�����������ļ�¼������������" 
end if 

conleft(rs("da"),5)

dim m,n

rs.pagesize=1 '����һҳ��ʾ�ļ�¼��Ŀ
tatalrecord=rs.recordcount '��ȡ��¼����Ŀ
tatalpages=rs.pagecount '��ȡ��ҳ����Ŀ
rs.movefirst
nowpage=request("page") '��request��ȡ��ǰҳ����ע��page���Լ�����ı������Ǻ���
if nowpage&"x"="x" then '����ҳ��Ϊ��ʱ�����
nowpage=1
else
nowpage=cint(nowpage) '��ҳ��ת����������
end if
rs.absolutepage=nowpage '��ָ���ƶ�����ǰ��ʾҳ�ĵ�һ����¼
%>
<%
n=1
while not rs.eof and n<=rs.pagesize%>


<tr><td width="665">ʱ�䣺<%=rs("xhtime")%></p><hr></tr>
<tr><td width="665">���⣺<p><%=rs("name")%></p><hr></tr>
<tr><td width="665">���ݣ�<p><%=rs("content")%></p><hr></td></tr>
<tr><td width="665"><p><%=rs("da")%></p><hr></td></tr>

<tr><td><a href="modify.asp?id=<%=rs("id")%>" target="_self">�ظ�</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="del2.asp?id=<%=rs("id")%>">ɾ��</a><hr></td></tr>
<br>


<%  
n=n+1
rs.movenext '��ʾҳ�������
wend
%>


<% 
if rs.eof and rs.bof then 
response.write("��ʱû�м�¼") 
else 
do while not rs.eof 
%> 

<% 
rs.movenext 
loop 
end if 
%> 
</table> 
</div>

<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
%> 
</table>
</div>
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
