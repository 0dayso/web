<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<html>
<head>
<title>�ϴ�</title>
</head>
<body>
<form action="upload_one.html"  id="f" method="post" > 
<input type="file" name="file1" id="p">
<input type="submit" id="sub"  value="�ϴ�">
</form>
</body>
</html> 

<%
//���������ϴ��ļ�
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
//���ϴ��ļ�����
%>
