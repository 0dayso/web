<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'index.jsp' starting page</title>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    ================================================<br>
  <div align="center">
		<form action="#" >
			姓名<input value="${daName}" type="text" readonly="readonly"><br>
			年龄<input value="${daAge}" type="text" readonly="readonly"><br>
			编号<input value="${daId}" type="text" readonly="readonly"><br>
		
	</form>
		
		
		<s:form action="data!update.action">
			<s:textfield label="姓名" name="daName"/><br>
			<s:textfield label="年龄" name="daAge"/><br>
			<s:textfield label="编号" name="daId" readonly="true"/><br>
			<s:submit value="提交"></s:submit>
		</s:form>	
  </body>
</html>
