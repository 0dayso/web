<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<HTML>
<BODY>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
Connection con=java.sql.DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;DatabaseName=User","wyz","1");
Statement stmt=con.createStatement();
out.println("open and connection...");
	int num=0;
	int pagec=2;
	int nowpage=1;
	int pagen;
	int recordn=0;
	int nowrecord;
	
try{
	
		
	
	ResultSet rst1=stmt.executeQuery("select * from UserInfo");
	while(rst1.next())
	{
		num++;
	
	}
	
	pagen=Integer.valueOf(num/pagec);		
out.println("��"+num+"������");
out.println("��"+pagen+"ҳ");
out.println("ÿҳ"+pagec+"������");
out.println("���ڵ�"+nowpage+"ҳ");
for(int i=1;i<=pagen;i++)
{ out.println("<a href='test.jsp?nowpage="+i+"'>"+i+"</a>"); }
ResultSet rst=stmt.executeQuery("select * from UserInfo");
out.println("����");	
	
	while(rst.next())
	{
		rst.first();
		out.println("<br>name:"+rst.getString("UserName"));
	}



//�ر�
rst.close();
rst1.close();
con.close();
}
	catch(Exception e)
	{
		out.println(e);
	}

%>

</BODY>
</HTML> 