<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<html>
<body>
<%
//��¼
String id=request.getParameter("id");
 //  String name=request.getParameter("name");
 //  String password=request.getParameter("password");
  out.println("ɾ��id"+id);

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
//ɾ������
try{
 stmt.execute("delete from UserInfo where UserId='"+id+"'");
    out.println("ɾ�����ݳɹ�");
response.sendRedirect("main.jsp");
	}
catch(Exception e)
{}
%>

<%
 //�ر����ӡ��ͷ���Դ
  //  rst.close();
    stmt.close();
    con.close();
%>


 

</body>
</html>
    
    
