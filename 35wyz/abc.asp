<!--===================>
<!--����-->
<!--================-->
<HTML>
<HEAD>
<TITLE>��������</title>
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
����<input type=text name="string" size=40><br><br>
����<br>
<textarea cols=50 rows=7 name="oldfile">
<%=FileString%><%=Request("string")%>
</textarea><br><br>
<input type=submit name="sent" value="���ַ�">
</form>

</body>
</html>
