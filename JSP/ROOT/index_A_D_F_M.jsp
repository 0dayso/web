<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<html>
<body>
<form name="f1" action="index.jsp" method="post">
用户名<input type="text" name="name">
密码<input type="password" name="password">
<input type="submit" name="submit" value="登录"><br>
</form>

<form name="f1" action="find.jsp" method="post">
id<input type="text" name="id">
<input type="submit" name="submit" value="查找"><br>
</form>

<form name="f1" action="index.jsp" method="post">
id<input type="text" name="id">
<input type="submit" name="submit" value="删除"><br>
</form>
<%
//登录
   String id=request.getParameter("id");
   String name=request.getParameter("name");
   String password=request.getParameter("password");
   out.println(name+password);
%>
<%
//连接数据库
   Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver").newInstance();
   Connection con=java.sql.DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=User","wyz","1");
   Statement stmt=con.createStatement();
   out.println("连接数据库……");
%>



<%
//删除数据
try{
 stmt.execute("delete from UserInfo where UserId='"+id+"'");
    out.println("删除数据成功");
	}
catch(Exception e)
{}
%>

<%
 //一次添加一行数据
   stmt.execute("insert into UserInfo(UserName,UserSex) values('"+name+"','"+password+"')");
    out.println("增加数据1");

%>
<%
//增加数据2
  //===========================使用PreparedStatement========//
    PreparedStatement pstmt=con.prepareStatement("insert into UserInfo values(?,?,?)");
    //=====================//
    pstmt.setString(1,name);
    pstmt.setString(2,password);
    pstmt.setString(3,"add ok");
     pstmt.execute();
    pstmt.close();
   out.println("增加数据2");
%>

<%
//更新数据
int num=stmt.executeUpdate("update UserInfo set UserSex='更新' where UserName='张三'");
   out.println("成功更新"+num+"条数据");
%>




以下是从Ms sql server数据库读取的数据：<hr>
<table border=1>
<tr><td>id</td><td>姓名</td><td>性别</td><td>数据</td><td>增加</td><td>删除</td><td>更改</td></tr>
<%
//查询所有数据
    ResultSet rst=stmt.executeQuery("select * from UserInfo");

    while(rst.next())
    {
	    out.println("<tr>");
	    out.println("<td>"+(rst.getString("UserId"))+"</td>");
	    out.println("<td>"+(rst.getString("UserName"))+"</td>");
	    out.println("<td>"+(rst.getString("UserSex"))+"</td>");
	    out.println("<td>"+(rst.getString("UserDesc"))+"</td>");
	    out.println("<td><a href=''>add</a></td>");
	    out.println("<td><a href=''>del</a></td>");
	    out.println("<td><a href=''>modify</a></td>");
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
    
    
