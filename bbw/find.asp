<%
if request("page")<>"" then
if isnumeric(request("page"))=false then
Response.Write "page��������Ŷ!"
else

%>
<!--include file="formf.asp"-->
<html>
<head>

<SCRIPT language=javascript> 
function click() {if (event.button==2) {alert('����Ҽ����ܽ�ֹ��');}}document.onmousedown=click 
</SCRIPT> 
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>���·�������-�����ַ��Ϣ����-�����ַ��Ϣ��</title>
<meta name="Keywords" content="�����ַ��Ϣ��,��ַ��Ϣ����,�����ַ��Ϣ������ҳ������ַ��Ϣ�����������ѧϰ����������������"/>
<meta name="Description" content="�����ַ��Ϣ��,��ַ��Ϣ����,�����ַ��Ϣ������ҳ������ַ��Ϣ�����������ѧϰ����������������,�������,Ѱ�����,���,����,����,���,��ַ����,�Զ�����ַ�����������������������������������վ�����������������������������ӵ�������ַ�������Զ�����ַ������"/>
<link href="bbw.css" rel="stylesheet" type="text/css">

</head>
<body>
<div class="h">
  &nbsp;���<font size="5px"> ��ַ��Ϣ�� http://bbw.svfree.net <font size="1px"></font>  &nbsp; &nbsp; &nbsp;  ��ѷ�����ַ��Ϣ</font>
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
&nbsp; &nbsp;<a href="http://www.bailianbai.com/jscss.asp" >bbw_js/css����</a><br>
&nbsp; &nbsp;<input type="button" name="bt" onclick="window.showModalDialog('f.asp','scrollbars=yes;help=no;status=no;dialogTop=25; dialogLeft=0;dialogHeight=50px')" value="�������ҳ��">
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
response.redirect "../error.asp?msg=û�����������ļ�¼������������" 
end if 

rs.pagesize=1 '����һҳ��ʾ�ļ�¼��Ŀ
tatalrecord=rs.recordcount '��ȡ��¼����Ŀ
tatalpages=rs.pagecount '��ȡ��ҳ����Ŀ
pagelistnum=rs.pagesize           
pagenum=5    
zpage=rs.pagecount
page=nowpage
  link="findtitle.asp?"


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

��Ϣ����<hr>

No:<%=rs("id")%><hr>
����:<%=rs("name")%><hr>
���:<%=rs("title")%><hr>
����:<p><%=rs("content")%></p><hr>
�ظ�:<%=rs("da")%><hr>
ʱ��:<%=rs("xhtime")%><hr>
<br>
<div class="footer">
<a href="modify.asp?id=<%=rs("id")%>" target="_self">�ظ�</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="del2.asp?id=<%=rs("id")%>">ɾ��</a>
</div>

<%n=n+1
rs.movenext '��ʾҳ�������
wend
%>
��:<%=tatalpages%>ҳ ��ǰΪ:<%=nowpage%>ҳ
<%if nowpage>1 then%>
<a href="findtitle.asp?na=<%=(na)%>&page=<%=nowpage-1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%>

<%if nowpage < tatalpages then%>
<a href="findtitle.asp?na=<%=(na)%>&page=<%=nowpage+1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%> 
<%if nowpage<>1 then%>
<a href="findtitle.asp?na=<%=(na)%>&page=<%=1%>"> ��ҳ</a>
<%else%>
��ҳ
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="findtitle.asp?na=<%=(na)%>&page=<%=tatalpages%>">ĩҳ</a>
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

             
//* response.Write "��" & zpage & "ҳ����" & nowpage & "ҳ "             
              
               
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



 
</table> 


<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 

%> 

</div>
<div class="footer"><a href="index.asp">������ҳ</a></footer>

<% 
end if 
%>
</div>
</div>
</div>

<div class="footer">
�����ַ��Ϣ�� 2012.8 v2.0  <script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script>
<a target=blank href=tencent://message/?uin=858272689&Site=�����ַ��Ϣ��&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="���µ�����"></a>
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