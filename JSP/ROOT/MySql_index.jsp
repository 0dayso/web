<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<html>
<body>
�����Ǵ�Mysql���ݿ��ȡ�����ݣ�<hr>
<table border=1>
<tr><td>id</td><td>����</td><td>������</td><td>�۸�</td></tr>
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
    //�ر����ӡ��ͷ���Դ
    rst.close();
    stmt.close();
    con.close();
    %>    
</table>
</body>
</html>
    
    
