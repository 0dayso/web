<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>�����-�����ַ��Ϣ����-�����</title>
<meta name="Keywords" content="�����,��ַ��Ϣ����,�����"/>
<meta name="Description" content="�����,�������,Ѱ�����,���,����,����,���,��ַ����,�Զ�����ַ�����������������������������������վ��������ӵ�������ַ�������Զ�����ַ������"/>
<style type="text/css" text_decoration=none>
body{text-align=center}
td{font-size:12px;text-align:center;}
table{align:center;}
th{font-size:13px;face="����";}
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
<p>�������http://bbw.svfree.net
<script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script></p>
</div>
<img src="bb.jpg" width="900px">
<table border="0" width="500" align="center"><td><div align="justify"><marquee scrollamount="2" direction="left">
             �����⣬Ҫ�������Ұ���������Է���������ַ����Ϣ��
              </marquee></div></td></table>


<table border="0" width="900px" bgcolor="blue.jpg">
<tr>
<td ><a href="sendcontent.asp"><img border="0" src="sendcontent.jpg" alt="������뷢������"  align="center"></a></td>
<td ><a href="information.asp"><img border="0" src="findcontent.jpg" alt="���������Ϣ����"  align="center"></a></td>
</tr>
</table>
<table border="0" width="900px" bgcolor="blue.jpg">
<td><form name="form1" method="post" action="scource.asp?na=��������" > 
<input type="submit" name="Submit" value="����������Ŀ�"> 
 </form> 
</td>
<td><form name="form1" method="post" action="scource.asp?na=������ѧ" > 
<input type="submit" name="Submit" value="���������ѧ��"> 
 </form> 
</td>
<td><form name="form1" method="post" action="scource.asp?na=����Ӣ��" > 
<input type="submit" name="Submit" value="�������Ӣ���"> 
 </form> 
</td>
<td><form name="form1" method="post" action="scource.asp?na=��������" > 
<input type="submit" name="Submit" value="������������"> 
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
rs.pagesize=10 '����һҳ��ʾ�ļ�¼��Ŀ
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


<table width="900" height="20" border="0" align="left" > 
<tr>
<td><%=rs("xhtime")%></td>
<td width=500px"><%=rs("name")%></td>
<td><%=rs("title")%></td>
<td><a href="view.asp?id=<%=rs("id")%>">�鿴</a></td>
<td><a href="del2.asp?id=<%=rs("id")%>">ɾ��</a></td>
</tr>
</table>
<br><br>
<hr>

<%n=n+1
rs.movenext '��ʾҳ�������
wend
%>
��:<%=tatalpages%>ҳ ��ǰΪ:<%=nowpage%>ҳ
<%if nowpage>1 then%>
<a href="scource.asp?na=��������&page=<%=nowpage-1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%>
<%for k=1 to tatalpages%>
<%if k<>nowpage then %>
<a href="scource.asp?na=��������&page=<%=k%>"><%=k%></a>
<%else%>
<%=k%>
<%end if%>
<%next%>
<%if nowpage < tatalpages then%>
<a href="scource.asp?na=��������&page=<%=nowpage+1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%> 
<%if nowpage<>1 then%>
<a href="scource.asp?na=��������&page=<%=1%>"> ��ҳ</a>
<%else%>
��ҳ
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="scource.asp?na=��������&page=<%=tatalpages%>">ĩҳ</a>
<%else%>
ĩҳ
<%end if%>


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


<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
%> 
</table>
<br>
</div>
<p>����� 2012.8 v1.0</p>

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
