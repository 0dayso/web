<%@language=vbscript%>
<%if not session("checked")="yes" then 
response.Redirect "index.asp"  
else
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>产品 百联百 最大最多最全的商家商品交易市场</title>
<meta name="Keywords" content="百联百,最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,购物,在线,购物网站,团购,电子商务,供应,买卖信息,网店,一口价,网络购物,打折"/>
<meta name="Description" content="百联百-最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,网上购物,在线交易,交易市场,网上交易,交易市场,网上买,网上卖,购物网站,团购,贸易,购物,电子商务,供应,一口价,网络购物,打折。"/>
<script src="blb.js" type="text/javascript"></script>
<link href="blb.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
window.onload=function()
{

var showp=document.getElementById("showp");
var small=document.getElementById("small");
showp.onclick=function()
{
showp.style.width="100%";
}
small.onclick=function()
{
showp.style.width="250";
}
}

</script>

<style type="text/css">

span{font-size:12px;color:red;background-color:yellow;padding:2px;}

</style>
</head>
<body>




<div class="allc">
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" style="font-size:12px;" >
发布你的产品/商品！
<form name="form1" method="post" action="gy_newcp.asp">
<tr><td>
<label >产品名称和型号<input type="text" id="t1" class="editbox"  name="cpname" onblur="c()"  /><a href="upindex_cp.asp" >上传图片</a><br></label></td></tr>
<tr><td>
<label>上传后的图片预览&nbsp;&nbsp;</label>
<label id="small" style="color:blue;">点击视图改变到适合窗口大小</label>
</td></tr>
<tr><td>
<img src="<%=request("path")%>"  id="showp" /></td></tr>
<tr><td>
<input type="hidden" class="editbox"  name="path" id="path" value="<%=request("path")%>"/></td></tr>
<tr><td>
<label>产品参考单价&nbsp;&nbsp;&nbsp;<input type="text" class="editbox"  name="cpprice" id="cpp"/></label></td></tr>
<tr><td>
<label style="color:red;">产品结算单价&nbsp;&nbsp;&nbsp;<input type="text" onfocus="on()" onblur="out()"class="editbox" id="cpe"  name="cpearn" /></label><span id="sp1" style="position:fixed;display:none;">此值越低购买可能性越高</span></td></tr><tr><td>

销售方式&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="how" >
<option value="货到付款">货到付款</option>
<option value="银行汇款">银行汇款</option>
</select><br>

<input type="submit" class="but" value="提交"/>
<input type="reset" class="but" name="Submit2" value="清除"/>
<input type="button" class="but" value="返回" onClick="location.href='gyindex.asp';">
</td></tr>
</form>
</table>
</div>



</body>
</html>


<% end if %>