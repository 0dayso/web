<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<% request.setCharacterEncoding("gb2312");%>
<html>
<title>百联百JSP</title>
<head>
<style type="text/css">
.all
{
width:700px;height:980px;background:gray;margin-left:auto;margin-right:auto;padding:10px;text-align:center;
}
</style>
</head>
<center>
<body>
<div class="all">
<h1 style="font:黑体;">百联百JSP</h1><hr>
<form name="f1" action="main.jsp" method="post">
用户名<input type="text" name="name">
密码<input type="password" name="password">
<input type="submit" name="submit" value="登录">
<input type="button" value="发布信息" onclick="location.href='add.jsp';">
</form>
<%
//登录
   String id=request.getParameter("id");
   String name=request.getParameter("name");
   String password=request.getParameter("password");
session.setAttribute("loginname",name);
if(((session.getAttribute("loginname"))==null)||((session.getAttribute("loginname"))==""))
{	 out.println("<div style='background:red;color=white;width:100%'>你还没有登录</div>");}
else
{	
	//session.setAttribute("loginname",name);
	out.println("<div style='background:green;color=red;width:100%'>用户:"+session.getAttribute("loginname")+"</div>");


}
%>

<%
//连接数据库
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
Connection con=java.sql.DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;DatabaseName=User","wyz","1");
   Statement stmt=con.createStatement();
  // out.println("连接数据库……");以下是从Ms sql server数据库读取的数据：<hr>
%>
<table border="0" align="center" style="background:white;font-size:12px;" width="80%">
<tr><td>编号</td><td>标题</td><td>文章</td></tr>
<%
//查询所有数据
    ResultSet rst=stmt.executeQuery("select * from UserInfo");

    while(rst.next())
    {
	    out.println("<tr>");
	    out.println("<td>"+(rst.getString("UserId"))+"</td>");
	    out.println("<td>"+(rst.getString("UserName"))+"</td>");
	    out.println("<td>"+(rst.getString("UserDesc"))+"</td>");
	    out.println("</tr>");
    }
 //关闭连接、释放资源
    rst.close();
    stmt.close();
    con.close();
%>
</table>
<p style="font-size:12px">----------百联百2013.11-----------</p>
 </div>

</body>
</center>
</html>
    
    
