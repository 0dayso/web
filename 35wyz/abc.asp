<!--===================>
<!--范例-->
<!--================-->
<HTML>
<HEAD>
<TITLE>增加数据</title>
</head>

<body>
<% Filename="counter.txt"
Dim Fo,F
set Fo=server.CreateObject("scripting.filesystemobject")
set f=fo.opentextfile(Server.MapPath("counter.txt"))
FileString=F.ReadAll
Set F=fo.openTextFile(server.mappath("counter.txt"),8)
If Request("String")<>"" Then F.WriteLine(Request("string"))
%>

<form method=post action=abc.asp>
加字<input type=text name="string" size=40><br><br>
内容<br>
<textarea cols=50 rows=7 name="oldfile">
<%=FileString%><%=Request("string")%>
</textarea><br><br>
<input type=submit name="sent" value="加字符">
</form>

</body>
</html>
