<!--==========================>
<!--范例程序 xiandai.asp-->
<!--====================-->
<html>
<head>
<title>新增数据至文件中</title>
</head>

<body>
<%
'文件路径及名称
filename="counter.txt"
Dim Fo,F
set Fo=server.createobject("scripting.filesystemobject")
set F=fo.opentextfile(server.MapPath("counter.txt"))
'读取文件数据
filestring=f.readall
set f=fo.opentextfile(server.MapPath("counter.txt"),8)
'将新增的字符串写到文件中
If Request("string")<>"" Then f.WriteLine(Request("string"))
%>

<form method=post action=xiandai.asp>
o0加入字符串:<input type=text name="string" size=40><br><br>
目前文件中的内容<br>
<textarea cols=50 rows=7 name="oldfile">
<%=filestring%><%=request(string")%>
</textarea><br><br>
<input type=submit name="sent" value="新增字符串">
</form>
</body>
</html>









