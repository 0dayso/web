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
<%//��������
java.sql.Connection sqlCon; //���ݿ����Ӷ���
java.sql.Statement sqlStmt; //SQL������
java.sql.ResultSet sqlRst; //���������
java.lang.String strCon; //���ݿ������ַ���
java.lang.String strSQL; //SQL���
int intPageSize; //һҳ��ʾ�ļ�¼��
int intRowCount; //��¼����
int intPageCount; //��ҳ��
int intPage; //����ʾҳ��
java.lang.String strPage;
int i;
//����һҳ��ʾ�ļ�¼��
intPageSize = 4;
//ȡ�ô���ʾҳ��
strPage = request.getParameter("page");
if(strPage==null){//������QueryString��û��page��һ����������ʱ��ʾ��һҳ����
intPage = 1;
}
else{//���ַ���ת��������
intPage = java.lang.Integer.parseInt(strPage);
if(intPage<1) intPage = 1;
}
//װ��JDBC��������
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
//�������ݿ������ַ���
strCon = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=User";
//�������ݿ�
sqlCon = java.sql.DriverManager.getConnection(strCon,"wyz","1");
//����һ�����Թ�����ֻ����SQL������
sqlStmt =

sqlCon.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);//׼��SQL���
strSQL = "select * from UserInfo";
//ִ��SQL��䲢��ȡ�����
sqlRst = sqlStmt.executeQuery(strSQL);
//��ȡ��¼��
sqlRst.last();//??��������һ��
intRowCount = sqlRst.getRow();//��õ�ǰ�к�
//������ҳ��
intPageCount = (intRowCount+intPageSize-1) / intPageSize;
//��������ʾ��ҳ��
if(intPage>intPageCount) intPage = intPageCount;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��ҳ����</title>
</head>
<body>
<form method="POST" action="index.jsp">
��<%=intPage%>ҳ  ��<%=intPageCount%>ҳ

  <%if(intPage<intPageCount){%><a

href="testpage.jsp?page=<%=intPage+1%>">��һҳ

</a><%}%>  <%if(intPage>1){%><a href="testpage.jsp?page=<%=intPage-1%>">

��һҳ</a><%}%>
ת����:<input type="text" name="page" id="p" size="3"> ҳ
<input type="button" value="��ת" onclick="location='testpage.jsp?page='+(document.getElementById('p')).value;"/>
</form>
<table border="1" cellspacing="0" cellpadding="0">
<tr>
<th>ID</th>
<th>�û���</th>
<th width=��8%��>ɾ��</th>
</tr>
<%
if(intPageCount>0){
//����¼ָ�붨λ������ʾҳ�ĵ�һ����¼��
sqlRst.absolute((intPage-1) * intPageSize + 1);
//��ʾ����
i = 0;
String user_id,user_name;
while(i<intPageSize && !sqlRst.isAfterLast()){
user_id=sqlRst.getString(1);
user_name=sqlRst.getString(2);
%>
<tr>
<td><%=user_id%></td>
<td><%=user_name%></td>
<td width=��8%�� align=��center��><a href="del.jsp?user_id=<%=user_id%>"

onClick="return newwin(this.href);">ɾ��</a></td>
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
//�رս����
sqlRst.close();
//�ر�SQL������
sqlStmt.close();
//�ر����ݿ�
sqlCon.close();
%> 