
<!--#include file="conn.asp"--> 




<%


exec="select * from netad where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1
%> 
<form name="form1" method="post" action="netmodifysave.asp"> 

ID����<%=rs("id")%><hr>
��������<input type="text" name="name" size="30"value="<%=rs("netname")%>"><hr>
��ַ����<input type="text" name="adress" size="100"value="<%=rs("neta")%>"><hr>

<input type="submit" name="Submit" value="�޸�"> 
<input type="button" value="����" onClick="location.href='javascript:history.back()';">
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
