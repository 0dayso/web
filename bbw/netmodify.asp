
<!--#include file="conn.asp"--> 




<%


exec="select * from netad where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1
%> 
<form name="form1" method="post" action="netmodifysave.asp"> 

ID数据<%=rs("id")%><hr>
网名数据<input type="text" name="name" size="30"value="<%=rs("netname")%>"><hr>
网址数据<input type="text" name="adress" size="100"value="<%=rs("neta")%>"><hr>

<input type="submit" name="Submit" value="修改"> 
<input type="button" value="返回" onClick="location.href='javascript:history.back()';">
<input type="hidden" name="id" value="<%=request.querystring("id")%>"> 
 
</form> 


<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 


%> 





</body>
</html><div style="display:none">
<div style="display:none"><div style="display:none">
<div style="display:none"><div style="display:none">
