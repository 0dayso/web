<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<% request.setCharacterEncoding("gb2312");%>
<html>
<body>
<hr>
<%
//连接数据库
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
Connection con=java.sql.DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;DatabaseName=User","wyz","1");
   Statement stmt=con.createStatement();
//   out.println("连接数据库……");
%>
<%
String id=request.getParameter("id");
  ResultSet rst=stmt.executeQuery("select * from UserInfo where UserId='"+id+"'");
    while(rst.next())
    {
	    out.println("<tr>");
	    out.println("<td>id:"+(rst.getString("UserId"))+"</td>");
	    out.println("<td>标题："+(rst.getString("UserName"))+"</td>");
	    out.println("<td>内容："+(rst.getString("UserDesc"))+"</td>");
  	 out.println("</tr>");
    }
  rst.close();

%>

<form name="f1" action="modify2.jsp?id=<%=id%>" method="post">
标题<input type="text" name="name" >
内容<input type="text" name="content" >
<input type="submit" name="submit" value="修改"><br>
</form>


<%
//登录
   String name=request.getParameter("name");
   String content=request.getParameter("content");
 //  out.println("用户："+name+"删除id"+id);

%>


<%
 //关闭连接、释放资源

    stmt.close();
    con.close();
%>
<a href="index.jsp">返回主页</a>
 

</body>
</html>
    
    
