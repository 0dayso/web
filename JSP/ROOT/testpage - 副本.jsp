<%@ page contentType="text/html;charset=gb2312" %>
<%@ page language="java" import="java.sql.*" %>

<script language="javascript">
function newwin(url) {
var

newwin=window.open(url,"newwin","toolbar=no,location=no,directories=no,status=no,

menubar=no,scrollbars=yes,resizable=yes,width=600,height=450");
newwin.focus();
return false;
}
</script>
<script LANGUAGE="javascript">
function submit10()
{
self.location.replace("testpage.jsp")
}
</script>
<%//变量声明
java.sql.Connection sqlCon; //数据库连接对象
java.sql.Statement sqlStmt; //SQL语句对象
java.sql.ResultSet sqlRst; //结果集对象
java.lang.String strCon; //数据库连接字符串
java.lang.String strSQL; //SQL语句
int intPageSize; //一页显示的记录数
int intRowCount; //记录总数
int intPageCount; //总页数
int intPage; //待显示页码
java.lang.String strPage;
int i;
//设置一页显示的记录数
intPageSize = 4;
//取得待显示页码
strPage = request.getParameter("page");
if(strPage==null){//表明在QueryString中没有page这一个参数，此时显示第一页数据
intPage = 1;
}
else{//将字符串转换成整型
intPage = java.lang.Integer.parseInt(strPage);
if(intPage<1) intPage = 1;
}
//装载JDBC驱动程序
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
//设置数据库连接字符串
strCon = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=User";
//连接数据库
sqlCon = java.sql.DriverManager.getConnection(strCon,"wyz","1");
//创建一个可以滚动的只读的SQL语句对象
sqlStmt =

sqlCon.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);//准备SQL语句
strSQL = "select * from UserInfo";
//执行SQL语句并获取结果集
sqlRst = sqlStmt.executeQuery(strSQL);
//获取记录总
sqlRst.last();//??光标在最后一行
intRowCount = sqlRst.getRow();//获得当前行号
//记算总页数
intPageCount = (intRowCount+intPageSize-1) / intPageSize;
//调整待显示的页码
if(intPage>intPageCount) intPage = intPageCount;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>分页管理</title>
</head>
<body>
<form method="POST" action="index.jsp">
第<%=intPage%>页  共<%=intPageCount%>页

  <%if(intPage<intPageCount){%><a

href="testpage.jsp?page=<%=intPage+1%>">下一页

</a><%}%>  <%if(intPage>1){%><a href="testpage.jsp?page=<%=intPage-1%>">

上一页</a><%}%>
转到第:<input type="text" name="page" id="p" size="3"> 页
<input type="button" value="跳转" onclick="location='testpage.jsp?page='+(document.getElementById('p')).value;"/>
</form>
<table border="1" cellspacing="0" cellpadding="0">
<tr>
<th>ID</th>
<th>用户名</th>
<th width=′8%′>删除</th>
</tr>
<%
if(intPageCount>0){
//将记录指针定位到待显示页的第一条记录上
sqlRst.absolute((intPage-1) * intPageSize + 1);
//显示数据
i = 0;
String user_id,user_name;
while(i<intPageSize && !sqlRst.isAfterLast()){
user_id=sqlRst.getString(1);
user_name=sqlRst.getString(2);
%>
<tr>
<td><%=user_id%></td>
<td><%=user_name%></td>
<td width=′8%′ align=′center′><a href="del.jsp?user_id=<%=user_id%>"

onClick="return newwin(this.href);">删除</a></td>
</tr>
<%
sqlRst.next();
i++;
}
}
%>
</table>


</body>
</html>
<%
//关闭结果集
sqlRst.close();
//关闭SQL语句对象
sqlStmt.close();
//关闭数据库
sqlCon.close();
%> 