<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>


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
		<form action="Data_save.action" >
			姓名<input name="daName" type="text"><br>
			年龄<input name="daAge" type="text"><br>
			编号<input name="daId" type="text" ><br>read only
			<input type="submit" value="提交">
		</form>
	</div>
	</body>
</html>
