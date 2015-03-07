
<head>



<title>百联百-最大最多最全的商家商品交易市场管理系统</title>
<meta name="Keywords" content="百联百,最大最多最全的商家商品交易市场管理系统,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,购物,在线,购物网站,团购,电子商务,供应,买卖信息,网店,一口价,网络购物,打折"/>
<meta name="Description" content="百联百-最大最多最全的商家商品交易市场管理系统,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,网上购物,在线交易,交易市场管理系统,网上交易,交易市场管理系统,网上买,网上卖,购物网站,团购,贸易,购物,电子商务,供应,一口价,网络购物,打折,最便宜。"/>
<script src="SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
<link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
<style type=text/css>
a{color:white;}

.qq{
	background-position: fixed;
	texg-align:center;
	padding-left: 130px;
	font-size: 12px;
	color: #666;
	margin-left: 15px;
}
.but {
    font-family: "tahoma", "宋体"; 
    font-size:10pt; color: #003399;
    border: 1px #003399 solid;
    color:#006699;
    border-bottom: #93bee2 1px solid;
    border-left: #93bee2 1px solid;
    border-right: #93bee2 1px solid;
    border-top: #93bee2 1px solid;

    background-color: #e8f4ff;
    cursor: hand;
    font-style: normal ;
    width:75px;
    height:25px;
	}
</style>
</head>

<body>
<table border="0" width="960" align="center" bgcolor="whitesmoke" color="white"><td><div align="justify" style="display: block; font-size: 12px;"><marquee scrollamount="2" direction="left">
            百联百-最大最多最全的商家商品交易市场管理系统  @人人商界 时时交易 </div></td></table>

<div id="TabbedPanels1" class="TabbedPanels" >

  <ul class="TabbedPanelsTabGroup">
    <li class="TabbedPanelsTab" tabindex="0">买家商家</li>
    <li class="TabbedPanelsTab" tabindex="0">卖家商家</li>
    <li class="TabbedPanelsTab" tabindex="0">管理登录</li>
  </ul>
 <div class="TabbedPanelsContentGroup" >
<div class="TabbedPanelsContent"><table width="350" border="0" cellspacing="0" cellpadding="0" align="center" > 
<form name="form1" method="post" action="checkcg.asp"> <tr><th align="center" height="30px">买家商家登录</th></tr>
<tr><td align="center" height="30px">商家名称 <input type="text" name="name" size="15"><br> </td></tr>
<tr><td align="center" height="30px">权限密码 <input type="password" name="password" size="15">
<tr><td align="center" height="30px">验证码&nbsp;&nbsp;<img src="retest.asp" onclick="reabc(this);" title="点击图片可以更改验证码" height="13" width="52">
<input type="text" size="5" name="C" autocomplete="off" style="ime-mode:disabled;" value="">
</td></tr> 
<tr><td align="center" height="30px"><input type="submit" name="Submit" class="but" value="登录"> 
<input type="reset" name="Submit2"  class="but" value="重置"> <a href="cgreg.asp">注册</a></td></tr>
</form></table></div>
 
    <div class="TabbedPanelsContent" style="/* [disabled]display: block; */ font-size: 18px; /* [disabled]margin-left: 50px; */"><table width="350" border="0" cellspacing="0" cellpadding="0" align="center" > 
<form name="form1" method="post" action="checkgy.asp"> <tr><th align="center" height="30px">卖家商家登录</th></tr>
<tr><td align="center" height="30px">商家名称 <input type="text" name="name" size="15"><br> </td></tr>
<tr><td align="center" height="30px">权限密码 <input type="password" name="password" size="15">
</td></tr> 
<tr><td align="center" height="30px">验证码&nbsp;&nbsp;<img src="retest.asp" onclick="reabc(this);" title="点击图片可以更改验证码" height="13" width="52">
<input type="text" size="5" name="C" autocomplete="off" style="ime-mode:disabled;" value="">
</td></tr> 
<tr><td align="center" height="30px"><input type="submit" name="Submit"  class="but" value="登录"> 
<input type="reset" name="Submit2"  class="but" value="重置"> <a href="gyreg.asp">注册</a></td></tr>
</form></table>
</div>
    
 <div class="TabbedPanelsContent" style="display: block; font-size: 18px;">
<table width="350" border="0" cellspacing="0" cellpadding="0" align="center" > 
<form name="form1" method="post" action="checkadmin.asp"> <tr><th align="center" height="30px">管理员登录</th></tr>
<tr><td align="center" height="30px">管理员 <input type="text" name="name" size="15"><br> </td></tr>
<tr><td align="center" height="30px">&nbsp;&nbsp;密码 <input type="password" name="password" size="15"></td></tr> 
<tr><td align="center" height="30px">验证码&nbsp;&nbsp;<img src="retest.asp" onclick="reabc(this);" title="点击图片可以更改验证码" height="13" width="52">
<input type="text" size="5" name="C" autocomplete="off" style="ime-mode:disabled;" value="">
</td></tr> 
<tr><td align="center" height="30px"><input type="submit" name="Submit"  class="but" value="登录"> 
<input type="reset" name="Submit2"  class="but" value="重置"> </td></tr>
</form></table> 
 </div>
  </div>
  <div class="qq">百联百 v1.0<a target=blank href=tencent://message/?uin=858272689&Site=百联百&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="有事点这里"></a>
<% dim userip
userip = Request.ServerVariables("HTTP_X_FORWARDED_FOR") 
If userip = "" Then userip = Request.ServerVariables("REMOTE_ADDR") 
%>

<br>
目前是维护测试版本
<br>

 </div>
</div>

<script type="text/javascript">
var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
</script>
<script type="text/javascript">
function reabc(img)
{
    var imageUrl = 'retest.asp'; //你的生成图片的ASPX页面
    img.src = imageUrl + '?' + Math.random();
}
</script>

</body>
</html>
</html><div style="display:none">