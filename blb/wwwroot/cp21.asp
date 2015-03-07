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
<style type="text/css" >
.allc {
    font-family: "tahoma", "宋体"; /*www.52css.com*/
    font-size:9pt; color: #003399;
    border: 1px #003399 solid;
    color:#006699;
    border-bottom: #93bee2 1px solid;
    border-left: #93bee2 1px solid;
    border-right: #93bee2 1px solid;
    border-top: #93bee2 1px solid;
    background-image:url(../images/bluebuttonbg.gif);
    background-color: #e8f4ff;
    cursor: hand;
    font-style: normal ;
    padding:20px;
    width:350px;
   
	}
td{font-size:12px;text-align:center;}
th{font-size:13px;face="黑体";}
span{font-size:12px;color:red;background-color:yellow;padding:2px;}
</style>
</head>
<body>
<script type="text/javascript">
function c()
{

var v=document.getElementById("t1").value
var l=v.length;
var ml=0;
for(i=0;i<l;i++)
{
//if((v[i] & 0) == 0)
if(!isNaN(v[i]))
{
ml++;
}
}
if (ml>8){
document.getElementById("t1").value="";
alert("输入最多不可包含超过8个数字，请把产品名称数字量减少并重新输入!");}
}

function on()
{
document.getElementById("sp1").style.display=""
}
function out()
{
document.getElementById("sp1").style.display="none"
}
</script>



<fieldset>
<legend>登记商品信息</legend>
<div class="allc">
<table width="250" border="0" cellspacing="0" cellpadding="0" align="center" style="font-size:12px;" >
发布你的产品/商品！
<form name="form1" method="post" action="gy_newcp.asp">
<tr><td>
<label >产品名称<input type="text" id="t1" class="editbox"  name="cpname" onblur="c()" maxlength=""/></label></td></tr><tr><td>
<label>产品单价<input type="text" class="editbox"  name="cpprice" /></label></td></tr><tr><td>
<label>让利单价<input type="text" onfocus="on()" onblur="out()"class="editbox"  name="cpearn" /></label><br><span id="sp1" style="position:fixed;display:none;">让利单价是指能给买家最便宜的单价金额</span></td></tr><tr><td>
销售方式<select name="how" >
<option value="货到付款">货到付款</option>
<option value="银行汇款">银行汇款</option>
</select><br><br>
<input type="submit" class="but" value="提交"/>
<input type="reset" class="but" name="Submit2" value="清除"/>
<input type="button" class="but" value="返回" onClick="location.href='javascript:history.back()';">
</td></tr>
</form>
</table>
</div>
</fieldset>


</body>
</html>


<% end if %>