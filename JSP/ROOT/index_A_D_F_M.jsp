<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<html>
<body>
<form name="f1" action="index.jsp" method="post">
�û���<input type="text" name="name">
����<input type="password" name="password">
<input type="submit" name="submit" value="��¼"><br>
</form>

<form name="f1" action="find.jsp" method="post">
id<input type="text" name="id">
<input type="submit" name="submit" value="����"><br>
</form>

<form name="f1" action="index.jsp" method="post">
id<input type="text" name="id">
<input type="submit" name="submit" value="ɾ��"><br>
</form>
<%
//��¼
   String id=request.getParameter("id");
   String name=request.getParameter("name");
   String password=request.getParameter("password");
   out.println(name+password);
%>
<%
//�������ݿ�
   Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver").newInstance();
   Connection con=java.sql.DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=User","wyz","1");
   Statement stmt=con.createStatement();
   out.println("�������ݿ⡭��");
%>



<%
//ɾ������
try{
 stmt.execute("delete from UserInfo where UserId='"+id+"'");
    out.println("ɾ�����ݳɹ�");
	}
catch(Exception e)
{}
%>

<%
 //һ�����һ������
   stmt.execute("insert into UserInfo(UserName,UserSex) values('"+name+"','"+password+"')");
    out.println("��������1");

%>
<%
//��������2
  //===========================ʹ��PreparedStatement========//
    PreparedStatement pstmt=con.prepareStatement("insert into UserInfo values(?,?,?)");
    //=====================//
    pstmt.setString(1,name);
    pstmt.setString(2,password);
    pstmt.setString(3,"add ok");
     pstmt.execute();
    pstmt.close();
   out.println("��������2");
%>

<%
//��������
int num=stmt.executeUpdate("update UserInfo set UserSex='����' where UserName='����'");
   out.println("�ɹ�����"+num+"������");
%>




�����Ǵ�Ms sql server���ݿ��ȡ�����ݣ�<hr>
<table border=1>
<tr><td>id</td><td>����</td><td>�Ա�</td><td>����</td><td>����</td><td>ɾ��</td><td>����</td></tr>
<%
//��ѯ��������
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
 //�ر����ӡ��ͷ���Դ
    rst.close();
    stmt.close();
    con.close();
%>
</table>

 

</body>
</html>
    
    
