<%@language=vbscript%>
<%if not session("checked")="yes" then 
response.Redirect "index.asp"  
else
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>��Ʒ ������ ��������ȫ���̼���Ʒ�����г�</title>
<meta name="Keywords" content="������,��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,����,����,������վ,�Ź�,��������,��Ӧ,������Ϣ,����,һ�ڼ�,���繺��,����"/>
<meta name="Description" content="������-��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,���Ϲ���,���߽���,�����г�,���Ͻ���,�����г�,������,������,������վ,�Ź�,ó��,����,��������,��Ӧ,һ�ڼ�,���繺��,���ۡ�"/>
<script src="blb.js" type="text/javascript"></script>
<link href="blb.css" rel="stylesheet" type="text/css" />
<style type="text/css">

span{font-size:12px;color:red;background-color:yellow;padding:2px;}

</style>
</head>
<body>

<!--#include file="conn.asp"--> 




<%
dim a,b,c
a=request("cpname") 
b=request("gyname") 
c="���۹ر�"
exec="select * from cp where  cpname='"+a+"'and gyname='"+b+"' and other3='"+c+"'" 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1

if  not rs.eof  then

%> 

<fieldset>
<legend>�޸���Ʒ��Ϣ</legend>
<div class="allc">
<table width="250" border="0" cellspacing="0" cellpadding="0" align="center" style="font-size:12px;" >
�޸���Ĳ�Ʒ/��Ʒ��Ϣ��
<form name="form1" method="post" action="netmodifysave.asp">
<tr><td>
<label >��Ʒ����<input type="text" id="t1" class="editbox"  name="cpname" onblur="c()" maxlength="" value="<%=rs("cpname")%>"/></label></td></tr><tr><td>
<label>�ο�����<input type="text" class="editbox"  name="cpprice" id="cpp" value="<%=formatnumber(rs("cpprice"),2,-1)%>" /></label></td></tr><tr><td>
<label>���㵥��<input type="text" onfocus="on()" onblur="out()"  class="editbox"  name="cpearn" id="cpe" value="<%=formatnumber(rs("cpearn"),2,-1)%>"/></label><span id="sp1" style="position:fixed;display:none;">��ֵԽ�͹��������Խ��</span></td></tr><tr><td>
���۷�ʽ<select name="how" >
<option value="��������">��������</option>
<option value="���л��">���л��</option>
</select></td></tr><br><br><tr><td>
<input type="submit" class="but" value="�޸�"/>
<input type="reset" class="but" name="Submit2" value="����"/>
<input type="button" class="but" value="����" onClick="location.href='javascript:history.back()';">
</td></tr>
<input type="hidden" name="id" value="<%=request.querystring("id")%>"> 
</form>
</table>
</div>
</fieldset>


</body>
</html>

<% rs.movenext
else
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 

response.write "<script>alert('ֻ���ڶ����ǵȴ������������۹رղ����޸ģ����������޸�!');location.href='javascript:history.back()';</script>" 

%> 
<% end if
end if %>