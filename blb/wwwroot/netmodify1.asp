<script type="text/javascript">
function c()
{

var v=document.getElementById("t1").value
var l=v.length;
var ml=0;
for(i=0;i<l;i++)
{
if((v[i] & 0) == 0)
{
ml++;
}
}
if (ml>9){
document.getElementById("t1").value="";
alert("输入最多不可包含超过9个数字，请把产品名称数字量减少并重新输入!");}
}
</script>

<%@language=vbscript%>
<%if not session("checked")="yes" then 
response.Redirect "index.asp"  
else
%>
<!--#include file="conn.asp"--> 




<%


exec="select * from cp where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1
%> 
<form name="form1" method="post" action="netmodifysave.asp"> 

ID数据<%=rs("id")%><hr>
产品名称<input type="text" name="cpname" id="t1" onblur="c()" size="30" value="<%=rs("cpname")%>"><hr>
产品单价<input type="text" name="cpprice" size="30"value="<%=rs("cpprice")%>"><hr>
让利单价<input type="text" name="cpearn" size="30"value="<%=rs("cpearn")%>"><hr>

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
</html>
<% end if %>