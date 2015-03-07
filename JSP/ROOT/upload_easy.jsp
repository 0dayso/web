<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<html>
<head>
<title>上传</title>
</head>
<body>
<form action="upload_one.html"  id="f" method="post" > 
<input type="file" name="file1" id="p">
<input type="submit" id="sub"  value="上传">
</form>
</body>
</html> 

<%
//以下是流上传文件
request.setCharacterEncoding("gb2312");
try{
String myFile=request.getParameter("file1");
int indexOf=myFile.lastIndexOf("\\");//获得最后一个所在索引位
String fileName=myFile.substring(indexOf);//获得上传的文件名
java.io.FileOutputStream fos=new java.io.FileOutputStream(request.getRealPath("/upload/"+fileName));//创建输入流到服务器upload目录下
java.io.FileInputStream fis=new java.io.FileInputStream(new java.io.File(myFile));
byte[] buffer=new byte[1024];
int len=0;
while((len=fis.read(buffer))>0)    //循环文件输出流
{
	fos.write(buffer,0,len);//输出文件
}
fis.close();
fos.close();
out.println("成功上传了"+myFile);
}
catch(Exception e)
{ 
	out.println(e);
}
//流上传文件结束
%>
