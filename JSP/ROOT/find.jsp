<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<html>
<body>

<%
   String id=request.getParameter("id");
   String name=request.getParameter("name");
   String password=request.getParameter("password");
   out.println(id+name+password);
%>
<%
//连接数据库
   Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver").newInstance();
   Connection con=java.sql.DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=User","wyz","1");
   Statement stmt=con.createStatement();
   out.println("连接数据库……");
%>
以下是从Ms sql server数据库读取的数据：<hr>
<table border=1>
<tr><td>id</td><td>姓名</td><td>性别</td><td>数据</td></tr>
<%
//查询所有数据
    ResultSet rst=stmt.executeQuery("select * from UserInfo where UserId='"+id+"'");

    while(rst.next())
    {
	    out.println("<tr>");
	    out.println("<td>"+(rst.getString("UserId"))+"</td>");
	    out.println("<td>"+(rst.getString("UserName"))+"</td>");
	    out.println("<td>"+(rst.getString("UserSex"))+"</td>");
	    out.println("<td>"+(rst.getString("UserDesc"))+"</td>");
	    out.println("</tr>");
    }
 //关闭连接、释放资源
    rst.close();
    stmt.close();
    con.close();
%>
</table>

 

</body>
</html>
    
    
