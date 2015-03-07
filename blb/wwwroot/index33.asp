<%@LANGUAGE="JAVASCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>百联百-最大最多最全的商家商品交易市场管理系统</title>
<meta name="Keywords" content="百联百,最大最多最全的商家商品交易市场管理系统,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,购物,在线,购物网站,团购,电子商务,供应,买卖信息,网店,一口价,网络购物,打折"/>
<meta name="Description" content="百联百-最大最多最全的商家商品交易市场管理系统,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,网上购物,在线交易,交易市场管理系统,网上交易,交易市场管理系统,网上买,网上卖,购物网站,团购,贸易,购物,电子商务,供应,一口价,网络购物,打折,最便宜。"/>
<script src="blb.js" type="text/javascript"></script>
<link href="blb.css" rel="stylesheet" type="text/css" />
<style type="text/css" >
span{font-size:12px;color:red;background-color:yellow;padding:2px;}
</style>
<script type="text/javascript">
function on1()
{
document.getElementById("sp1").style.display=""
}
function out1()
{
document.getElementById("sp1").style.display="none"
}

function on2()
{
document.getElementById("sp2").style.display=""
}
function out2()
{
document.getElementById("sp2").style.display="none"
}
</script>
</head>


<body>
<table border="0" width="960" align="center" bgcolor="whitesmoke" color="white"><td><div align="justify" style="display: block; font-size: 12px;"><marquee scrollamount="2" direction="left">
            百联百-最大最多最全的商家商品交易市场管理系统  @人人商界 时时交易 </div></td></table>
<br><br><br><br><br>
<div class="main">
<table width="350" border="0" cellspacing="0" cellpadding="0" align="center" > <tr><td>
<table border="0">
<tr>
<td  class="tdall" id="td1" onmouseover="over1()"  onclick="all1()" style="width:120px;">
买家商家
</td>
<td  class="tdall" id="td2" onmouseover="over2()" onclick="all2()" style="width:120px;">
卖家商家
</td>
<td  class="tdall" id="td3" onmouseover="over3()" onclick="all3()" style="width:120px;">
管理登录
</td>
</tr>
</table>

<div class="maincss" id="d2" >
<table width="350" border="0" cellspacing="0" cellpadding="0" align="center" > <br>
<form name="form1" method="post" action="checkcg.asp"> <tr><th align="center" height="30px">买家商家登录</th></tr>
<tr><td align="center" height="30px">商家名称 <input type="text" name="name" class="editbox" onfocus="on1()" onblur="out1()" id="text1" size="15"><br><span id="sp1" style="position:fixed;display:none;">请输入买家商家名称</span> </td></tr>
<tr><td align="center" height="30px">权限密码 <input type="password" name="password" class="editbox" id="text1" size="15">
<tr><td align="center" height="30px">验证码&nbsp;&nbsp;<img src="retest.asp" onclick="reabc(this);" title="点击图片可以更改验证码" height="13" width="52">
<input type="text" size="5" name="C" autocomplete="off" style="ime-mode:disabled;" value="">
</td></tr> 
<tr><td align="center" height="30px"><input type="submit" name="Submit" class="but" value="登录"> 
<input type="reset" name="Submit2"  class="but" value="重置"> <a href="cgreg.asp">注册</a></td></tr>
</form></table>
</div>

<div class="maincss" id="d21" style="display:none;">
<table width="350" border="0" cellspacing="0" cellpadding="0" align="center" > <br>
<form name="form1" method="post" action="checkgy.asp"> <tr><th align="center" height="30px">卖家商家登录</th></tr>
<tr><td align="center" height="30px">商家名称 <input type="text" name="name" onfocus="on2()" onblur="out2()" class="editbox" id="text2" size="15"><br><span id="sp2" style="position:fixed;display:none;">请输入卖家商家名称</span> </td></tr>
<tr><td align="center" height="30px">权限密码 <input type="password" name="password" class="editbox" id="text1" size="15">
</td></tr> 
<tr><td align="center" height="30px">验证码&nbsp;&nbsp;<img src="retest.asp" onclick="reabc(this);" title="点击图片可以更改验证码" height="13" width="52">
<input type="text" size="5" name="C" autocomplete="off" style="ime-mode:disabled;" value="">
</td></tr> 
<tr><td align="center" height="30px"><input type="submit" name="Submit"  class="but" value="登录"> 
<input type="reset" name="Submit2"  class="but" value="重置"> <a href="gyreg.asp">注册</a></td></tr>
</form></table>
</div>

<div class="maincss" id="d31" style="display:none;">
<table width="350" border="0" cellspacing="0" cellpadding="0" align="center" > <br>
<form name="form1" method="post" action="checkadmin.asp"> <tr><th align="center" height="30px">管理员登录</th></tr>
<tr><td align="center" height="30px">管理员 <input type="text" name="name" class="editbox" id="text1" size="15"><br> </td></tr>
<tr><td align="center" height="30px">&nbsp;&nbsp;密码 <input type="password" name="password" class="editbox" id="text1" size="15"></td></tr> 
<tr><td align="center" height="30px">验证码&nbsp;&nbsp;<img src="retest.asp" onclick="reabc(this);" title="点击图片可以更改验证码" height="13" width="52">
<input type="text" size="5" name="C" autocomplete="off" style="ime-mode:disabled;" value="">
</td></tr> 
<tr><td align="center" height="30px"><input type="submit" name="Submit"  class="but" value="登录"> 
<input type="reset" name="Submit2"  class="but" value="重置"> </td></tr>
</form></table>
</div>
</td></tr>
<table>



 </div>
<div class="qq">
<table border="0" width="500" heigh="15" align="center" bgcolor="whitesmoke" color="white">
<tr>
<td style="width:80px;font-size:12px;">
关于百联百</td><td style="width:3px;"><div class="linex"></div></td>
<td style="width:80px;font-size:12px;">
内容说明</td><td style="width:3px;"><div class="linex"></div></td>
<td style="width:80px;font-size:12px;">
技术支持</td><td style="width:3px;"><div class="linex"></div></td>
<td style="width:80px;font-size:12px;">
百联百v1.0</td><td style="width:3px;font-size:12px;"><div class="linex"></div></td>
<td style="width:80px;font-size:12px;">
<a target=blank href=tencent://message/?uin=858272689&Site=百联百&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="有事点这里"></a></td><td style="width:3px;"><div class="linex"></div></td>
<td style="width:100px;font-size:12px;">
维护测试版本</td><td style="width:3px;font-size:12px;"><div class="linex"></div></td>
</td>
</tr>
<table>
</div>
</div>

<body>
</body>
</html>
