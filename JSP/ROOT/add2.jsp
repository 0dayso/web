<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<% request.setCharacterEncoding("gb2312");%>
<html>
<body>
<%
//登录
  // String id=request.getParameter("id");
   String name=request.getParameter("name");
   String content=request.getParameter("content");

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
 //一次添加一行数据
   stmt.execute("insert into UserInfo(UserName,UserDesc) values('"+name+"','"+content+"')");
    out.println("发布成功");
response.sendRedirect("index.jsp");
%>
<%
 //关闭连接、释放资源
  //  rst.close();
    stmt.close();
    con.close();
%>


 

</body>
</html>
    
    
