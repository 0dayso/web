<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<html>
<body>
以下是从Mysql数据库读取的数据：<hr>
<table border=1>
<tr><td>id</td><td>书名</td><td>出版社</td><td>价格</td></tr>
<%

   Class.forName("org.gjt.mm.mysql.Driver").newInstance();
   Connection con=java.sql.DriverManager.getConnection("jdbc:mysql://127.0.0.1/jspdev","root","1");
   Statement stmt=con.createStatement();
    ResultSet rst=stmt.executeQuery("select * from book;");
    while(rst.next())
    {
	    out.println("<tr>");
	    out.println("<td>"+rst.getString("bookId")+"</td>");
	    out.println("<td>"+rst.getString("bookName")+"</td>");
	    out.println("<td>"+rst.getString("publisher")+"</td>");
	    out.println("<td>"+rst.getFloat("price")+"</td>");
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
    
    
