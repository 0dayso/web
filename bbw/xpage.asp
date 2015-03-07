
<%            
function fy(sql,page,pagelistnum,pagenum,link,topnum,all)             
link=link             
  dim rs,znum,zpage,i,a,b           
  page=int(page)           
  set rs=server.CreateObject("adodb.recordset")             
  rs.open sql,conn,1,1             
  znum=all
  
  if znum>topnum and topnum>=1 then znum=topnum             

            
  zpage=znum\pagelistnum             
  if znum mod pagelistnum>0 then zpage=zpage+1 

  if page>zpage then  
  response.write("<script>alert('错误的页码参数！');location.href='javascript:history.back()';</script>") 
  response.end() 
  end if 

             
 response.Write "共" & zpage & "页，第" & page & "页 "             
              
               
a=0             
b=pagenum '控制显示页数             
i=1             
    if page>(b/2) then             
      if page=1 then          
             else
     response.Write "<a href=" & link & "na="&na&"&page=1><<</a>"             
   end if             
 i=page-cint(b/2)             
      do while i<=zpage and i<=page+(b/2)             
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
      if page<>zpage then response.write "<a href=" & link & "na="&na&"&page=" & zpage & ">>></a>"             
   response.write"&nbsp;页次:"&page&"/"&zpage             
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
   if page<>zpage then             
   response.Write "<a href=" & link & "na="&na&"&Page=" & zpage & ">>></a>&nbsp;页次:"&page&"/"&zpage             
      else             
      response.write"&nbsp;页次:"&page&"/"&zpage             
      end if            
    end if             
    response.write("&nbsp;"&pagelistnum&"篇/页")             
  rs.close             
  set rs=nothing             
end function             
%>