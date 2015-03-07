<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>

<style type="text/css">
body{background-color="whitesmoke"}
td{font-size:12px;text-align:center;}
th{font-size:13px;face="黑体";}
</style>
</head>
<body>

<br><br><br><br>
<!--#include file="conn.asp"--> 
<% 
exec="select * from netad where id="&request.querystring("id")
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

exec="delete * from netad where id="&request.querystring("id")
conn.execute exec 
conn.close 
set conn=nothing 
response.write "<script>alert('已删除！');location.href='adminindex.asp';</script>"

%> 


</body>
</html><div style="display:none">
<div style="display:none"><div style="display:none">
<div style="display:none"><div style="display:none">
