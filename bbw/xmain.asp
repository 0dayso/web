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
pagelistnum=1             
pagenum=5      
topnum=200        
link="xmain.asp?"
on error resume next 

sql="select * from aab order by id desc "   
sqlfy="select count(*) as num from aab order by id desc"
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
link=link             
  dim rs,znum,zpage,i,a,b             
  page=int(page)           
  set rs=server.CreateObject("adodb.recordset")             
  rs.open sql,conn,1,1             
  znum=rs.recordcount    

  
  if znum>topnum and topnum>=1 then znum=topnum             

            
  zpage=znum\pagelistnum             
  if znum mod pagelistnum>0 then zpage=zpage+1 

  if page>zpage then  
  response.write("<script>alert('�����ҳ�������');location.href='javascript:history.back()';</script>") 
  response.end() 
  end if 

             
 response.Write "��" & zpage & "ҳ����" & page & "ҳ "             
              
               
a=0             
b=pagenum '������ʾҳ��             
i=1             
    if page>(b/2) then             
      if page=1 then             
   else             
     response.Write "<a href=" & link & "&page=1><<</a>"             
   end if             
 i=page-cint(b/2)             
      do while i<=zpage and i<=page+(b/2)             
       if i=page then              
       response.Write "&nbsp;<a href=" & link & "&page="&i&"><FONT color=#ff0000>"&i&"</FONT></a>"             
       else             
       response.Write "&nbsp;<a href=" & link & "&page="&i&">"&i&"</a>"             
       end if             
      i=i+1             
    loop             
        %>             
<input type='text' size='2' style='height: 18px; width:30; border:1px solid #FFCC99' onkeydown="javascript: if(event.keyCode==13)location='<%=link%>&page='+this.value;">             
<%             
      if page<>zpage then response.write "<a href=" & link & "&page=" & zpage & "&na=(na)>>></a>"             
   response.write"&nbsp;ҳ��:"&page&"/"&zpage             
   else             
   if page=1 then             
    else             
    response.Write "<a href=" & link & "&page=1><<</a>"             
    end if             
   do while i<=zpage and i<=b             
      if i=page then              
      response.Write "&nbsp;<a href=" & link & "&page="&i&"><FONT color=#ff0000>"&i&"</FONT></a>"             
      else             
      response.Write "&nbsp;<a href=" & link & "&page="&i&">"&i&"</a>"             
      end if                
   i=i+1             
   loop              
   %>             
   <input type='text' size='2' style='height: 18px; width:30; border:1px solid #FFCC99' onkeydown="javascript: if(event.keyCode==13)location='<%=link%>&page='+this.value;">             
   <%             
   if page<>zpage then             
   response.Write "<a href=" & link & "&Page=" & zpage & ">>></a>&nbsp;ҳ��:"&page&"/"&zpage             
      else             
      response.write"&nbsp;ҳ��:"&page&"/"&zpage             
      end if             
    end if             
    response.write("&nbsp;"&pagelistnum&"ƪ/ҳ")             
  rs.close             
  set rs=nothing             
 %>  
<%end if%>          