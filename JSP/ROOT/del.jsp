<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<html>
<body>
<%
//登录
String id=request.getParameter("id");
 //  String name=request.getParameter("name");
 //  String password=request.getParameter("password");
  out.println("删除id"+id);

%>
<hr>
<%
//连接数据库
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
Connection con=java.sql.DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;DatabaseName=User","wyz","1");
   Statement stmt=con.createStatement();
//   out.println("连接数据库……");
%>

<%
//删除数据
try{
 stmt.execute("delete from UserInfo where UserId='"+id+"'");
    out.println("删除数据成功");
response.sendRedirect("main.jsp");
	}
catch(Exception e)
{}
%>

<%
 //关闭连接、释放资源
  //  rst.close();
    stmt.close();
    con.close();
%>


 

</body>
</html>
    
    
