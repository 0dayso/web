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
 
%>
<%
//��¼
   String name=request.getParameter("name");
   String content=request.getParameter("content");
 //  out.println("�û���"+name+"ɾ��id"+id);

%>

<%
//��������
int num=stmt.executeUpdate("update UserInfo set UserName='"+name+"',UserDesc='"+content+"' where UserId='"+id+"'");
   out.println("�ɹ�����"+num+"������");
response.sendRedirect("main.jsp");
%>

<%
 //�ر����ӡ��ͷ���Դ

    stmt.close();
    con.close();
%>

 

</body>
</html>
    
    
