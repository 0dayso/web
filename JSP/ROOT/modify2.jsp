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
 
%>
<%
//登录
   String name=request.getParameter("name");
   String content=request.getParameter("content");
 //  out.println("用户："+name+"删除id"+id);

%>

<%
//更新数据
int num=stmt.executeUpdate("update UserInfo set UserName='"+name+"',UserDesc='"+content+"' where UserId='"+id+"'");
   out.println("成功更新"+num+"条数据");
response.sendRedirect("main.jsp");
%>

<%
 //关闭连接、释放资源

    stmt.close();
    con.close();
%>

 

</body>
</html>
    
    
