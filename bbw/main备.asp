


<%


if request("page")<>"" then
if isnumeric(request("page"))=false then
response.write "<script>alert('�����������Ŷ��');location.href='javascript:history.back()';</script>" 

else

%>
<!--include file="formf.asp"-->
<html>
<head>

<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>��Ϣ�������-�����ַ��Ϣ����-�����ַ��Ϣ��</title>
<meta name="Keywords" content="�����ַ��Ϣ��,��ַ��Ϣ����,�����ַ��Ϣ������ҳ������ַ��Ϣ�����������ѧϰ����������������"/>
<meta name="Description" content="�����ַ��Ϣ��,��ַ��Ϣ����,�����ַ��Ϣ������ҳ������ַ��Ϣ�����������ѧϰ����������������,�������,Ѱ�����,���,����,����,���,��ַ����,�Զ�����ַ�����������������������������������վ�����������������������������ӵ�������ַ�������Զ�����ַ������"/>
<link href="bbw.css" rel="stylesheet" type="text/css">
<style type="text/css" >
body{background-color:DarkGoldenRod;}
p{text-indent:2em;font-size:12px;text-align:left;}

div.h{font-size:60px;font-family:����;color:white;font-color:white;line-height:90px;background-color:YellowGreen  ;}


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
  &nbsp;���<font size="5px"> ��ַ��Ϣ��http://bbw.svfree.net <font size="1px"></font>  &nbsp; &nbsp; &nbsp;  ��ѷ�����ַ��Ϣ</font>
</div>

<div class="t">
<div align="justify"><marquee scrollamount="2" direction="left">�����⣬Ҫ�������Ұ����ַ��Ϣ�������Է���������ַ����Ϣ��</marquee></div></div>
</div>
<div class="m">
<div class="ml">
<div class="mlt">
<div class="top">�����б�</div>

<font size="2px">
&nbsp; &nbsp; &nbsp;<a href="sendnet.asp" target="_parent">������ַ</a><br>
&nbsp; &nbsp; &nbsp;<a href="sendcontent.asp" target="_parent">��������</a><br>
&nbsp; &nbsp; &nbsp;<a href="information.asp" target="_parent">��Ϣ����</a><br>
&nbsp; &nbsp; &nbsp;<a href="main.asp?page=1" target="_parent">��Ϣ���</a><br>
&nbsp; &nbsp; &nbsp;<a href="student.asp?na=��������" target="_parent">����ѧϰ</a><br>
&nbsp; &nbsp; &nbsp;<a href="job.asp" target="_parent">���빤��</a><br>
&nbsp; &nbsp; &nbsp;<a href="marriage.asp" target="_parent">�������</a><br>
&nbsp; &nbsp; &nbsp;<a href="living.asp" target="_parent">��������</a>
</font>
</div>
<hr>
<div class="mld">
<div class="top">�������</div>
<font size="2px">
&nbsp; &nbsp;<a href="find8.asp" target="_parent">����ϵͳ(�����)</a><br>
&nbsp; &nbsp;<input type="button" name="bt" onclick="window.showModalDialog('f.asp','scrollbars=yes;help=no;status=no;dialogTop=25; dialogLeft=0;dialogHeight=50px')" value="����ϵͳ����">
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


rs.pagesize=1 '����һҳ��ʾ�ļ�¼��Ŀ
tatalrecord=rs.recordcount '��ȡ��¼����Ŀ
if tatalrecord<1 then
tatalrecord=0
response.write "�㻹û������Ϣ�������������б�"
else
tatalpages=rs.pagecount '��ȡ��ҳ����Ŀ
pagelistnum=rs.pagesize           
pagenum=5    
zpage=rs.pagecount
page=nowpage
  link="main.asp?"


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

��Ϣ����<br><hr>
No:<%=rs("id")%><br><hr>
���±���:<%=rs("name")%><br><hr>
��������:<%=rs("title")%><br><hr>
��������:<p><%=rs("content")%></p>
</div>

<br>
<div class="tm">
<%=rs("da")%><br>
<hr>
ʱ��<%=rs("xhtime")%><br>
</div>
<br>
<div class="tm">

<a href="modify.asp?id=<%=rs("id")%>" target="_self">�ظ�</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="del2.asp?id=<%=rs("id")%>">ɾ��</a><br>

<%n=n+1
rs.movenext '��ʾҳ�������
wend
%>
��:<%=tatalpages%>ҳ ��ǰΪ:<%=nowpage%>ҳ
<%if nowpage>1 then%>
<a href="main.asp?page=<%=nowpage-1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%>

<%if nowpage < tatalpages then%>
<a href="main.asp?page=<%=nowpage+1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%> 
<%if nowpage<>1 then%>
<a href="main.asp?page=<%=1%>"> ��ҳ</a>
<%else%>
��ҳ
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="main.asp?page=<%=tatalpages%>">ĩҳ</a>
<%else%>
ĩҳ
<%end if%>



<%

  dim rs,znum,zpage,i,a,b           
  page=int(page)           
            
         
  znum=rs.recordcount
  
  if znum>topnum and topnum>=1 then znum=topnum             

            
  zpage=znum\pagelistnum             
  if znum mod pagelistnum>0 then zpage=zpage+1 

  if nowpage>zpage    then  
  response.write("<script>alert('�����ҳ�������');location.href='javascript:history.back()';</script>") 
  response.end() 
  end if 

             
            
              
               
a=0             
b=pagenum '������ʾҳ��             
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
   response.write"&nbsp;ҳ��:"&nowpage&"/"&zpage             
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
   response.Write "<a href=" & link & "na="&na&"&page=" & zpage & ">>></a>&nbsp;ҳ��:"&nowpage&"/"&zpage             
      else             
    response.write"&nbsp;ҳ��:"&nowpage&"/"&zpage             
      end if            
    end if            
    response.write("&nbsp;"&pagelistnum&"ƪ/ҳ") 
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

<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
%> 
<br>
<hr>

<a href="index.asp">������ҳ</a>

</div>
</div>
</div>

<div class="footer">
�����ַ��Ϣ�� 2012.8 v2.0  <script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script>
<a target=blank href=tencent://message/?uin=858272689&Site=�����ַ��Ϣ��&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="���µ�����"></a>
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

