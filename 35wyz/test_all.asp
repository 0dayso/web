<html>
<title>���Թ���</title>
<head>
<style type="text/css" text_decoration=none>
div.container{ width:80%;line-height:350%;border:1px solid gray;}
div.head{}
div.left{width:10%;float:left;}
div.center{width:70%;}
div.right{width:20%;float:right;}
div.footer{}
</style>
</head>

<body color:white bgcolour:blue>
<div class="container">
<form>
<input type="text" name="text1" value="abc" >
</form>
<table border="1" width="100%">
<tr  >
    <th width="20%"  ><a href="index.asp">�·�</th>
    <th>����</th>
    <th>����</th>
    <th>�ɼ�</th>
    <th>��ע</th>
</tr>
<tr align="center">
    <td>һ��</td>
<tr align="center">
    <td><%response.write(request.form("text1") )%></td> 
</tr>
<
</table>
<div class="left">
<P>�������</p>
</div>
<div class="center">
<table border="1" width="100%" bordercolorlight:"yellow"
                                    bordercolordark:"red">
<tr align="center" >
   <td style="background-color: blue; color:white;">��ҳ</td>
   <td>��ҳ1</td>
   <td>��ҳ2</td>
   <td>��ҳ3</td>
</tr> 
</table>
</div>

<div class="right">

<tr>
<p>���Զ�����̣����û����һ�У���˵��������������һ�У���˵������ǶԵġ��˶������Ϊ����ʹ�ã�</p></tr>
<p>�������:<!-- start http://www.2881.com -->
<script src="http://count.2881.com/count/count.asp?id=17168&sx=1&ys=66" language="JavaScript" charset="gb2312"></script>
<!-- Powered by http://www.2881.com --></font></p>
</div>
<hr>
������ʾ���룺
<hr>
<div align="justify"><marquee scrollamount="2" direction="left">
              �����
              </marquee></div>
<hr>
<a style="cursor:hand;" onClick="javascript:window.external.AddFavorite('http://wyz.35free.net','wyz ')" onFocus="if(this.blur)this.blur()" title='�����ղ�'> �����ղ����ָ�ʽ<img src="icon.jpg" alt="" width="374" height="117" border="0">ͼƬ��ʽ</a>
<br/>

<hr>
<a style="cursor:hand;" onClick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://3v858272689.35free.net')" onFocus="if(this.blur)this.blur()" title='��Ϊ��ҳ'> ��Ϊҳ(�������Ӧ��A080701)<img src="icon.jpg" alt="" width="378" height="117" border="0"></a>

<hr>
</div>
</body>
</html>

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









