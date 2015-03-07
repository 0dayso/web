<%

Function urlChk(sUrl)
on error resume next
Set xmlHttp = Server.CreateObject("Microsoft.XMLHTTP")
xmlHttp.open "GET",sUrl,false
xmlHttp.send
    if xmlHttp.Status <> 200 then
        urlChk=false
    else
        urlChk=true
    end if
End Function


if urlChk("http://netwyz.oicp.net") then

response.redirect "http://netwyz.oicp.net" 

else
response.redirect "http://bbw.svfree.net" 
end if

    
%>

