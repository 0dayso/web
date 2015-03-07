<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>

<style type="text/css">
body{background-color=""}
td{font-size:12px;text-align:center;}
th{font-size:13px;face="黑体";}
</style>
</head>
<body>

<br><br><br><br>
<table width="350" border="0" cellspacing="0" cellpadding="0" align="center" > 
<form name="form1" method="post" action="checkadmin.asp"> <tr><th align="center">管理网址登录</th></tr>
<tr><td align="center">管理员 <input type="text" name="name" size="15"><br> </td></tr>
<tr><td align="center">密码 <input type="password" name="password" size="15"><%if session("checka")="wrong" then response.Write "<br><span class='font'><font color=red>密码错误!</font></span>" end if%></td></tr> 
<tr><td align="center"><input type="submit" name="Submit" value="提交"> 
<input type="reset" name="Submit2" value="重置"> </td></tr>
</form></table>
<td><a href="index.asp">返回主页</td>


</body>
</html><div style="display:none">

