<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>S2SH Test</title>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body >
    ================================================<br>
  S2SH Test...<span style="background:black;color:white;"> [如果可以看到这个页面的数据表示整合成功]</span>全查数据
   	<table align="center" width="80%">
   		<tr>
   			<th>年龄</th>
   			<th>姓名</th>
 			<th>编号</th>  	
 			<th>操作</th>		
   		</tr>
   		<s:iterator value="datas">
   			<tr onmouseover="this.bgColor='green'" onmouseout="this.bgColor='white'" align="center">
   				<td ><s:property value="daAge"/></td>
   				<td><s:property value="daName"/></td>
   				<td><s:property value="daId"/></td>
   				<td><a href="${pageContext.request.contextPath}/Data_delete.action?daId=${daId}">删除</a></td>
   				<td><a href="data!findById.action?daId=${daId}">修改</a></td>
   			</tr>
   		</s:iterator>
   			<tr>
				   				
   			</tr>
   			<tr align="center">
   				<td>共<s:property value="pageCount"/>页</td>
   				<td>
   					<s:if test="%{nowPage==1}">首页&nbsp;上一页</s:if>
   					<s:else>
   						<a href="${pageContext.request.contextPath}/Data_find.action?nowPage=1">首页</a>&nbsp;
	   					<a href="${pageContext.request.contextPath}/Data_find.action?nowPage=${nowPage-1}">上一页</a>&nbsp;
   					</s:else>
   					<s:if test="%{nowPage != pageCount}">
	   					<a href="${pageContext.request.contextPath}/Data_find.action?nowPage=${nowPage+1}">下一页</a> &nbsp;
	   					<a href="${pageContext.request.contextPath}/Data_find.action?nowPage=${pageCount}">末页</a> &nbsp;
   					</s:if>
   					<s:else>
   						下一页&nbsp;末页
   					</s:else>
   				</td>
   				<td><a href="${pageContext.request.contextPath}/save.jsp">新增</a></td>
   			</tr>
   	</table>
   	
   	
   </body>
   </html>
