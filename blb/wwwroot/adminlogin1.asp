<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>管理员登录</title>
<meta name="Keywords" content="管理员登录"/>
<meta name="Description" content="百联百-最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,网上购物,在线交易,交易市场,网上交易,交易市场,网上买,网上卖,购物网站,团购,贸易,购物,电子商务,供应,一口价,网络购物,打折。"/>
<style type="text/css">
body{background-color="whitesmoke"}
td{font-size:12px;text-align:center;}
th{font-size:13px;face="黑体";}
</style>
</head>
<body>

<br><br><br><br>
<table width="350" border="1" cellspacing="0" cellpadding="0" align="center" > 
<form name="form1" method="post" action="checkadmin.asp"> <tr><th align="center">管理员登录</th></tr>
<tr><td align="center">管理员 <input type="text" name="name" size="15"><br> </td></tr>
<tr><td align="center">密码 <input type="password" name="password" size="15"><%if session("checka")="wrong" then response.Write "<br><span class='font'><font color=red>密码错误!</font></span>" end if%></td></tr> 
<tr><td align="center"><input type="submit" name="Submit" value="提交"> 
<input type="reset" name="Submit2" value="重置"> </td></tr>
</form></table>
<td><a href="index.asp">返回主页</td>



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

