<%@language=vbscript%>
<%if not session("checked")="yes" then 
response.Redirect "index.asp"  
else
%>
<% dim id
id=request.querystring("id")

if id="" then
response.write"id error"

else if isnumeric(request("id"))=false then
Response.Write "ID这不是数字类型哦!"
else
%>
<form name="form" method="post" action="upfile.asp?id=request.querystring("id")" enctype="multipart/form-data">
<input type="hidden" name="filepath" value="uploadimg">
<input type="hidden" name="act" value="upload">
<input type="file" name="file1" size=40>
<input type="submit" class=button name="Submit" value="上传图片" onclick="parent.document.forms[0].Submit.disabled=true">类型：gif,jpg，限制：100K
</form>
<%
end if
end if
end if
%>