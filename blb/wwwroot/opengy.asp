<%@language=vbscript%>
<%if not session("checked")="yes" then 
response.Redirect "adminlogin.asp"  
else
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>卖家信息 百联百 最大最多最全的商家商品交易市场</title>
<meta name="Keywords" content="百联百,最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,购物,在线,购物网站,团购,电子商务,供应,买卖信息,网店,一口价,网络购物,打折"/>
<meta name="Description" content="百联百-最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,网上购物,在线交易,交易市场,网上交易,交易市场,网上买,网上卖,购物网站,团购,贸易,购物,电子商务,供应,一口价,网络购物,打折。"/>
<style type="text/css">
body{background-color="whitesmoke"}
td{font-size:12px;}
th{font-size:13px;face="黑体";}
</style>
</head>
<body>
<!--#include file="conn.asp"--> 
<% 
exec="select * from gy where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 
%> 
<form name="form1" method="post" action="checkgy_save.asp"> 
<br><br><br><br>
<table width="350" border="1" cellspacing="0" cellpadding="0" align="center" > 
<tr><th>开通权限</th></tr>
<tr>
<td> 公司商家名称:
<%=rs("gyname")%>
</td></tr>

 
<tr><td>开通权限功能<input type="text" name="keyword" size="23" value="<%=rs("key")%>"></td></tr>
<input type="hidden" name="paynum" value="">

<td align="center"><input type="submit" name="Submit" value="管理权限"> 

<input type="hidden" name="id" value="<%=request.querystring("id")%>"> 
</td> 

</table> 
</form> 
<td><a href="gyadmin.asp">返回管理</td>


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