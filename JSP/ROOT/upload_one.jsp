<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%
request.setCharacterEncoding("gb2312");
try{
String myFile=request.getParameter("file1");
int indexOf=myFile.lastIndexOf("\\");//������һ����������λ
String fileName=myFile.substring(indexOf);//����ϴ����ļ���
java.io.FileOutputStream fos=new java.io.FileOutputStream(request.getRealPath("/upload/"+fileName));//������������������uploadĿ¼��
java.io.FileInputStream fis=new java.io.FileInputStream(new java.io.File(myFile));
byte[] buffer=new byte[1024];
int len=0;
while((len=fis.read(buffer))>0)    //ѭ���ļ������
{
	fos.write(buffer,0,len);//����ļ�
}
fis.close();
fos.close();
out.println("�ɹ��ϴ���"+myFile);
}
catch(Exception e)
{ 
	out.println(e);
}
%>
