<%@language=vbscript%>
<%if not session("checka")="right" then 
response.Redirect "adminlogin.asp"  
else
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>��������Ϣ ������ ��������ȫ���̼���Ʒ�����г�</title>
<meta name="Keywords" content="������,��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,����,����,������վ,�Ź�,��������,��Ӧ,������Ϣ,����,һ�ڼ�,���繺��,����"/>
<meta name="Description" content="������-��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,���Ϲ���,���߽���,�����г�,���Ͻ���,�����г�,������,������,������վ,�Ź�,ó��,����,��������,��Ӧ,һ�ڼ�,���繺��,���ۡ�"/>
<style type="text/css">
body{background-color="whitesmoke"}
td{font-size:12px;}
th{font-size:13px;face="����";}
</style>
</head>
<body>
<!--#include file="conn.asp"--> 
<% 
exec="select * from cp where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
%> 
<form name="form1" method="post" action="checkgytxt_save.asp"> 
<br><br><br><br>
<table width="350" border="1" cellspacing="0" cellpadding="0" align="center" > 
<tr><th>�빩Ӧ��Ϣ</th></tr>
<tr>
<td> ��˾�̼�����:
<%=rs("cpname")%>
</td></tr>
<tr>
<td> ��Ӧ�˻���Ϣ:
<%=rs("way")%>
</td></tr>
<tr>
<td> �빩Ӧ��Ϣ:
<%=rs("gytxt")%>
</td></tr>
<tr>
<td> ����Ӧ���:
<%=rs("cpearn")*rs("cpnum")%>
</td></tr>


<tr><td><textarea name="gytxt" rows="7" cols="70" value="<%=rs("gytxt")%>"></textarea></td></tr>


<td align="center"><input type="submit" name="Submit" value="֪ͨ��Ӧ"> 

<input type="hidden" name="id" value="<%=request.querystring("id")%>"> 
</td> 

</table> 
</form> 
<td><a href="cpadmin.asp">���ع���</td>


<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
%> 


<script language=javascript>
ie4=(document.all)?true:false;
ns4=(document.layers)?true:false;

function toExit(){
var args=toExit.arguments;
var visible=args[0];
if(ns4){
   theObj=eval("document.layers[\'"+args[1]+"\']");
   if(theObj)theObj.visibility=visible;
   }
else if(ie4){
   if(visible=='show')visible='visible';
   if(visible=='hide')visible='hidden';
   theObj=eval("document.all[\'"+args[1]+"\']");
   if(theObj)theObj.style.visibility=visible;
   }
}
</script>

<script language="JavaScript" type="text/javascript">
function rightBottomAd(){
 var abc = document.getElementById("ad");
 abc.style.top = document.documentElement.scrollTop+document.documentElement.clientHeight-215+"px"; 
 setTimeout(function(){rightBottomAd();},50);
}
rightBottomAd();
</script>
<script language="javascript" src="images/js.js"></script>
</body>
</html><div style="display:none">

<%end if%>