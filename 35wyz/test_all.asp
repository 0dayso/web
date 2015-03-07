<html>
<title>测试功能</title>
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
    <th width="20%"  ><a href="index.asp">月份</th>
    <th>姓名</th>
    <th>年龄</th>
    <th>成绩</th>
    <th>备注</th>
</tr>
<tr align="center">
    <td>一月</td>
<tr align="center">
    <td><%response.write(request.form("text1") )%></td> 
</tr>
<
</table>
<div class="left">
<P>测试左框</p>
</div>
<div class="center">
<table border="1" width="100%" bordercolorlight:"yellow"
                                    bordercolordark:"red">
<tr align="center" >
   <td style="background-color: blue; color:white;">首页</td>
   <td>主页1</td>
   <td>主页2</td>
   <td>主页3</td>
</tr> 
</table>
</div>

<div class="right">

<tr>
<p>测试段落过程，如果没有在一行，则说明结果有误；如果在一行，则说明结果是对的。此段落仅作为测试使用！</p></tr>
<p>点击次数:<!-- start http://www.2881.com -->
<script src="http://count.2881.com/count/count.asp?id=17168&sx=1&ys=66" language="JavaScript" charset="gb2312"></script>
<!-- Powered by http://www.2881.com --></font></p>
</div>
<hr>
功能演示代码：
<hr>
<div align="justify"><marquee scrollamount="2" direction="left">
              活动文字
              </marquee></div>
<hr>
<a style="cursor:hand;" onClick="javascript:window.external.AddFavorite('http://wyz.35free.net','wyz ')" onFocus="if(this.blur)this.blur()" title='加入收藏'> 加入收藏文字格式<img src="icon.jpg" alt="" width="374" height="117" border="0">图片格式</a>
<br/>

<hr>
<a style="cursor:hand;" onClick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://3v858272689.35free.net')" onFocus="if(this.blur)this.blur()" title='设为主页'> 设为页(计算机及应用A080701)<img src="icon.jpg" alt="" width="378" height="117" border="0"></a>

<hr>
</div>
</body>
</html>

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









