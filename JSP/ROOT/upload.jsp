<%@ page import="com.jspsmart.upload.*"%>
<jsp:useBean id="mySmartUpload" scope="page" class="com.jspsmart.upload.SmartUpload"/>
<html>
<head>
<meta http-equiv="Content-Type" Content="text/html;charset=gb2312">
</head>
<body>
<%
//�ϴ�
mySmartUpload.initialize(pageContext);
mySmartUpload.service(request,response);
mySmartUpload.upload();
String f=mySmartUpload.getFiles().getFile(0).getFileName();
mySmartUpload.save("/");
out.println("���ϴ��ļ�");
%>
</body>
</html>