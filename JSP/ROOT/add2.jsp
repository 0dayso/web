<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<% request.setCharacterEncoding("gb2312");%>
<html>
<body>
<%
//��¼
  // String id=request.getParameter("id");
   String name=request.getParameter("name");
   String content=request.getParameter("content");

%>
<hr>
<%
//�������ݿ�
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
Connection con=java.sql.DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;DatabaseName=User","wyz","1");
   Statement stmt=con.createStatement();
//   out.println("�������ݿ⡭��");
%>



<%
 //һ�����һ������
   stmt.execute("insert into UserInfo(UserName,UserDesc) values('"+name+"','"+content+"')");
    out.println("�����ɹ�");
response.sendRedirect("index.jsp");
%>
<%
 //�ر����ӡ��ͷ���Դ
  //  rst.close();
    stmt.close();
    con.close();
%>


 

</body>
</html>
    
    
