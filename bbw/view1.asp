<% dim id
id=request.querystring("id")
if id=""  then
response.write"id error"
else 
%>
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
<p>�������http://bbw.svfree.net
<script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script></p>
</div>
<img src="bb.jpg" width="900px">
<table border="0" width="665" align="center"><td><div align="justify"><marquee scrollamount="2" direction="left">
             �����⣬Ҫ�������Ұ���������Է���������ַ����Ϣ��
              </marquee></div></td></table>


<div class="c2">

<!--#include file="conn.asp"--> 

<% 
exec="select * from aab where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

If rs.EOF Then 
response.redirect "../error.asp?msg=û�����������ļ�¼������������" 
end if 

%>

<div class="c21">
<%

 response.write "���⣺<b>"&rs("name")&"</b><hr>" 
 response.write "���<b>"&rs("title")&"</b><hr>" 
 response.write "���ݣ�<b>"&rs("content")&"</b><hr>" 
%>


<a href="modify.asp?id=<%=rs("id")%>" target="_self">�ظ�</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="del2.asp?id=<%=rs("id")%>">ɾ��</a>

</div>
<br><br><br><br><br>
<div class="c21">

<%


 dim page,pagecount,thispage,linenum,allline  
            const pageline=10 'ÿҳ��ʾ5�� 
            linenum=split(rs("da"),"<hr>") '����Ϊ�����ַ���<br>��ǵĸ���  
            allline=ubound(linenum)+1 'ȫ��<br>(���б��)����  
            pagecount=int(allline/pageline)+1 '������ҳ��  
            page=request("page")  

 if isempty(page) then  
             thispage=1  
            else  
             thispage=cint(page)  
            end if  

          '  response.write "<b>"&rs("da")&"</b><hr>"  
            for i=0 to allline-1  
            if i+1>thispage*pageline-pageline and i<thispage*pageline then  
             response.write ""&linenum(i)&"<br>" '�����ҳ�������  
            end if  
            next  
            response.write "<br><hr>"  
            response.write "<p align='center'>�ܹ�"&allline&"�� "&pagecount&"ҳ ÿҳ"&pageline&"��"  
            for i=1 to pagecount  
            if thispage=i then  
             response.write ""&i&" "  
            else  
            response.write "<a href='view1.asp?id="&id&"&page="&i&"'>"&i&"</a> "  
            '������з�ҳ����  
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