<!--==========================>
<!--�������� xiandai.asp-->
<!--====================-->
<html>
<head>
<title>�����������ļ���</title>
</head>

<body>
<%
'�ļ�·��������
filename="counter.txt"
Dim Fo,F
set Fo=server.createobject("scripting.filesystemobject")
set F=fo.opentextfile(server.MapPath("counter.txt"))
'��ȡ�ļ�����
filestring=f.readall
set f=fo.opentextfile(server.MapPath("counter.txt"),8)
'���������ַ���д���ļ���
If Request("string")<>"" Then f.WriteLine(Request("string"))
%>

<form method=post action=xiandai.asp>
o0�����ַ���:<input type=text name="string" size=40><br><br>
Ŀǰ�ļ��е�����<br>
<textarea cols=50 rows=7 name="oldfile">
<%=filestring%><%=request(string")%>
</textarea><br><br>
<input type=submit name="sent" value="�����ַ���">
</form>
</body>
</html>









