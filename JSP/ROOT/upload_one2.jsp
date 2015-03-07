<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%
String myFile=request.getParameter("file1");
int indexOf=myFile.lastIndexOf("\\");//获得最后一个所在索引位
String fileName=myFile.substring(indexOf);//获得上传的文件名
java.io.FileOutputStream fos=new java.io.FileOutputStream(request.getRealPath("/"+fileName));//创建输入流到服务器upload目录下
java.io.FileInputStream fis=new java.io.FileInputStream(new java.io.File(myFile));
byte[] buffer=new byte[1024];
int len=0;
while((len=fis.read(buffer))>0)    //循环文件输出流
{
	fos.write(buffer,0,len);//输出文件
}
fis.close();
fos.close();
%>
