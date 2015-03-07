<%
function conleft(content,i)
if len(content)>i then  
content=left(content,i)   
response.write (content&"...")
else
response.write (content)
end if
end function
%>