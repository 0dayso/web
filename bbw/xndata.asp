<html>
<body>
<!-- #include file="xpage.asp" -->       

<!--#include file="conn.asp"-->       
<%           
na=request("na")

if na<>"" then
%>
<%
  
if request.QueryString("page")=null then         
  page=1         
else         
 if isnumeric(request.QueryString("page"))=false then         
  response.write("<script>alert('�����ҳ�������');location.href='javascript:history.back()';</script>")         
 response.end()         
 else         
  page=int(request.QueryString("page"))         
  if page<1 then page=1         
 end if          
end if            
pagelistnum=3            
pagenum=5      
topnum=200        
link="xndata.asp?"
on error resume next 

sql="select top " & (page*pagelistnum) & " * from  aab where name Like '%"&na&"%' or title Like '%"&na&"%' or content Like '%"&na&"%'  order by id desc"  
sqlfy="select count(*) as name from aab where name Like '%"&na&"%' or title Like '%"&na&"%' or content Like '%"&na&"%'  order by id desc" 
set rs=server.createobject("adodb.recordset") 
rs.open sql,conn,1,1    
         
rs.PageSize=pagelistnum  
rs.AbsolutePage=page            
do while not rs.eof     %>
     
<table width="500" height="24" border="1" align="center" cellpadding="1" cellspacing="0"> 
<tr><th>No</th><td><%=rs("id")%></td></tr>
<tr><th>����</th><td><%=rs("name")%></td></tr>
<tr><th>��Ŀ</th><td><%=rs("title")%></td></tr>
<tr><th>��������</th><td><%=rs("content")%></td></tr>
<tr><th>�ش��</th><td><%=rs("da")%></td></tr>
<tr><th>��¼ʱ��</th><td><%=rs("xhtime")%></td></tr>
</table>
      
<%
rs.movenext           
loop          
%>             
         
<br>          
<% 
fy sql,page,pagelistnum,pagenum,link,topnum
 %>  
<%end if%>          

<a href="information.asp">���ز���
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