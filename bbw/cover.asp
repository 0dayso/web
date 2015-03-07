<%
function HTMLEncode(fString)
if not isnull(fString) then
fString = replace(fString, ">", ">")
fString = replace(fString, "<", "<")
fString = Replace(fString, CHR(32), " ")
fString = Replace(fString, CHR(9), " ")
fString = Replace(fString, CHR(0000), "<hr>")
fString = Replace(fString, CHR(39), "'")
fString = Replace(fString, CHR(13), "")
fString = Replace(fString, CHR(10) & CHR(10), "</p><p> ")
fString = Replace(fString, CHR(10), "<br> ")
HTMLEncode = fString
end if
end function 
%>