<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<% request.setCharacterEncoding("gb2312");%>
<html>
<title>������JSP</title>
<body>
<div style="width:700px;background:gray;margin:0 auto;padding:10px;text-align:center;">
<h1 style="font:����;">������JSP</h1><hr>
<%
//��¼
   String id=request.getParameter("id");
   String name=request.getParameter("name");
   String password=request.getParameter("password");
session.setAttribute("loginname",name);
if(((session.getAttribute("loginname"))==null)||((session.getAttribute("loginname"))==""))
{	 
	out.println("<div style='background:red;color=white;width:100%'>�㻹û�е�¼</div>");
	response.sendRedirect("index.jsp");
}
else
{	
	//session.setAttribute("loginname",name);
	out.println("<div style='background:green;color=red;width:100%'>�û�:"+session.getAttribute("loginname")+"</div>");


}
%>

<%
//�������ݿ�
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
Connection con=java.sql.DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;DatabaseName=User","wyz","1");
   Statement stmt=con.createStatement();
  // out.println("�������ݿ⡭��");�����Ǵ�Ms sql server���ݿ��ȡ�����ݣ�<hr>
%>
<table border="0" align="center" style="background:white;font-size:12px;" width="80%">
<tr><td>���</td><td>����</td><td>����</td><td>ɾ��</td><td>����</td></tr>
<%
//��ѯ��������
    ResultSet rst=stmt.executeQuery("select * from UserInfo");

    while(rst.next())
    {
	    out.println("<tr>");
	    out.println("<td>"+(rst.getString("UserId"))+"</td>");
	    out.println("<td>"+(rst.getString("UserName"))+"</td>");
	    out.println("<td>"+(rst.getString("UserDesc"))+"</td>");
	    out.println("<td><a href='del.jsp?id="+(rst.getString("UserId"))+"&name="+name+"'>del</a></td>");
	    out.println("<td><a href='modify.jsp?id="+(rst.getString("UserId"))+"'>modify</a></td>");
	    out.println("</tr>");
    }
 //�ر����ӡ��ͷ���Դ
    rst.close();
    stmt.close();
    con.close();
%>
</table>
<p style="font-size:12px">----------������2013.11-----------</p>
 </div>

</body>
</html>
    
    
