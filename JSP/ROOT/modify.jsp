<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<% request.setCharacterEncoding("gb2312");%>
<html>
<body>
<hr>
<%
//�������ݿ�
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
Connection con=java.sql.DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;DatabaseName=User","wyz","1");
   Statement stmt=con.createStatement();
//   out.println("�������ݿ⡭��");
%>
<%
String id=request.getParameter("id");
  ResultSet rst=stmt.executeQuery("select * from UserInfo where UserId='"+id+"'");
    while(rst.next())
    {
	    out.println("<tr>");
	    out.println("<td>id:"+(rst.getString("UserId"))+"</td>");
	    out.println("<td>���⣺"+(rst.getString("UserName"))+"</td>");
	    out.println("<td>���ݣ�"+(rst.getString("UserDesc"))+"</td>");
  	 out.println("</tr>");
    }
  rst.close();

%>

<form name="f1" action="modify2.jsp?id=<%=id%>" method="post">
����<input type="text" name="name" >
����<input type="text" name="content" >
<input type="submit" name="submit" value="�޸�"><br>
</form>


<%
//��¼
   String name=request.getParameter("name");
   String content=request.getParameter("content");
 //  out.println("�û���"+name+"ɾ��id"+id);

%>


<%
 //�ر����ӡ��ͷ���Դ

    stmt.close();
    con.close();
%>
<a href="index.jsp">������ҳ</a>
 

</body>
</html>
    
    
