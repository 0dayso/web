<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
</head>

<body bgcolor="green">
<font color="green">
<% If Time<#11:00:00#and time >=#05:30:00#then %>
���Ϻã��ܸ��˼����㣡
<% If Time<#16:00:00#and time >=#11:00:00#then %>
����ã��ܸ��˼����㣡
<% If Time<#19:00:00#and time >=#16:00:00#then %>
����ã��ܸ��˼����㣡
<% If Time<#22:00:00#and time >=#19:30:00#then %>
���Ϻã��ܸ��˼����㣡
<% else %>
̫������������Ҳ˯������������:-D
<% end if %>
End%>
</body>
</html>
